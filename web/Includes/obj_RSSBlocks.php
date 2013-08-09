<?php
    $Persist_UserId=$_COOKIE["CCrdlUID"];
    $PWDHash=$_COOKIE["CCrdl"];
    $iTennantId=$_GET['tnt'];
    if (strlen($iTennantId)<1) {
        $iTennantId=$_COOKIE["CCtnt"];
    }    
    echo '<div id="divRSSList">';

    $SQL='select r.Title, r.Description, r.AttrAuthor, r.AttrURL, r.FeedURL, r.RSSID, r.TennantId, r.RSSImage from DA_RSS r '
    .' where r.TennantId=\''.$iTennantId.'\''
    .' order by rand();';
    $result = mysql_query($SQL);
    $num_rows = mysql_num_rows($result);
    
    $sDARSS='var oDARSS=Array();';
    $iCnt=0;    
    if ( $num_rows >0 ){
        echo '<div id="divRSSBlockContainer">';
        while($row = mysql_fetch_array($result)) {
            
            $sTitle=$row['Title'];
            $sDescription=$row['Description'];
            $sFeedURL=$row['FeedURL'];
            $sAttrAuthor=$row['AttrAuthor'];
            $sAttrURL=$row['AttrURL'];
            $iRSSID=$row['RSSID'];
            $sRSSImage=$row['RSSImage'];
            
                     
            $sDARSS=$sDARSS.'oDARSS['.$iCnt.']= new Object();'
            ."oDARSS[".$iCnt."]['RSSID']='".fTidyJSON($iRSSID,1)."';"
            ."oDARSS[".$iCnt."]['Title']='".fTidyJSON($sTitle,1)."';"
            ."oDARSS[".$iCnt."]['Description']='".fTidyJSON($sDescription,1)."';"
            ."oDARSS[".$iCnt."]['AttrAuthor']='".fTidyJSON($sAttrAuthor,1)."';"
            ."oDARSS[".$iCnt."]['AttrURL']='".fTidyJSON($sAttrURL,1)."';"
            ."oDARSS[".$iCnt."]['FeedURL']='".fTidyJSON($sFeedURL,1)."';"
            ."oDARSS[".$iCnt."]['RSSImage']='".fTidyJSON($sRSSImage,1)."';"
            ."oDARSS[".$iCnt."]['RSSCOLS']='".fTidyJSON($sSmartCodeOptions,1)."';";
            $iCnt=$iCnt+1;
        }
        echo '<div class="WaitNote">One moment while we retrieve your feeds sites...</div>';
        echo '<div id="divRSSJSONDoc" style="display:none;">'.$sDARSS.'</div>';
        echo '</div>';
    }
    echo '</div>';
?>   

