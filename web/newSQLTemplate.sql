DROP PROCEDURE `spDAValidateCredentials`//
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `spDAValidateCredentials`(
IN pPWDHash VARCHAR(255),
IN pTennantId int,
IN pType int,
IN pFunction varchar(255)
)
BEGIN  
declare vUserId int;
declare vCredentialCode int;
declare vTConnId int;
declare vPWDHash varchar(255);
declare vCnt int;

set vPWDHash='';

set vUserId=0;
select u.UserId into vUserId from DA_Pwd pwd
	join DA_User u on u.UserId=pwd.UserId
	where pwd.PwdHash=pPWDHash  limit 1;

if (vUserId>0) then
    insert into DA_BasicStats (
        TennantId,
        UserId,
        Type,
        Function
        )
    values (
        pTennantId,
        vUserId,
        pType,
        pFunction
    );
end if;



update DA_Online set UpdateDate=NOW() where PWDHash=pPWDHash;
SELECT ROW_COUNT() into vCnt;
if (vCnt<1) then
    insert into DA_Online (
        PWDHash,
        UpdateDate,
        UserId
    )
    values (
        pPWDHash,
        NOW(),
        vUserId
    );
end if;

set vTConnId=0;
if (pTennantId<>0) then
    select TConnId into vTConnId from DA_TennantConnection c where c.UserId=vUserId and c.TennantId=pTennantId;
    if (vTConnId=0) then
        insert into DA_TennantConnection (
            UserId,
            TennantId,
            Type
            )
        values (
            vUserId,
            pTennantId,
            0
        );
    end if;
end if;

set vCredentialCode=100;

select vCredentialCode as CredentialCode, u.FirstName, u.LastName, u.UserId from DA_Pwd pwd
	join DA_User u on u.UserId=pwd.UserId
	where pwd.PwdHash=pPWDHash  limit 1;

END
