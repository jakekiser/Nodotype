<?php
    //Build JSON Documentation
    $sDADoc='var oDANav=Array();';
    $iCnt=0;    
    $SQL=' select p.PageId, p.Title, n.Active+0 as Active, o.Type, o.OrderNum '
    .' from DA_Pages p '
    .' left join DA_Order o on o.EntityId=p.PageId and o.Type=0 '
    .' left join DA_Nav n on n.PageId=p.PageId '
    .' where p.TennantId=\''.$iTennantId.'\' and p.active is not null'
    .' order by Type, OrderNum, Title';
    $result = mysql_query($SQL);
    $num_rows = mysql_num_rows($result);
    if ( $num_rows >0 ){   
        while($row = mysql_fetch_array($result)) {
            $iPageId=$row['PageId'];
            $sTitle=$row['Title'];
            $bActive=$row['Active'];
            $iSortType=$row['Type'];
         
            $sDADoc .= "oDANav[".$iCnt."]= new Object();";
            $sDADoc .= "oDANav[".$iCnt."]['PageId']='".fTidyJSON($iPageId,1)."';";
            $sDADoc .= "oDANav[".$iCnt."]['Title']='".fTidyJSON($sTitle,1)."';";
            $sDADoc .= "oDANav[".$iCnt."]['Active']='".fTidyJSON($bActive,1)."';";
            $sDADoc .= "oDANav[".$iCnt."]['SortType']='".fTidyJSON($iSortType,1)."';";
            $iCnt=$iCnt+1;
        }
    }
    echo '<div id="divJSONDoc" style="display:none;">'.$sDADoc.'</div>';
    echo '<script>';
    echo 'if (window.addEventListener) ';
    echo '  window.addEventListener("load",function() {fBuildNav(1,0);});';
    echo 'else if (window.attachEvent)';
    echo '  window.attachEvent(\'onload\', function() {fBuildNav(1,0)});';
    echo '</script>';
?>
