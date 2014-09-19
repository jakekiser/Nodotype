DROP PROCEDURE `spDADelFileByName`//
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `spDADelFileByName`(
IN pTennantId int,
IN pUserId int, 
IN pFileName varchar(255),
IN pType int
)
BEGIN

declare vFileId int;  

start transaction;

set vFileId=0;
select f.FileId into vFileId from DA_Files f where f.TennantId=pTennantId and f.FileName=pFileName and f.Type=pType;

if vFileId>0 then
    delete from DA_Files where FileId=vFileId;
    delete from DA_Order where EntityId=vFileId and Type=pType;
end if;

commit;

END