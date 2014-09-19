<?php
    $Persist_UserId=$_COOKIE["CCrdlUID"];
    $PWDHash=$_COOKIE["CCrdl"];
    $iTennantId=$_GET['tnt'];
    if (strlen($iTennantId)<1) {
        $iTennantId=$_COOKIE["CCtnt"];
    }    
    $SQL='select ifnull(f.LikeId,0) as FollowStatus,'
    .' (select count(*) from DA_Like l where l.EntityId=g.GroupId and l.Type=1) as TotFollowers,'
    .' g.GroupLogo, g.Name, g.GroupId, g.Description  from DA_Residence r'
    .' join DA_Group g on g.GroupId=r.EntityId and g.Active=1'
    .' left join DA_Like f on f.EntityId=g.GroupId and f.UserId='.$Persist_UserId.' and f.Type=1'
    .' where r.TennantId='.$iTennantId
    .' order by Name';
//    echo $SQL;
    $result = mysql_query($SQL);
    $num_rows = mysql_num_rows($result);
    
    $sDAGroups='var oDAGroupDirectory=Array();';
    $iCnt=0;    
    if ( $num_rows >0 ){
        while($row = mysql_fetch_array($result)) {
            
            $sName=$row['Name'];
            $sDescription=$row['Description'];
            $iGroupId=$row['GroupId'];
            $sGroupLogo=$row['GroupLogo'];
            $iTotFollowers=$row['TotFollowers'];
            $iFollowStatus=$row['FollowStatus'];
            
            $sDAGroups=$sDAGroups.'oDAGroupDirectory['.$iCnt.']= new Object();'
            ."oDAGroupDirectory[".$iCnt."]['GroupId']='".fTidyJSON($iGroupId,1)."';"
            ."oDAGroupDirectory[".$iCnt."]['Name']='".fTidyJSON($sName,1)."';"
            ."oDAGroupDirectory[".$iCnt."]['Description']='".nl2br(fTidyJSON($sDescription,0))."';"
            ."oDAGroupDirectory[".$iCnt."]['GroupLogo']='".fTidyJSON($sGroupLogo,1)."';"
            ."oDAGroupDirectory[".$iCnt."]['TotFollowers']='".fTidyJSON($iTotFollowers,1)."';"
            ."oDAGroupDirectory[".$iCnt."]['FollowStatus']='".$iFollowStatus."';";
            $iCnt=$iCnt+1;
        }
    }
    echo $sDAGroups;            


?>
