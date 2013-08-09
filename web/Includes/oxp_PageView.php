<?php
    $Persist_UserId=$_COOKIE["CCrdlUID"];
    $Persist_LoggedInTennantId=$_COOKIE["CCtnt"];
    
    global $cr_FirstName, $cr_LastName, $cr_CompanyName, $cr_PhotoURL;
    $cr_FirstName='';
    $cr_LastName='';
    $cr_CompanyName='';
    //echo '$Persist_UserId'.$Persist_UserId;
    fBuildPersistInfo($Persist_UserId);
    
    if (strlen($cr_PhotoURL)<1) $cr_PhotoURL='/images/NoAvatar.png';
    
    if (strlen($Persist_UserId)>0 && strlen($Persist_LoggedInTennantId)>0) {
        $bLoggedIn=1;
    } else {
        $bLoggedIn=0;
    }
    $iTennantId=$_GET['tnt'];
    $bEditMode=$_GET['EditMode'];
    
    $bTennantLogin=0;
    if (strlen($_COOKIE['CCtnt'])>0) {
        $bTennantLogin=1;
    }
    
    // If coming in from proclaimed URL
    $sXURL=$_GET['XURL'];
    IF (strlen($sXURL)>0) {
        $SQL='select TennantId from DA_SiteDetails s where s.XURL=\''.$sXURL.'\'';
        $result = mysql_query($SQL);  
        $num_rows = mysql_num_rows($result);
        if ( $num_rows >0 ){         
           while($row = mysql_fetch_array($result)) {    
                $iTennantId=$row['TennantId'];
                $bEditMode=0;
            }
        }
    }
    if (strlen($sSmartCodeOptions)>0) {
        $bTennantLogin=0;
        $iTennantId=$sSmartCodeOptions;
    }
    
    // Editing mode options
