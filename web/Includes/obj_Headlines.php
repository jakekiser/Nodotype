<?php

    $iCnt=0;
    $iTennantId=$_GET['tnt'];
    if (strlen($iTennantId)<1) {
        $iTennantId=$_COOKIE["CCtnt"];
    }
    
    $sCloseDiv='';
    
    $SQL='(select HeadlineImage, HeadlineURL, Title, Author, AuthorImage, Priority from DA_Headlines where TennantId='.$iTennantId.' and Priority=1 order by rand() limit 1)'
    .' union ALL'
    .' (select HeadlineImage, HeadlineURL, Title, Author, AuthorImage, Priority from DA_Headlines where TennantId='.$iTennantId.' and Priority=2  order by rand() limit 4)'
    .' union ALL'
    .' (select HeadlineImage, HeadlineURL, Title, Author, AuthorImage, Priority from DA_Headlines where TennantId='.$iTennantId.' and Priority=3  order by rand() limit 2)'
    .' order by Priority, rand();';
    $result = mysql_query($SQL);
    $num_rows = mysql_num_rows($result);
    if ( $num_rows >0 ){   
        echo '<div class="divHeadLine"><div class=LeftPane>';
        $sCloseHeadlineLeft='</div>';
        while($row = mysql_fetch_array($result)) {    
            $sTitle=$row['Title'];
            $sHeadlineImage=$row['HeadlineImage'];            
            $sHeadlineURL=$row['HeadlineURL'];
            $sAuthor=$row['Author'];
            $sAuthorImage=$row['AuthorImage'];
            $iPriority=$row['Priority'];
            
            $sTitleDisplay='';
            if ($iPriority==2) $sTitleDisplay=$sTitle.', '.$sAuthor;
            
            if ($iPriority==3 && $iPriority!=$svPriority) {
                echo $sCloseHeadlineLeft;
                $sCloseDiv='';
                echo '</div><div class=RightPane>';
            }
            
            if ($iPriority!=$svPriority) echo $sCloseDiv.'<div class=Cont_'.$iPriority.'>';

            $sCloseDiv='</div>';
            $svPriority=$iPriority;
            
            
            echo '<div title="'.$sTitleDisplay.'" class="Container Priority'.$iPriority.' Box'.$iCnt.'">'
            .'<a target="_blank" href="'.$sHeadlineURL.'">'
            .'<div class=Inner>'
            .'<div class=Image><img src="'.$sHeadlineImage.'"/></div>'
            .'<div class=Details>'
            .'<div class=Author>'.$sAuthor.'</div>'
            .'<div class=Title>'.$sTitle.'</div>'
            .'</div></div></a>'
            .'<div class=AuthorImage><img src="'.$sAuthorImage.'"/></div>'
            .'</div>';
            $iCnt=$iCnt+1;
        }
        echo '</div></div><br class=ClearFloat />';
        echo '</div>';
    }

?>
