DROP PROCEDURE `spDAGetWall`//
CREATE DEFINER=`Digeapolis`@`%` PROCEDURE `spDAGetWall`(
IN pTennantId int,
IN pUserId int,
IN pEntityId int,
IN pMsgType int
)
BEGIN  

    CREATE TEMPORARY TABLE Wall (
        WMID int,
        TennantId int,
        EntityId int,
        UserId INT,
        CreateDate TIMESTAMP ,
        UserImage varchar(255),
        FirstName varchar(255),
        LastName varchar(255),
        CompanyName varchar(255),
        EntityURL varchar(255),
        EntityId2 int,
        EntityName2 varchar(255),
        Message text,
        MsgType int
    );
    CREATE TEMPORARY TABLE Comments (
        WMID int,
        TennantId int,
        EntityId int,
        UserId INT,
        CreateDate TIMESTAMP ,
        UserImage varchar(255),
        FirstName varchar(255),
        LastName varchar(255),
        CompanyName varchar(255),
        EntityURL varchar(255),
        EntityId2 int,
        EntityName2 varchar(255),
        Message text,
        MsgType int
    );

    insert into Wall (
        WMID,
        TennantId,
        EntityId,
        UserId,
        CreateDate,
        UserImage,
        FirstName,
        LastName,
        CompanyName,
        EntityURL,
        EntityId2,
        EntityName2,
        Message,
        MsgType
        )
        
        SELECT w.WMID, 
            w.TennantId, 
            w.EntityId, 
            w.UserId, 
            w.CreateDate, 
            u.PhotoURL, 
            u.FirstName, 
            u.LastName, 
            u.CompanyName, 
            case w.MsgType when 0 then s.PageImageURL when 1 then g.GroupLogo when 3 then cu.PhotoURL else '' end as PageImageURL,
            case w.MsgType when 0 then 0 when 1 then g.GroupId when 3 then cu.UserId else 0 end as EntityId2,
            case w.MsgType when 0 then '' when 1 then g.Name when 3 then concat(cu.FirstName,' ',cu.LastName) else '' end as EntityName2,
            w.Message,
            w.MsgType
        FROM DA_WallMsg w
        join DA_User u on u.UserId=w.UserId
        join DA_SiteDetails s on s.TennantId=w.TennantId
        left join DA_Group g on g.GroupId=w.EntityId and w.MsgType=1
        left join DA_User cu on cu.UserId=w.EntityId
        WHERE w.UserId=pUserId and w.TennantId=pTennantId 
            and (
                    (w.EntityId=pEntityId and (w.MsgType=pMsgType and pMsgType!=3))
                    or (pMsgType=3 and ((w.EntityId=pEntityId or (w.UserId=pEntityId and w.EntityId<>pEntityId)) and w.MsgType in (0,1,3)))
                    or (pMsgType=0 and (w.EntityId in (select f.EntityId from DA_Like f where f.UserId=pUserId and f.Type=1))));

    insert into Comments (
        WMID,
        TennantId,
        EntityId,
        UserId,
        CreateDate,
        UserImage,
        FirstName,
        LastName,
        CompanyName,
        EntityURL,
        EntityId2,
        EntityName2,
        Message,
        MsgType
        )
        SELECT w.WMID, 
            w.TennantId, 
            w.EntityId, 
            w.UserId, 
            w.CreateDate, 
            u.PhotoURL, 
            u.FirstName, 
            u.LastName, 
            u.CompanyName, 
            case w.MsgType when 0 then s.PageImageURL when 1 then g.GroupLogo else '' end as PageImageURL,
            case w.MsgType when 0 then 0 when 1 then g.GroupId else 0 end as EntityId2,
            case w.MsgType when 0 then '' when 1 then g.Name else '' end as EntityName2,
            w.Message,
            w.MsgType
        FROM DA_WallMsg w
        join DA_User u on u.UserId=w.UserId
        join DA_SiteDetails s on s.TennantId=w.TennantId
        left join DA_Group g on g.GroupId=w.EntityId and w.MsgType=1
        WHERE w.EntityId in (select distinct ww.WMID from Wall ww where ww.MsgType in (0,1,3)) and w.MsgType=100;

  update DA_Online set UpdateDate=NOW() where UserId=pUserId;
      
  select * from Wall 
  union
  select * from Comments 
    order by CreateDate desc, MsgType, EntityId;

DROP TABLE Wall;
DROP TABLE Comments;

END
