<?php
    require 'Includes/HTMLBuildClass.php';
    $A=new BuildClass();
    require 'Includes/XCRED.php'; 
    
    $iTennantId=$_GET['tnt'];
    $iRSSID=$_GET['rssid'];
    $iMode=$_GET['Mode'];
    $bDF=$_GET['ntnt'];
    switch ($iMode) {
        case '10':
            $sModeText='CSS';
            break;
        case '11':
            $sModeText='JavaScript';
            break;
    }
    
    $Func=$_GET['FUNC'];
    switch (strtoupper($Func)) {
        case 'FS':
            require 'Includes/oxp_FileSetup.php';  
            break;
        case 'EDITFILE':
            require 'Includes/oxp_FileEditor.php';  
            break;        
        case 'RSSPOLL':
            require 'Includes/RSSPoll.php';  
            break;
        case 'DELFILE':
            require 'Includes/oxp_DelFile.php';  
            break;
        case 'EDITPAGE':
            require 'Includes/OnexPage1.php';  
            break;
        case 'EDITPROFILE':
            require 'Includes/obj_ProfileForm.php';  
            break;
        case 'RSS':
            require 'Includes/oxp_RSS.php';  
            break;
        case 'EDITRSS':
            require 'Includes/oxp_RSSForm.php';  
            break;
        case 'CREATETENNANT':
            require 'Includes/oxp_SiteDetails.php';  
            break;
        case 'TRASHSITE':
            require 'Includes/oxp_TrashSites.php';  
            break;        
        case 'INACTIVATESITE':
            $SQL='call spDAInactivateSite ('.$_GET['SiteId'].','.$Persist_UserId.',0)';
            $result = mysql_query($SQL);
            break;
        case 'DELPAGE':
            $SQL='call spDADelPageContent ('.$_GET['pid'].','.$Persist_UserId.')';
            $result = mysql_query($SQL);
            break;
        case 'REINSTATESITE':
            $SQL='call spDAReInstateSite ('.$_GET['sid'].','.$Persist_UserId.')';
            echo $SQL;
            $result = mysql_query($SQL);
            break;            
    }
?>