<?php
$cr_FirstName='';
$cr_LastName='';
$cr_CompanyName='';

//Get RequestVariables 
  if(!empty($_GET)){
    $Func=$_GET['p'];
  } else {
    $Func='Home';
  }
  
  $sContactSelectedClass='';
  $sAboutSelectedClass='';
  $sSignInSelectedClass='';
  $Persist_UserId=0;
  $iTennantId=$Persist_UserId;
  
  $Func=str_replace('-',' ',$Func);
  switch (strtoupper($Func)) {
    case 'CONTACT':
        $sContactSelectedClass='Selected';
        break;
    case 'ABOUT':
        $sAboutSelectedClass='Selected';
        break;
    case 'ABOUT US':
        $sAboutSelectedClass='Selected';
        break; 
    case 'SIGNIN':
        $sSignInSelectedClass='Selected';
        break;     
    }

// Browser Detection

$browser = strpos($_SERVER['HTTP_USER_AGENT'],"iPhone");
if ($browser){
  $browser= 'iphone';
}
if (!$browser){
  $browser = strpos($_SERVER['HTTP_USER_AGENT'],"Windows Phone");
  if ($browser){
    $browser= 'iphone';
  }
}
if (!$browser){
  $browser = strpos($_SERVER['HTTP_USER_AGENT'],"ANDROID");
  if ($browser){
    $browser= 'iphone';
  }
  
 $TestMode=$_GET['tm'];
 if ($TestMode=='1') {
     $browser= 'iphone';
 }
}
require 'XCRED.php'; 

$Persist_UserId=0;

function encodeHTML($sHTML) {
    //$sHTML=htmlentities($sHTML);
    $sHTML=preg_replace('/&/i','&amp;',$sHTML);
    $sHTML=preg_replace('/</i','&lt;',$sHTML);
    $sHTML=preg_replace('/>/i','&gt;',$sHTML);
    return $sHTML;
    }
function unEncodeHTML($sHTML) {
    $sHTML=html_entity_decode($sHTML);
    return $sHTML;
    }    
