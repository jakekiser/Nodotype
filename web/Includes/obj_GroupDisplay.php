<?
    $iTennantId=$_GET['tnt'];
    if (strlen($iTennantId)<1) {
        $iTennantId=$_COOKIE["CCtnt"];
    }   
    $iGroupId=$_GET['gtnt'];
    
    if (strlen($iTennantId)<1) $iTennantId=$_COOKIE["tnt"];    
    
    $sImgGroupLogo='/images/NoGroupLogo.png';
    $sFollowClass='Follow';
    if (strlen($iGroupId)>0) {
        $SQL="select ifnull(l.LikeId,0) as LikeId, ifnull(a.RingLevel,0) as RingLevel, ifnull(g.GroupLogo,'/images/NoGroupLogo.png') as GroupLogo, g.Name, g.Description, g.CreateDate,a.UserId from DA_Group g"
        .' left join DA_Like l on l.EntityId=g.GroupId and l.UserId='.$Persist_UserId.' and l.Type=1'
        .' left join DA_Administration a on a.EntityId=g.GroupId and a.UserId=\''.$Persist_UserId.'\' and a.AdminType=1'
        .' where g.GroupId='.$iGroupId;
        $result = mysql_query($SQL);  
        $num_rows = mysql_num_rows($result);
        if ( $num_rows >0 ){         
            while($row = mysql_fetch_array($result)) {    
                $sName=$row['Name'];
                $sDescription=nl2br($row['Description']);
                $sImgGroupLogo=$row['GroupLogo'];
                $iRingLevel=$row['RingLevel'];
                $iLikeId=$row['LikeId'];
            }
            if ($iLikeId>0) {
               $sFollowingText='Following';
               
            }
            else {
                $sFollowingText='Follow';
            }
            $sFollowClass=$sFollowingText;
        }    
    }
?>
            <div id="divGroupContainer" class="Group<?echo $sFollowingText ?>" >
                <div class="Inner">
                    <div class="divGroupDescription">
                        <div class="GroupLogo">
                            <img id="divIGDImage_<?echo $iGroupId ?>" src="<?echo $sImgGroupLogo ?>"/>
                        </div>
<?              if ($iRingLevel>0) { ?>
<?              } ?>
                        <div id="divIGDFollow_<?echo $iGroupId ?>" class="FollowButtons <?echo $sFollowClass ?>"onclick="fLikeFollow(<?echo $iGroupId ?>,<?echo $Persist_UserId ?>,1,'divIGDJSON_<?echo $iGroupId ?>');"><? echo $sFollowingText ?></div>
                        <div id="divGroupLikeJSON" style="display:none;"></div>
                        <div class="GroupAbstract">
                            <h2 id="divIGDName_<?echo $iGroupId ?>" ><? echo $sName ?></h2>
                            <div id="divIGDDescription_<?echo $iGroupId ?>" class="GABS"><? echo $sDescription ?></div>
                        </div>
                    </div>
                </div>
            
<?
    echo'<div id="GroupMainWallContainer">';
    require 'Includes/obj_GroupWallPost.php';
    echo'<div id="GroupMainWallMsgs"></div>';
    echo'<div id="divIGDJSON_'.$iGroupId.'" style="display:none;"></div>';
    echo'</div></div>';
?>