?>
<?  if ($bEditMode==1) {    ?>
<div id="_DAEditingMenu">
    <div class="Save"><a href="javascript:void(0);" onclick="document.getElementById('XPG_Submit').click();">Save Content</a></div>
    <div class="1xp"><a href="#">OneXPage Manager</a></div>
    <br class="ClearFloat"/>
</div>
<form name="formAllHTML" id="formAllHTML" style="display:none;" method="post" action="/OXP_PAGEVIEW" onsubmit="return(fGetEditorHTML(event,this))">
    <input type="text" name="XPG_TennantId" id="XPG_TennantId" value="<? echo $iTennantId ?>">
    <input type="text" name="XPG_HTML" id="XPG_HTML"/>
    <input type="text" name="XPG_IDS" id="XPG_IDS"/>
    <input type="text" class="xf_UpdInd" name="UpdInd" id="OneXUpdInd"/>
    <input type="text" name="formModeInd" id="SIformMode" value="OXP_PAGEVIEW"/>
    <input type="text" class="xf_UpdMode" name="formMode"/>
    <input id="XPG_Submit" type="submit"/>
</form>
<?
    }
    
    // Top Menus
    $SQL='select p.Title, p.PageId from DA_Pages p'
    .' join DA_Nav n on n.PageId=p.PageId'
    .' join DA_Order o on o.EntityId=n.PageId and o.Type=1'
    .' where p.TennantId=\''.$iTennantId.'\' and n.Active=1'
    .' and (('.$bLoggedIn.'=1 and p.DisplayMode<>2) or ('.$bLoggedIn.'=0 and p.DisplayMode<>1))'
    .' and p.DisplayMode<>3'
    .' order by o.OrderNum;';
    $result = mysql_query($SQL);
    $num_rows = mysql_num_rows($result);
    if ( $num_rows >0 ){   
        echo '<div class="PV TopXMenuContainer"><div class="Inner"><div class="Logo"><img src=/images/spacer.gif /></div><div class="TopXMenuInner"><ul>';        
        while($row = mysql_fetch_array($result)) {    
            $Title=$row['Title'];
            $iPageId=$row['PageId'];
            echo '<li class="PV XMenu"><a href="#xp_'.$iPageId.'">'.$Title.'</a></li>';
        }
        if ($bTennantLogin==1) {
            echo '<li class="PV XMenu Search" title="Search!">'
            .'<input type=text onkeyup="fSearchByName(this)" name=SearchForm id=SearchForm placeholder="Search for people, groups, organizations..."/><img src=/images/spacer.gif />'
            .'<div id="divSearchResults" class="divSearchResults" style="display:none;"></div><div id="divSearchJSON" style="display:none;"></div>'
            .'</li>'
            .'<li class="PV XMenu Inbox" title="View Inbox"><img src=/images/spacer.gif /></li>'
            .'<li class="PV XMenu Messages" title="View Messages"><img src=/images/spacer.gif /></li>'
            .'<li class="PV XMenu" title="My Options & Settings"><div class="ProfOptionsContainer">'
            .'<div class="Avatar"><img id=SmallAvater src="'.$cr_PhotoURL.'"/></div>'
            .'<a href="javascript:void(0);" onclick="$(\'#divProfileOptions\').toggle(\'slide\',100);">'
            .$cr_FirstName.' '.$cr_LastName.'</a>'
            .'<div id="divProfileOptions" style="display:none;">'
            .'<div class="Inner">'
            .'<div class="ProfRow" onclick="$(\'#divProfileOptions\').toggle(\'slide\',100);fDisplayAjaxBox(\'FUNC=EDITPROFILE\',0,\'fInstProfilePhoto()\');"><div class="EditProfile"><img src="/images/spacer.gif"/>My Profile</div></div>'        
            .'<div class="ProfRow" onclick="self.location=\'/TennantSignOut?tnt='.$iTennantId.'\'"><div class="SignOut"><img src="/images/spacer.gif"/>Sign Out</div></div>'
            .'</div></div></div></li>';
            //echo '<li class="PV XMenu"><a href="/TennantSignOut?tnt='.$iTennantId.'">Sign Out</a></li>';
        }
        echo '<li class="ClearFloat" id="Clear">&nbsp;</li></ul></div><br class="ClearFloat"></div></div>';
    }
    
    // XPages
    $SQL='select p.OptClass, p.PageId, p.Title,p.InlineEdit+0 as InlineEdit,p.PageHTML from DA_Pages p'
    .' left join DA_Order o on o.EntityId=p.PageId and o.Type=0'
    .' where p.TennantId=\''.$iTennantId.'\' and p.Type=0'
    .' and (('.$bLoggedIn.'=1 and p.DisplayMode<>2) or ('.$bLoggedIn.'=0 and p.DisplayMode<>1))'
    .' and p.DisplayMode<>3'
    .' order by o.OrderNum,p.Title;';
    $result = mysql_query($SQL);
    $num_rows = mysql_num_rows($result);
    $iPageCnt=0;
    $sHostName=  trim($_SERVER["SERVER_NAME"]);
    if ( $num_rows >0 ){   
        while($row = mysql_fetch_array($result)) {
            $sTitle=$row['Title'];
            $iPageId=$row['PageId']; 
            $bInlineEdit=$row['InlineEdit'];
            $sOptClass=$row['OptClass'];
            $sPageHTML=unEncodeHTML($row['PageHTML']);  
            
            $sEditable='';
            if ($bInlineEdit==1 && $bEditMode==1 && strtoupper($sHostName)=='WWW.DIGIAPOLIS.COM') {
                $sEditable=' contenteditable="true" ';
                $sPageHTML=str_replace('<p','<p contenteditable="true" ',$sPageHTML);
                $sPageHTML=str_replace('<a','<a contenteditable="true" ',$sPageHTML);
                $sPageHTML=str_replace('<span','<span contenteditable="true" ',$sPageHTML);
                $sPageHTML=str_replace('<h1','<h1 contenteditable="true" ',$sPageHTML);
                $sPageHTML=str_replace('<h2','<h2 contenteditable="true" ',$sPageHTML);
                $sPageHTML=str_replace('<h3','<h3 contenteditable="true" ',$sPageHTML);
                $sPageHTML=str_replace('<h4','<h4 contenteditable="true" ',$sPageHTML);
                $sPageHTML=str_replace('<h5','<h5 contenteditable="true" ',$sPageHTML);
                $sPageHTML=str_replace('<h6','<h6 contenteditable="true" ',$sPageHTML);
                $sPageHTML=str_replace('<li','<li contenteditable="true" ',$sPageHTML);
            } 
            else {
                $sPageHTML=str_replace('contenteditable="true"','',$sPageHTML);
            }
            
            echo '          <div class="StdXPage '.$sOptClass.'" id="XPage_'.$iPageId.'">';
            echo '              <div class="WPScroll">';
            echo '                  <a id="xp_'.$iPageId.'" class="StdScrollAnchor"></a>';
            
            if ($iPageCnt>0) {
                echo '              <div class="TopOfPage"><a href="#TopOfPage">Top</a></div>';
            }
            echo '                  <div class="XPageContainer" id="XPageContainer_'.$iPageId.'">';
            
            $sPageHTML=fProcessHTMLSmartCodes($sPageHTML);
            
            echo '                  </div>';
            echo '                  <br class="ClearFloat"/>';
            echo '              </div>';
            echo '          </div>';
            $iPageCnt=$iPageCnt+1;
        }
    }
?>

<script>
    var gUserId='<?echo $Persist_UserId ?>';
    var gTennantId='<?echo $Persist_LoggedInTennantId ?>';
    var gEntityId='<?echo $Persist_LoggedInTennantId ?>';
    var gUserImage='<?echo $cr_PhotoURL ?>';
    var gUFirstName='<?echo $cr_FirstName ?>';
    var gULastName='<?echo $cr_LastName ?>';
    var gUCompanyName='<?echo $cr_CompanyName ?>';
</script>

