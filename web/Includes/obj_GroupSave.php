<?php
require '/Includes/XCRED.php';
    
$iTennantId=$_POST['TennantId'];
$iUserId=$_POST['UserId'];
$iGroupId=$_POST['GroupId'];
$sName=$_POST['Name'];
$sDescription=$_POST['Description'];
$sGroupLogo=$_POST['GroupLogo'];

    $SQL='call spDAInsUpdGroup ('
    .$iUserId.','
    .$iTennantId.','
    .$iGroupId.',\''
    .$sName.'\',\''    
    .$sDescription.'\',\''    
    .$sGroupLogo.'\',0)';
    $result = mysql_query($SQL);
    $num_rows = mysql_num_rows($result);
    if ( $num_rows >0 ){   
        $iCnt=0;
        $sDADoc='var oDAGroups=Array();';
        while($row = mysql_fetch_array($result)) {
            $iGroupId=$row['GroupId']; 
            $sGroupLogo=$row['GroupLogo'];
            $sName=$row['Name'];
            
            $sDADoc .= "oDAGroups[".$iCnt."]= new Object();";
            $sDADoc .= "oDAGroups[".$iCnt."]['GroupId']='".fTidyJSON($iGroupId,1)."';";
            $sDADoc .= "oDAGroups[".$iCnt."]['GroupLogo']='".fTidyJSON($sGroupLogo,1)."';";
            $sDADoc .= "oDAGroups[".$iCnt."]['Name']='".fTidyJSON($sName,1)."';";
            $iCnt=$iCnt+1;
        }
        echo $sDADoc;
    }    
?>