class BuildClass
{
    
public function BuildTopHTML($Func) {
    
    global $iTennantId;
    
    //global $sSiteTitle, $sShortDesc, $sFavIcon, $iTennantId, $sTrackingCode;
    
    $sSiteTitle='Digiapolis.com - Interactive Web Marketing and Development';
    $sShortDesc='Digiapolis is an interactive marketing and responsive web development company based in Minneapolis, Minnesota, focused on delivering opportunities to your business bringing bold marketing ideas, an effective use of technology, and a passion for execution.';
    $sFavIcon='images/favicon.ico';
    if (strlen($_GET['tnt'])>0) {
        $SQL='select Favicon, SiteTitle, ShortDesc from DA_SiteDetails d where d.TennantId='.$_GET['tnt'];
        $result = mysql_query($SQL);  
        $num_rows = mysql_num_rows($result);
        if ( $num_rows >0 ){         
            while($row = mysql_fetch_array($result)) {  
                $sFavIcon=$row['Favicon'];
                $sSiteTitle=$row['SiteTitle'];
                $sShortDesc=$row['ShortDesc'];
            }
        }
        $iTennantId=$_GET['tnt'];
    }
?>
<!DOCTYPE html>
<html lang="en">
<!-- Copyright (c) 2013, Powered by OneXPage - All rights reserved.-->    
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=320" />
<meta name="viewport" content="initial-scale=1.0" />
<meta name="viewport" content="user-scalable=no" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="description" content="<? echo $sShortDesc ?>"/>
<title><? echo $sSiteTitle ?></title>
<link rel="shortcut icon" type="image/xicon" href="<? echo $sFavIcon ?>" />
<?  if (strtoupper($Func)!='OXP') {   ?>
<link rel="stylesheet" href="/CSS/reset.css" type="text/css" />
<? } ?>

<?  if (strtoupper($Func)=='OXP' && $_GET['EditMode']==1) { ?>
        <link rel="stylesheet" href="/CSS/DAEditing.css" type="text/css" />
<?  } ?>
<link rel="stylesheet" href="/Slider/layerslider/css/layerslider.css" type="text/css"/>
<link rel="stylesheet" href="/CSS/jquery-ui.css" type="text/css" />
<link rel="stylesheet" href="/CSS/jquery.mobile.structure-1.3.0.css" type="text/css" />
<?  if (strtoupper($Func)!='OXP') {   ?>
<link rel="stylesheet" href="/CSS/Basic_4222013.css" type="text/css" />
<link rel="stylesheet" href="/CSS/Form_1232013.css" type="text/css" />
<link rel="stylesheet" href="/Uploader/fineuploader-3.4.1.css" type="text/css" />
<?  } else { ?>
<!-- Custom CSS -->
<?
    $SQL='select RelativePath, FileName, FileId from DA_Files f '
    .' join DA_Order o on o.EntityId=f.FileId and o.Type=10'
    .' where f.TennantId=\''.$_GET['tnt'].'\' and f.Type=10'
    .' order by o.OrderNum;';
    $result = mysql_query($SQL);
    $num_rows = mysql_num_rows($result);
    if ( $num_rows >0 ){   
        while($row = mysql_fetch_array($result)) {    
            $sRelativePath=trim($row['RelativePath']);
            $sFileName=trim($row['FileName']);
            echo '<link rel="stylesheet" href="'.$sRelativePath.$sFileName.'"/>'.PHP_EOL;
        }
    }
}
?>      
</head>
<?
}
public function BuildBottomHTML($Func) {
    $iTennantId=$_GET['tnt'];
    
    if (strlen($iTennantId)<1) {
?>
<div id=BottCred>
    <div class="Context">
        <span class="Legal">
            H-1, Inc. dba Digiapolis &copy<? echo date("Y"); ?> | 4330 North Shore Drive, Minneapolis, Minnesota 55364 | <a href="tel:612-860-1025">612-860-1025</a>
        </span>
        <span class="BottomMenu">
            <a href="?p=/Home">home</a>
            <a href="/About Us">about</a>
            <a href="/Contact">contact</a>
            <a href="http://ChiefSocialStrategist.com">blog</a>
        </span>
    </div>
    <div class="SocialFunctions">
        <div class="addthis_toolbox addthis_default_style ">
            <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
            <a class="addthis_button_tweet"></a>
            <a class="addthis_counter addthis_pill_style"></a>
        </div>
    </div>
</div>
<?  
    }
        
    if (strtoupper($Func)=='HOME') {   
?>
<script type="text/javascript">
    $(document).ready(function(){
        if ($('#layerslider')) {
            $('#layerslider').layerSlider({
                skinsPath : 'Slider/layerslider/skins/',
                skin : 'fullwidth',
                thumbnailNavigation : 'hover',
                hoverPrevNext : false,
                responsive : false,
                responsiveUnder : 960,
                sublayerContainer : 960
            });
        }
    })
</script>
<?  }   ?>
<!-- Custom javascript -->
<? 
    if (strtoupper($Func)=='OXP') {
        $SQL='select RelativePath, FileName, FileId from DA_Files f '
        .' join DA_Order o on o.EntityId=f.FileId and o.Type=11'
        .' where f.TennantId=\''.$_GET['tnt'].'\' and f.Type=11'
        .' order by o.OrderNum;';
        $result = mysql_query($SQL);
        $num_rows = mysql_num_rows($result);
        if ( $num_rows >0 ){   
            while($row = mysql_fetch_array($result)) {    
                $sRelativePath=trim($row['RelativePath']);
                $sFileName=trim($row['FileName']);
                echo '<script src="'.$sRelativePath.$sFileName.'"></script>'.PHP_EOL;
            }
        }
    }
    if (strtoupper($Func)!='OXP') {
?> 
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36926763-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
<?
    }
    else {
        echo '<!-- Custom Tracking Code -->'.PHP_EOL;
        $sTrackingCode='';
        if (strlen($_GET['tnt'])>0) {
            $SQL='select TrackingCode from DA_SiteDetails d where d.TennantId='.$_GET['tnt'];
            $result = mysql_query($SQL);  
            $num_rows = mysql_num_rows($result);
            if ( $num_rows >0 ){         
                while($row = mysql_fetch_array($result)) {    
                    $sTrackingCode=$row['TrackingCode'];
                }
            }
            $sTrackingCode=str_replace('&lt;', '<',$sTrackingCode);
            $sTrackingCode=str_replace('&gt;', '>',$sTrackingCode);
            echo $sTrackingCode;
        }        
    }
}
public function BuildPageContent($Page) {

  switch (strtoupper($Page)) {
    case 'HOME':
        //require 'Includes/Home.php';
        break;
    case 'CONTACT':
        echo '<h1 class="PageTitle">'.$Page.'</h1>';
        require 'Includes/Contact.php';
        break;
    case 'ABOUT':
        echo '<h1 class="PageTitle">'.$Page.'</h1>';
        require 'Includes/About.php';
        break;
    case 'SERVICETILES':
        require 'Includes/ServiceTiles.php';
        break;
    case 'ABOUT US':
        echo '<h1 class="PageTitle">'.$Page.'</h1>';
        require 'Includes/AboutUs.php';
        break;
    case 'ONEXPAGE':
        echo '<h1 class="PageTitle">Edit: <span style=color:#666;font-family:serif;font-size:.8em;>One</span><span style=font-size:1.5em;color:#000;font-family:serif;vertical-align:middle;>X</span><span style=color:#666;font-family:serif;font-size:.8em;vertical-align:middle;>Page</span></h1>';
        require 'Includes/OnexPage1.php';
        break; 
    case 'OXP_PAGELIST':
        $iTennantId=$_GET['tnt']; 
        echo '<h1 class="PageTitle"><span style=color:#666;font-family:serif;font-size:.8em;>One</span><span style=font-size:1.5em;color:#000;font-family:serif;vertical-align:middle;>X</span><span style=color:#666;font-family:serif;font-size:.8em;vertical-align:middle;>Page</span></h1>';
        require 'Includes/oxp_PageList.php';
        break;     
    case 'SIGNIN':
        echo '<h1 class="PageTitle">Welcome to: <span style=color:#666;font-family:serif;font-size:.8em;>One</span><span style=font-size:1.5em;color:#000;font-family:serif;vertical-align:middle;>X</span><span style=color:#666;font-family:serif;font-size:.8em;vertical-align:middle;>Page</span></h1>';
        require 'Includes/SignInCreateAcct.php';
        break;
    case 'OXP':
        require 'Includes/oxp_PageView.php';
        break;
    case 'OXP_TENNANTLIST':
        require 'Includes/oxp_TennantList.php'; 
        break;
    default:
        //echo '<div class=InfoMsg>We are sorry, we could not locate requested page</div>';
        $Page='HOME';
        $Func='Home';
        require 'Includes/Home.php';
        break;        
    }
  }
public function CheckForCredentials($PVar) {
    
    global $Persist_UserId, $PWDHash, $SQL, $result, $num_rows, $bLoggedIn;
    // Check for credentia;s
    switch (strtoupper($PVar)) {
        
        case 'OXP_PAGELIST':
            //Set Tennant for editing 
            $iTennantId=$_GET['tnt']; 
            setcookie("tnt", $iTennantId, time()+3600);
            //header ('Location: /OXP_PAGELIST?tnt='.$iTennantId);
            //exit;            
            
        case 'ONEXPAGE':
        case 'OXP_PAGELIST':
        case 'OXP_DELPAGE':
        case 'OXP_SORTPAGE':
        case 'OXP_SITEDETAILS':
        case 'OXP_TENNANTLIST':
            $Persist_UserId=$_COOKIE["CCrdlUID"];
            $PWDHash=$_COOKIE["CCrdl"];
            $Persist_LoggedInTennantId=$_COOKIE["CCtnt"];
            if (is_null($PWDHash)) {
                $PWDHash='noHash';
            }
            
            $SQL='select u.FirstName, u.LastName, u.UserId from DA_Pwd pwd join DA_User u on u.UserId=pwd.UserId where pwd.PwdHash=\''.$PWDHash.'\'  limit 1;';
            $result1 = mysql_query($SQL);
            $num_rows1 = mysql_num_rows($result1);
            if ( $num_rows1 < 1 ){
                
                // Delete cookies
                setcookie("CCrdlUID", "", time()-3600);
                setcookie("CCrdl", "", time()-3600);                
                setcookie("tnt", "", time()-3600); 
                setcookie("CCtnt", "", time()-3600);
                header ('Location: /SignIn?m=_100&fm='.$PVar);
                exit;
            }
                
            // Reset cookie credential
            setcookie("CCrdlUID", $Persist_UserId, time()+3600);
            setcookie("CCrdl", $PWDHash, time()+3600);
            setcookie("CCtnt", $Persist_LoggedInTennantId, time()-3600);
            $bLoggedIn=TRUE;

            break;
        case 'SIGNIN':
            setcookie("CCrdlUID", "", time()-3600);
            setcookie("CCrdl", "", time()-3600); 
            setcookie("tnt", "", time()-3600); 
            $bLoggedIn=FALSE;
            break;

        case 'TENNANTSIGNOUT':
            setcookie("CCtnt", "", time()-3600); 
            $bLoggedIn=FALSE;
            if (strtoupper($PVar)=='TENNANTSIGNOUT') {
                header ('Location: /OXP?tnt='.$_GET['tnt']);
                exit;
            }            
            break;
            
        }    
    }   
public function fProcQMsg() {
    if (strlen($_GET['m'])>0) {
        switch ($_GET['m']) {
            case '_100':
                echo '<div class=InfoMsg>You must be signed in with your valid credentials to use this function</div>';
                break;
            case '_101':
                echo '<div class=InfoMsg>XPage has been removed</div>';
                break;
            case '_102':
                echo '<div class=InfoMsg>XPage has been updated</div>';
                break;            
            case '_103':
                echo '<div class=InfoMsg>Your XPages sort order have been updated</div>';
                break;
            case '_104':
                echo '<div class=InfoMsg>Your XPage site details have been saved</div>';
                break;
            case '_105':
                echo '<div class=InfoMsg>We are sorry, but we could not locate the requested XPage</div>';
                break;
            case '_106':
                echo '<div class=InfoMsg>We are sorry, we could not locate requested page</div>';
                break;
            case '_107':
                echo '<div class=InfoMsg>Your XPage has been saved</div>';
                break;
             case '_200':
                echo '<div class=InfoMsg>We could not find a profile for you based on your credentials, please try again</div>';
                break;
             case '_300':
                echo '<div class=InfoMsg>Your site has been reinstated</div>';
                break; 
             case '_301':
                echo '<div class=InfoMsg>Your requested site has been permanentyly removed</div>';
                break;
             case '_999':
                echo '<div class=InfoMsg>You have been logged out due to inactivity</div>';
                break;             
            default:
                echo '<div class=InfoMsg>Unknowm error found - No more information, please contact support</div>';
            }            
        }
    }
}
function fTidyJSON($sContent, $bNLConvert) {
    
    if (!$bNLConvert) $bNLConvert=1;
	
    $sContent = str_replace("<", "&lt;", $sContent);            
    $sContent = str_replace(">", "&gt;", $sContent);  
    $sContent = str_replace("\"", "'", $sContent);  
    $sContent = str_replace("'", "\'", $sContent);  
    if ($bNLConvert==1) $sContent = preg_replace("/\r?\n/m", "", $sContent); 
		
    return $sContent;
}
/**
* Calls a Stored Procedure and returns the results as an array of rows.
* @param mysqli $dbLink An open mysqli object.
* @param string $procName The name of the procedure to call.
* @param string $params The parameter string to be used
* @return array An array of rows returned by the call.
*/
function c_mysqli_call(mysqli $dbLink, $procName, $params="") {
    if(!$dbLink) {
        throw new Exception("The MySQLi connection is invalid.");
    }
    else {
        // Execute the SQL command.
        // The multy_query method is used here to get the buffered results,
        // so they can be freeded later to avoid the out of sync error.
        $sql = "CALL {$procName}({$params});";
        $sqlSuccess = $dbLink->multi_query($sql);
        if($sqlSuccess) {
            if($dbLink->more_results()) {
                // Get the first buffered result set, the one with our data.
                $result = $dbLink->use_result();
                $output = array();
                // Put the rows into the outpu array
                while($row = $result->fetch_assoc()) {
                    $output[] = $row;
                }
                // Free the first result set.
                // If you forget this one, you will get the "out of sync" error.
                $result->free();
                // Go through each remaining buffered result and free them as well.
                // This removes all extra result sets returned, clearing the way
                // for the next SQL command.
                while($dbLink->more_results() && $dbLink->next_result()) {
                    $extraResult = $dbLink->use_result();
                    if($extraResult instanceof mysqli_result){
                        $extraResult->free();
                    }
                }
                return $output;
            }
            else {
                return false;
            }
        }
        else {
            throw new Exception("The call failed: " . $dbLink->error);
        }
    }
}
function fProcessHTMLSmartCodes($sHTML) {
    
    $Date_Simple=date("F j, Y, g:i a");
    
    $sHTML=  str_replace('[[DATE]]', $Date_Simple, $sHTML);
    
    $Pattern='/\[\[OX.*?\]\]/';   
    $matches='';
    $sModHTML='';
    $iBeg=0;
    $iEndIdx=0;
    $M=preg_match_all($Pattern, $sHTML, $matches, PREG_OFFSET_CAPTURE);
    if ($M) {
        for($i=0;$i<count($matches[0]);$i++)    {

            $iStartIdx = $matches[0][$i][1]+5;
            $iEndIdx = strpos($sHTML,"]]",$iStartIdx) + 2;
            $iLengthOfSearch = $iEndIdx-$iStartIdx;
            $sSmartCode = substr($sHTML,$iStartIdx, $iLengthOfSearch-2);
            $aSC=explode('.',$sSmartCode);
            $sSmartCodeOptions='';
            $sDelim='';
            if (count($aSC)>0) {
                $sSmartCode=$aSC[0];
                if (count($aSC)>1) {
                    for ($i2=1;$i2<count($aSC);$i2++) {
                       $sSmartCodeOptions=$sSmartCodeOptions.$sDelim.$aSC[$i2]; 
                       $sDelim='.';
                    }
                }
           }

            $iLen = $iStartIdx-$iBeg-5;
            $sModHTML=substr($sHTML,$iBeg, $iLen);
            echo $sModHTML;
            
            fProcessSmartCode($sSmartCode,$sSmartCodeOptions);
            
            //echo '<br/><br/><br/>$iStartIdx: '.$iStartIdx.'<br/>';
            //echo '$iEndIdx: '.$iEndIdx.'<br/>';
            //echo '$iBeg: '.$iBeg.'<br/>';
            //echo '$iLen: '.$iLen.'<br/>';
            //echo '$iLengthOfSearch: '.$iLengthOfSearch.'<br/>';
            //echo '$sSmartCode: '.$sSmartCode.'<br/>';
            //echo '$sSmartCodeOptions: '.$sSmartCodeOptions.'<br/><br/>';
            
            $iBeg=$iEndIdx;
        }
        $sModHTML=substr($sHTML,$iBeg);
        echo $sModHTML;          
    } else {
        echo $sHTML;
    }
}
function fProcessSmartCode($sSmartCode,$sSmartCodeOptions) {
    global $cr_FirstName, $cr_LastName, $cr_CompanyName, $cr_Email, $cr_Addr1, $cr_Addr2, $cr_Addr3, $cr_City, $cr_State, $cr_PostalCode,$cr_Country, $cr_PhotoURL;
    
    echo PHP_EOL.'<!-- Begin XPage SmartCode Process: '.$sSmartCode.'-->'.PHP_EOL;
    switch (strtoupper($sSmartCode)) {
        case 'RSS':  
            $A2=new BuildRSSClass();
            $A2->BuildRSS($sSmartCodeOptions);
            //echo '</div>';
            break;
        case 'LOGIN':
            require 'obj_Login.php';
            break;
        case 'BLOG':
            require 'obj_Blog.php';            
            break;
        case 'FIRSTNAME':
            echo $cr_FirstName;
            break;
        case 'LASTNAME':
            echo $cr_LastName;
            break;
        case 'COMPANYNAME':
            echo $cr_CompanyName;
            break;
        case 'HEADLINES':
            require 'obj_Headlines.php'; 
            break;
        case 'WALL':
            require 'obj_WallPost.php'; 
            break;
        case 'RSSBLOCKS':
            require 'obj_RSSBlocks.php'; 
            break; 
        case 'COLLABMENU':
            require 'obj_CollabMenu.php'; 
            break;    
        case 'WALLMESSAGES':
            //require 'Includes/obj_WallMessages.php'; 
        echo '<div id="MainWallMsgs"></div>';
        echo '<div style="display:none;" id="WallMsgJSON">'.$sDADoc.'</div>';            
            break; 
        case 'PAGE':
            require 'Includes/obj_Page.php'; 
            break;        
        
    }
    echo PHP_EOL.'<!-- End XPage SmartCode Process: '.$sSmartCode.'-->'.PHP_EOL;
}
function fBuildPersistInfo($Persist_UserId) {
    
    global $cr_FirstName, $cr_LastName, $cr_CompanyName, $cr_Email, $cr_Addr1, $cr_Addr2, $cr_Addr3, $cr_City, $cr_State, $cr_PostalCode,$cr_Country, $cr_PhotoURL;
    
    if (strlen($Persist_UserId)<1) $Persist_UserId=0;
    
    $SQL='select u.FirstName, u.LastName, u.CompanyName, e.Email, a.Addr1, a.Addr2, a.Addr3, a.City, a.State, a.Country, a.PostalCode,u.PhotoURL from DA_User u'
    .' join DA_EmailAccounts e on e.UserId=u.UserId'
    .' left join DA_Address a on a.EntityId=u.UserId and a.Type=0 and a.PrimeUse=1'
    .' where u.UserId=\''.$Persist_UserId.'\'';
    $result = mysql_query($SQL);
    $cr_PhotoURL='/images/NoAvatar.png';
    while($row = mysql_fetch_array($result)) {    
        $cr_FirstName=trim($row['FirstName']);
        $cr_LastName=trim($row['LastName']);
        $cr_CompanyName=trim($row['CompanyName']);
        $cr_Email=trim($row['Email']);
        $cr_Addr1=trim($row['Addr1']);
        $cr_Addr2=trim($row['Addr2']);
        $cr_Addr3=trim($row['Addr3']);
        $cr_City=trim($row['City']);
        $cr_State=trim($row['State']);
        $cr_PostalCode=trim($row['PostalCode']);
        $cr_Country=trim($row['Country']);
        $cr_PhotoURL=$row['PhotoURL'];
    }
}    
?>