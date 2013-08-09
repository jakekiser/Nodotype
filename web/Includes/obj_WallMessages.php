<?php
require '/Includes/XCRED.php';


    $A2=new BuildRSSClass();

    $iTennantId=$_COOKIE["CCtnt"];
    if (strlen($iTennantId)<1) $iTennantId=$_GET['tnt'];
    if (strlen($iTennantId)<1) $iTennantId=$_COOKIE["tnt"];
    
    $iEntityId=$_GET['eid'];
    $iMsgType=$_GET['mt'];
    
    if (strlen($iEntityId)<1) {
        $iEntityId=$iTennantId;
        $iMsgType=0;
    }
    
    $iCnt=0;

    $SQL='call spDAGetWall ('.$iTennantId.','.$Persist_UserId.','.$iEntityId.','.$iMsgType.')';
    //echo $SQL;
    $result = mysql_query($SQL); 
    if (!$result==null) {
        $num_rows = mysql_num_rows($result);
        if ( $num_rows >0 ){  
            $sDADoc='var oDAWall=Array();';
            while($row = mysql_fetch_array($result)) {    
                $iTennantId=$row['TennantId'];
                $iWMID=$row['WMID'];
                $iTennantId=$row['WMID'];
                $iEntityId=$row['EntityId'];
                $iUserId=$row['UserId'];
                $dCreateDate=$A2->fTimeDisplay($row['CreateDate']);
                $sUserImage=$row['UserImage'];
                $sFirstName=$row['FirstName'];
                $sLastName=$row['LastName'];
                $sCompanyName=$row['CompanyName'];
                $sEntityURL=$row['EntityURL'];
                $iEntityId2=$row['EntityId2'];
                $sEntityName2=$row['EntityName2'];            
                $sMessage=$row['Message'];
                $sMsgType=$row['MsgType'];
                
                if (strlen($sUserImage)<1) $sUserImage='/images/NoAvatar.png';
                if (strlen($sEntityURL)<1) $sEntityURL='/images/spacer.gif';
                
                
                $sDADoc .= "oDAWall[".$iCnt."]= new Object();";
                $sDADoc .= "oDAWall[".$iCnt."]['TennantId']='".fTidyJSON($iTennantId,1)."';";
                $sDADoc .= "oDAWall[".$iCnt."]['WMID']='".fTidyJSON($iWMID,1)."';";
                $sDADoc .= "oDAWall[".$iCnt."]['EntityId']='".fTidyJSON($iEntityId,1)."';";
                $sDADoc .= "oDAWall[".$iCnt."]['UserId']='".fTidyJSON($iUserId,1)."';";
                $sDADoc .= "oDAWall[".$iCnt."]['CreateDate']='".fTidyJSON($dCreateDate,1)."';";
                $sDADoc .= "oDAWall[".$iCnt."]['UserImage']='".fTidyJSON($sUserImage,1)."';";
                $sDADoc .= "oDAWall[".$iCnt."]['FirstName']='".fTidyJSON($sFirstName,1)."';";
                $sDADoc .= "oDAWall[".$iCnt."]['LastName']='".fTidyJSON($sLastName,1)."';";
                $sDADoc .= "oDAWall[".$iCnt."]['CompanyName']='".fTidyJSON($sCompanyName,1)."';";
                $sDADoc .= "oDAWall[".$iCnt."]['EntityImage']='".fTidyJSON($sEntityURL,1)."';";
                $sDADoc .= "oDAWall[".$iCnt."]['EntityId2']='".fTidyJSON($iEntityId2,1)."';";
                $sDADoc .= "oDAWall[".$iCnt."]['EntityName2']='".fTidyJSON($sEntityName2,1)."';";            
                $sDADoc .= "oDAWall[".$iCnt."]['Message']='".fTidyJSON($sMessage,1)."';";
                $sDADoc .= "oDAWall[".$iCnt."]['MsgType']='".fTidyJSON($sMsgType,1)."';";

                $iCnt=$iCnt+1;            
            }
        
            mysql_free_result($result);
        }
    } else {
            echo '[[LOGGEDOUT]]';
    }
    if ($_GET['Refresh']!=1) {
        //echo '<div id="MainWallMsgs"></div>';
        //echo '<div style="display:none;" id="WallMsgJSON">'.$sDADoc.'</div>';
    } else {
        echo $sDADoc;
    }
?>

