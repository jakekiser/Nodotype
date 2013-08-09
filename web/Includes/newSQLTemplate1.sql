DROP PROCEDURE `spDADelPost`//
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `spDADelPost`(
IN pWMID int(11),
IN pUserId INT(11)
)
BEGIN  

start transaction;

delete from DA_WallMsg where EntityId=pWMID and MsgType=100;
delete from DA_WallMsg where WMID=pWMID;

commit;

END
