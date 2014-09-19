DROP PROCEDURE `spDAInsUpdGroup`//
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `spDAInsUpdGroup`(
IN pUserId int,
IN pTennantId int,
IN pGroupId int,
IN pName VARCHAR(255),
IN pDescription VARCHAR(1026),
IN pGroupLogo VARCHAR(255),
IN pGroupType int
)
BEGIN  
declare vGroupId int;
declare vTennantId int;
declare vUserId int;

start transaction;

    set vGroupId=-1;
    select g.GroupId into vGroupId from DA_Group g where g.GroupId=pGroupId; 
    if (vGroupId=-1) then
        insert into DA_Group (
            Name,
            GroupLogo,
            Description,
            GroupType
        )
        values (
            pName,
            pGroupLogo,
            pDescription,
            pGroupType
        );
        set vGroupId=LAST_INSERT_ID();
    else
        update DA_Group set
            Name=pName,
            Description=pDescription,
            GroupLogo=pGroupLogo
        where GroupId=pGroupId;
    end if;


    set vTennantId=-1;
    select r.TennantId into vTennantId from DA_Residence r where r.EntityId=vGroupId and r.TennantId=pTennantId and r.ResidenceType=0;
    if (vTennantId=-1) then
        insert into DA_Residence (
            EntityId,
            TennantId,
            ResidenceType
            )
        values (
            vGroupId,
            pTennantId,
            0
        );
    end if;

    set vUserId=-1;
    select a.UserId into vUserId from DA_Administration a where a.EntityId=vGroupId and a.UserId=pUserId and a.AdminType=0;
    if (vUserId=-1) then
        insert into DA_Administration (
            EntityId,
            UserId,
            RingLevel,
            AdminType,
            Owner
            )
        values (
            vGroupId,
            pUserId,
            5,
            0,
            1
        );
    end if;

    select 0 as NewGroup, g.GroupLogo, g.Name, g.GroupId, g.Description from DA_Group g where g.GroupId=vGroupId
    union
    select 1 as NewGroup, g.GroupLogo, g.Name, g.GroupId, g.Description  from DA_Residence r
        join DA_Group g on g.GroupId=r.EntityId
        where r.TennantId=pTennantId
            and g.GroupId<>vGroupId
    order by NewGroup, Name;

commit;

END
