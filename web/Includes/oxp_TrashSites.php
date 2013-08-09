<?php
    $Persist_UserId=$_COOKIE["CCrdlUID"];
    $PWDHash=$_COOKIE["CCrdl"];
    
    echo '<div class="RecycleBin TableRows">';
    echo '<h3>Site Recycle</h3>';
    $SQL='select t.TennantId, SiteTitle, ShortDesc, COALESCE(PageImageURL,\'\') as PageImageURL from DA_Tennant t'
    .' join DA_SiteDetails s on t.TennantId=s.TennantId'
    .' where t.UserId=\''.$Persist_UserId.'\' and t.Active=0'
    .' order by s.SiteTitle;';
    $result = mysql_query($SQL);
    $num_rows = mysql_num_rows($result);
    if ( $num_rows >0 ){
        while($row = mysql_fetch_array($result)) {    
            echo '<div class=StdRow id=Site_'.$row['TennantId'].'>';
            echo '  <div class="Controls">';
            echo '      <div title="Delete Site" class="Delete"><a href="javascript:fDelSite('.$row['TennantId'].');"><img src="/images/spacer.gif"></a></div>';
            echo '      <div title="Reinstate Site" class="Add"><a href="javascript:fReinstateSite('.$row['TennantId'].');"><img src="/images/spacer.gif"></a></div>';
            echo '      <br class="ClearFloat">';
            echo '  </div>';
            echo '  <div class="Title">'.$row['SiteTitle'].'</div>';
            echo '  <br class="ClearFloat">';
            echo '</div>';
        }
        
    } else {
        echo '<div class=InfoMsg>These are no sites in recycle bin</div>';
        
    }
    echo '</div>';
?>
