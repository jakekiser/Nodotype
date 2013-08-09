<?php

    $Persist_UserId=$_COOKIE["CCrdlUID"];
    $iTennantId=$_GET['tnt'];
    if (strlen($iTennantId)<1) {
        $iTennantId=$_COOKIE["CCtnt"];
    } 

    $sSearch=$_GET['s'];
    $iCnt=0;
    $sDAGroups='var oDAGroupDirectory=Array();';
    
    $sDAJSON='var oDASearch=Array();';
    $SQL='call spDASearch ('.$iTennantId.','.$Persist_UserId.',\''.$sSearch.'\');';
    $result = mysql_query($SQL);
    $num_rows = mysql_num_rows($result);
    
    if ( $num_rows >0 ){
        while($row = mysql_fetch_array($result)) {    
            $iType=$row['Type'];        
            $sName=$row['Name'];
            $iEntityId=$row['EntityId'];
            $sLogo=$row['Logo'];
        
            if (strlen($sLogo)<1) $sLogo='/images/NoAvatar.png';
        
            $sDAJSON=$sDAJSON.'oDASearch['.$iCnt.']= new Object();'
            ."oDASearch[".$iCnt."]['Type']='".fTidyJSON($iType,1)."';"
            ."oDASearch[".$iCnt."]['Name']='".fTidyJSON($sName,1)."';"
            ."oDASearch[".$iCnt."]['Logo']='".fTidyJSON($sLogo,1)."';"
            ."oDASearch[".$iCnt."]['EntityId']='".fTidyJSON($iEntityId,1)."';";
             $iCnt=$iCnt+1;
        }
        echo $sDAJSON;
    } else {
        echo '[[LOGGEDOUT]]';
    }
?>
