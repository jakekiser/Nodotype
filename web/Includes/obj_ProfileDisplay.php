<?php
require '/Includes/XCRED.php';
//require '/Includes/RSSUtilities.php';

    $A2=new BuildRSSClass();
    
    $iTennantId=$_COOKIE["CCtnt"];
    $iUserId=$_GET['uid'];
    

    $SQL='SELECT u.UserId, u.LastName, u.FirstName, u.CreateDate, u.PhotoURL, e.Email, c.TennantId, '
    .' a.Addr1, a.Addr2, a.Addr3, a.City, a.State, a.PostalCode, a.Country, a.LongLat'
    .' FROM DA_User u'
    .' JOIN DA_EmailAccounts e ON e.UserId = u.UserId'
    .' JOIN DA_TennantConnection c ON c.UserId = u.UserId AND c.TennantId='.$iTennantId
    .' left JOIN DA_Address a ON a.EntityId = u.UserId'
    .' AND a.Type =0'
    .' WHERE u.UserId ='.$iUserId;
    $result = mysql_query($SQL);        
    $num_rows = mysql_num_rows($result);
    if ( $num_rows >0 ){   
        $iCnt=0;
        $sDADoc='var oDAProfile=Array();';
        while($row = mysql_fetch_array($result)) {
            $iUserId=$row['UserId']; 
            $sLastName=$row['LastName'];
            $sFirstName=$row['FirstName'];
            $dCreateDate=$row['CreateDate'];
            $sPhotoURL=$row['PhotoURL'];
            $sEmail=$row['Email'];
            $iTennantIdRow=$row['TennantIdRow'];
            $sAddr1=$row['Addr1'];
            $sAddr2=$row['Addr2'];
            $sAddr3=$row['Addr3'];
            $sCity=$row['City='];
            $sState=$row['State'];
            $sPostalCode=$row['PostalCode'];
            $sCountry=$row['Country'];
            $sLongLat=$row['LongLat'];
            
            if (strlen($sPhotoURL)<1) $sPhotoURL='/images/NoAvatar.png';

            $sDADoc .= "oDAProfile[".$iCnt."]= new Object();";
            $sDADoc .= "oDAProfile[".$iCnt."]['UserId']='".fTidyJSON($iUserId,1)."';";
            $sDADoc .= "oDAProfile[".$iCnt."]['LastName']='".fTidyJSON($sLastName,1)."';";
            $sDADoc .= "oDAProfile[".$iCnt."]['FirstName']='".fTidyJSON($sFirstName,1)."';";
            $sDADoc .= "oDAProfile[".$iCnt."]['CreateDate']='".fTidyJSON($dCreateDate,1)."';";
            $sDADoc .= "oDAProfile[".$iCnt."]['PhotoURL']='".fTidyJSON($sPhotoURL,1)."';";
            $sDADoc .= "oDAProfile[".$iCnt."]['Email']='".fTidyJSON($sEmail,1)."';";
            $sDADoc .= "oDAProfile[".$iCnt."]['TennantIdRow']='".fTidyJSON($iTennantIdRow,1)."';";
            $sDADoc .= "oDAProfile[".$iCnt."]['Addr1']='".fTidyJSON($sAddr1,1)."';";
            $sDADoc .= "oDAProfile[".$iCnt."]['Addr2']='".fTidyJSON($sAddr2,1)."';";
            $sDADoc .= "oDAProfile[".$iCnt."]['Addr3']='".fTidyJSON($sAddr3,1)."';";
            $sDADoc .= "oDAProfile[".$iCnt."]['City']='".fTidyJSON($sCity,1)."';";
            $sDADoc .= "oDAProfile[".$iCnt."]['State']='".fTidyJSON($sState,1)."';";
            $sDADoc .= "oDAProfile[".$iCnt."]['PostalCode']='".fTidyJSON($sPostalCode,1)."';";
            $sDADoc .= "oDAProfile[".$iCnt."]['Country']='".fTidyJSON($sCountry,1)."';";
            $sDADoc .= "oDAProfile[".$iCnt."]['LongLat']='".fTidyJSON($sLongLat,1)."';";
            
            $iCnt=$iCnt+1;
        }
        echo $sDADoc;
    }        
?>
