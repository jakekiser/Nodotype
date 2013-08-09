<? 
// Check to see if OneXPage and if signed on

require 'Includes/RSSUtilities.php';
require 'Includes/HTMLBuildClass.php';

$A=new BuildClass();

switch (strtoupper($_GET['p'])) {
    
    case 'OXP_DELPAGE':
        $formModeInd='OXP_DELPAGE';
        break;
    case 'OXP':
        $formModeInd='OXP';
        break;    
    
    default:    
      $formModeInd=$_POST["formModeInd"];  
}
if ($_POST["formModeInd"]=='TENNANTSIGNIN'  || $_POST["formModeInd"]=='EXISTINGACCT' || $_POST["formModeInd"]=='OXP_WALLMESSAGE' ) {
    $formModeInd=$_POST["formModeInd"];  
}
$ReqFunc=$formModeInd;
if (strlen($ReqFunc)<1) {
    $ReqFunc=$_GET['p'];
}

$bLoggedIn=FALSE;
$A->CheckForCredentials($ReqFunc);
if (strlen($formModeInd)>0) {
    require 'Includes/DBUpdates.php';    
}

$A->BuildTopHTML($ReqFunc);

// Process any informational or error messages    
$A->fProcQMsg(); 

    $TestMode=$_GET['t'];
    if ($TestMode!='1') {
        $TestModeHide='display:none;';
    }
    
    if (strtoupper($Func)=='ONEXPAGE') {        
?>
<script language=JavaScript src='Editor/scripts/innovaeditor.js'></script>
<?  }   
    if (strtoupper($Func)=='OXP' && $_GET['EditMode']==1) {        
?>
<script language=JavaScript src="Editor20/ckeditor.js"></script>
<?  }   ?>
<body id="HTMLBody" class="<? echo $Func ?>">
    <div id="divShadowCurtain" style="display:none;"></div>
    <a id="TopOfPage" class="StdScrollAnchor"></a>
    <div id="StdMsg" style="display:none;"></div>
    <div id=BodyContainer>
<?  if (strtoupper($_GET['p'])!='OXP') {
?>            
        <div id="LeftPane">
            <div id=Logo><a href="http://www.Digiapolis.com"><img id=imgLogo src="images/DigiapolisSmallLogo.png"/><img id=imgLogoSmall src="images/DigiapolisLogoWhiteLO.png"/></a>
                <ul class=BasicMenu>
                    <li id=About class="<? echo $sAboutSelectedClass ?>"><a href="/About-Us"><div>About<div>&nbsp;</div></div></a></li>
                    <li id=Contact class="<? echo $sContactSelectedClass ?>"><a href="/Contact"><div>Contact<div>&nbsp;</div></div></a></li>
                    <li id=Blog><a href="http://ChiefSocialStrategist.com"><div>Blog<div>&nbsp;</div></div></a></li>
<?  if ($bLoggedIn){ ?>                        
                    <li id=SignIn"><a href="/SignIn?t=1"><div>Sign Out<div>&nbsp;</div></div></a></li>
<?  } else { ?>                       
                    <li id=SignIn style="<?echo $TestModeHide?>" class="<? echo $sSignInSelectedClass ?>"><a href="/SignIn"><div>Sign In<div>&nbsp;</div></div></a></li>
<?  }   ?>                        
                    <li id=Clear class="ClearFloat">&nbsp;</li>
                </ul>
                <br class="ClearFloat" />
            </div>
        </div>
<?
    }
    if ($Func=='Home') {

?>    
        <div id="layerslider-container-fw">
            <div id="layerslider" style="width: 100%; height: 333px; margin: 0px auto; ">
                <div class="ls-layer" style="slidedirection: right; transition2d: 24,25,27,28; ">
                    <img src="images/WeCanHelpYouGetThereBANNER.jpg" class="ls-bg" alt="Digiapolis - We can help you get there">
                    <h5 class="ls-s-1 text" style=" top:50%; left: 40%; slidedirection : top; slideoutdirection : fade; durationout : 750; easingin : easeOutQuint; delayin : 300; scalein : .8; scaleout : .8; showuntil : 4000;">
                        <div><div>We can help you get there</div></div>
                    </h5>
                </div>
                <div class="ls-layer" style="slidedirection: right; transition2d: 110,111,112,113; ">
                    <img src="images/HillOfBeans.gif" class="ls-bg" alt="Digiapolis - Is your marketing worth a Hill of Beans"/>
                    <h5 class="ls-s-1 text" style=" top:70%; left: 50%; slidedirection : right; slideoutdirection : fade; durationout : 750; easingin : easeOutQuint; delayin : 300; scalein : .8; scaleout : .8; showuntil : 4000;">
                        <div><div>Your marketing can do more</div></div>
                    </h5>
                </div>
                <div class="ls-layer" style="slidedirection: right; transition2d: 92,93,105; ">
                    <img src="images/MarketingBetterWay.gif" class="ls-bg" alt="Digiapolis - Marketing.  There is a better way.">
                    <h5 class="ls-s-1 text" style=" top:30%; left: 30%; slidedirection : left; slideoutdirection : fade; durationout : 750; easingin : easeOutQuint; delayin : 300; scalein : .8; scaleout : .8; showuntil : 4000;">
                        <div><div>There is a better way</div></div>
                    </h5>
                </div>
            </div>
        </div>
<?  
    }
?>
        <div id=Body>
<?
$A->BuildPageContent($Func);
?>
        </div>
</div>
<?
if (strtoupper($Func)=='HOME') {
    require 'Includes/WhatWeDoStatement.php';
    $A->BuildPageContent('ServiceTiles');
    echo '<div id=ScrollPageContainer>';
    require 'Includes/ResponsiveMarketing.php';
    require 'Includes/WebDevelopment.php';    
    require 'Includes/BusinessSocial.php';
    require 'Includes/Skills.php';
    echo '</div>';
}
    $iTennantId=$_GET['tnt'];
?> 
<script type="text/javascript" src="JSLibrary/jquery-1.9.1.js"></script>    
<script type="text/javascript" src="JSLibrary/jquery-ui.js"></script>    
<script type="text/javascript" src="JSLibrary/Basic.js"></script>
<script type="text/javascript" src="JSLibrary/GeneralUtilities.js"></script>
<?  if ($bLoggedIn){ ?>    
<script type="text/javascript" src="JSLibrary/Admin.js"></script>
<?  } ?>
<script type="text/javascript" src="JSLibrary/SmoothScroll.js"></script>
<script type="text/javascript" src="JSLibrary/RSSPoll.js"></script>
<script type="text/javascript" src="Uploader/jquery.fineuploader-3.6.4.js"></script>
<script type="text/javascript" src="JSLibrary/Uploader.js"></script>
<?  if ($Func=='Home') { ?>
<script src="Slider/layerslider/jQuery/jquery.js" type="text/javascript"></script>
<script src="Slider/layerslider/jQuery/jquery-easing-1.3.js" type="text/javascript"></script>
<script src="Slider/layerslider/jQuery/jquery-transit-modified.js" type="text/javascript"></script>
<script src="Slider/layerslider/js/layerslider.transitions.js" type="text/javascript"></script>
<script src="Slider/layerslider/js/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script>
<?  }   ?>
<script type="text/javascript">//var addthis_config = {"data_track_addressbar":true};</script>
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-50f6bc4716b349b0"></script>
<?  if ($bLoggedIn){ ?>  
<script>
    $(document).ready(function(){
        if ($('#divTennantRow')) {
            fBuildTennantBlocks();
        }
    });	 
</script> 
<?  } ?>
<?  $A->BuildBottomHTML($Func);?>
</body>
</html>