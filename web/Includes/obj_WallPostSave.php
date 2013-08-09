<?php
    require '/Includes/XCRED.php';
    //require '/Includes/RSSUtilities.php';
    
    $A2=new BuildRSSClass();    

    $iTennantId=$_POST['TennantId'];
    $iUserId=$_POST['UserId'];
    $iMsgType=$_POST['MsgType'];
    $sWM_WallMsg=$_POST['WallMsg'];
    switch ($iMsgType) {
        case '100':
            $iEntityId=$_POST['MsgId'];
            break;
        case '3':
            $iEntityId=$_POST['gUserId'];
            break;
        default:
            $iEntityId=$_POST['GroupId'];
            break;
    }
            
    $SQL='call spDAInsWallMsg (\''
        .$iTennantId.'\',\''
        .$iEntityId.'\',\''            
        .$iUserId.'\',\''
        .$iMsgType.'\',\''
        .$sWM_WallMsg.'\')';
    $result = mysql_query($SQL);
    $num_rows = mysql_num_rows($result);
    if ( $num_rows >0 ){   
        while($row = mysql_fetch_array($result)) {
            $iWMID=$row['WMID'];
            $iTennantId=$row['TennantId']; 
            $iEntityId=$iTennantId;
            $iUserId=$row['UserId'];
            $iMsgType=$row['MsgType'];
            $sMessage=$row['Message'];      
            $sFirstName=$row['FirstName'];      
            $sLastName=$row['LastName'];      
            $sCompanyName=$row['CompanyName'];      
            $dCreateDate=$A2->fTimeDisplay($row['CreateDate']);
            $sUserImage=$row['UserImage'];
            $sEntityURL=$row['PageImageURL'];
            $iEntityId2=$row['EntityId2'];
            $sEntityName2=$row['EntityName2'];
            $sMsgType=$row['MsgType'];
            
            if (strlen($sUserImage)<1) $sUserImage='/images/NoAvatar.png';
            if (strlen($sEntityURL)<1) $sEntityURL='/images/NoAvatar.png';            
            
            $sDADoc='var oDAWallPost=Array();';
            $sDADoc .= "oDAWallPost= new Object();";
            $sDADoc .= "oDAWallPost['TennantId']='".fTidyJSON($iTennantId,0)."';";
            $sDADoc .= "oDAWallPost['WMID']='".fTidyJSON($iWMID,0)."';";
            $sDADoc .= "oDAWallPost['EntityId']='".fTidyJSON($iEntityId,0)."';";
            $sDADoc .= "oDAWallPost['UserId']='".fTidyJSON($iUserId,0)."';";
            $sDADoc .= "oDAWallPost['CreateDate']='".fTidyJSON($dCreateDate,0)."';";
            $sDADoc .= "oDAWallPost['UserImage']='".fTidyJSON($sUserImage,0)."';";
            $sDADoc .= "oDAWallPost['FirstName']='".fTidyJSON($sFirstName,0)."';";
            $sDADoc .= "oDAWallPost['LastName']='".fTidyJSON($sLastName,0)."';";
            $sDADoc .= "oDAWallPost['CompanyName']='".fTidyJSON($sCompanyName,0)."';";
            $sDADoc .= "oDAWallPost['EntityImage']='".fTidyJSON($sEntityURL,0)."';";
            $sDADoc .= "oDAWallPost['EntityId2']='".fTidyJSON($iEntityId2,0)."';";
            $sDADoc .= "oDAWallPost['EntityName2']='".fTidyJSON($sEntityName2,0)."';";
            $sDADoc .= "oDAWallPost['Message']='".fTidyJSON($sMessage,0)."';";    
            $sDADoc .= "oDAWallPost['MsgType']='".fTidyJSON($sMsgType,0)."';";
        }
        echo $sDADoc;
    }
?>
