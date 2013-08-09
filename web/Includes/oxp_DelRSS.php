<?php

    $iRSSID=$_GET['RSSID'];
    $iType=$_GET['Type'];
    $SQL='call spDADelRSS (\''.$TennantId.'\',\''.$UserId.'\',\''.$iRSSID.'\');';
    echo $SQL;
    $result = mysql_query($SQL);
    
    // Delete File
?>
