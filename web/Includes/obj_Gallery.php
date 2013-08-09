<?php

    $Persist_UserId=$_COOKIE["CCrdlUID"];
    $PWDHash=$_COOKIE["CCrdl"];
    
    // Make this cacheable
    
    $SQL='select u.FirstName, u.LastName from DA_User u'
    .' where u.UserId=\''.$Persist_UserId.'\'';
    $result = mysql_query($SQL);
    $num_rows = mysql_num_rows($result);
    if ( $num_rows >0 ){
        while($row = mysql_fetch_array($result)) {    
            $sFirstName=$row['FirstName'];
            $sLastName=$row['LastName'];
        }
    }
    else {
        setcookie("CCrdlUID", "", time()-3600);
        setcookie("CCrdl", "", time()-3600);                
        header ('Location: /SignIn?m=_100&fm='.$PVar);
        exit;        
    }
    
    echo '<div id="divTennantList">';
    echo '<div class="xMenu">';
    echo '<div id="NewBtn" class="New" title="Add XPage site"><a class="Add" href="javascript:void(0);" onclick="fDisplayAjaxBox(\'FUNC=CREATETENNANT&ntnt=1\',0);"><img src="/images/spacer.gif"/></a></div>';
    echo '<br class="ClearFloat">';
    echo '</div>';
    echo '<h1 class="PageTitle"><span style="color:#666;font-family:serif;font-size:.8em;">One</span><span style="font-size:1.5em;color:#000;font-family:serif;vertical-align:middle;">X</span><span style="color:#666;font-family:serif;font-size:.8em;vertical-align:middle;">Page</span></h1>';

    $SQL='select RelativePath, FileName, FileId from DA_Files f '
    .' left join DA_Order o on o.EntityId=f.FileId and o.Type=12'
    .' where f.TennantId=\''.$iTennantId.'\' and f.Type=12'
    .' order by o.OrderNum;';
    $result = mysql_query($SQL);
    $num_rows = mysql_num_rows($result);
    
    $sDADoc='var oDATennants=Array();';
    $iCnt=0;    
    if ( $num_rows >0 ){
        echo '<div id="divTennantContainer">';
        while($row = mysql_fetch_array($result)) {
            
            $sSiteTitle=$row['SiteTitle'];
            $sShortDesc=$row['ShortDesc'];
            $sPageImageURL=$row['PageImageURL'];
            $iTennantId=$row['TennantId'];
            
            if (strlen($sPageImageURL)<1) {
                $sPageImageURL='/images/OneXPageDefSiteImage.gif';
            }
            
            //echo '<div id="divTR_'.$iTennantId.'" class="divTennantRow">';
            //echo '<div class="divTRInner">';
            //echo '<div class="divTPageImage"><img onclick="self.location=\'/OXP_PAGELIST?tnt='.$iTennantId.'\'" src="'.$sPageImageURL.'"/></div>';
            //echo '<div class="divTPageDesc"><span>'.$sShortDesc.'</span></div>';
            //echo '<div class="EditControls" title="Edit Site"><a class="Edit" href="/OXP_PAGELIST?tnt='.$iTennantId.'"><img src="/images/spacer.gif">Edit Site</a></div>';
            //echo '</div></div>';
            
                     
            $sDADoc .= "oDATennants[".$iCnt."]= new Object();";
            $sDADoc .= "oDATennants[".$iCnt."]['TennantId']='".fTidyJSON($iTennantId,1)."';";
            $sDADoc .= "oDATennants[".$iCnt."]['PageImageURL']='".fTidyJSON($sPageImageURL,1)."';";
            $sDADoc .= "oDATennants[".$iCnt."]['ShortDesc']='".fTidyJSON($sShortDesc,1)."';";
            $sDADoc .= "oDATennants[".$iCnt."]['Title']='".fTidyJSON($sSiteTitle,1)."';";
            $iCnt=$iCnt+1;
        }
        echo '<div class="WaitNote">One moment while we retrieve your XPage sites...</div>';
        echo '<div id="divTntJSONDoc" style="display:none;">'.$sDADoc.'</div>';
    }
    echo '</div>';
?>   

