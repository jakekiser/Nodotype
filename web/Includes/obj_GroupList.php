<?
require '/Includes/XCRED.php';
//$iTennantId=$Persist_LoggedInTennantId;
$iTennantId=$_COOKIE["CCtnt"];

    $SQL='select ifnull(a.AdminId,0) as Admin, g.GroupLogo, g.Name, g.GroupId, g.Description  from DA_Residence r'
    .' join DA_Group g on g.GroupId=r.EntityId and g.Active=1'
    .' join DA_Like f on f.EntityId=g.GroupId and f.UserId='.$Persist_UserId.' and f.Type=1'
    .' left join DA_Administration a on a.EntityId=g.GroupId and a.UserId='.$Persist_UserId.' and a.AdminType=0'
    .' where r.TennantId='.$iTennantId
    .' order by Name;';
    //echo $SQL;
    $result = mysql_query($SQL);        
    $num_rows = mysql_num_rows($result);
    if ( $num_rows >0 ){   
        $iCnt=0;
        $sDADoc='var oDAGroups=Array();';
        while($row = mysql_fetch_array($result)) {
            $iGroupId=$row['GroupId']; 
            $sGroupLogo=$row['GroupLogo'];
            $sName=$row['Name'];
            $iAdmin=$row['Admin'];
            
            $sDADoc .= "oDAGroups[".$iCnt."]= new Object();";
            $sDADoc .= "oDAGroups[".$iCnt."]['GroupId']='".fTidyJSON($iGroupId,1)."';";
            $sDADoc .= "oDAGroups[".$iCnt."]['GroupLogo']='".fTidyJSON($sGroupLogo,1)."';";
            $sDADoc .= "oDAGroups[".$iCnt."]['Name']='".fTidyJSON($sName,1)."';";
            $sDADoc .= "oDAGroups[".$iCnt."]['Admin']='".fTidyJSON($iAdmin,1)."';";
            $iCnt=$iCnt+1;
        }
        echo $sDADoc;
    }    
            
?>
