<?php
    $FileId=$_GET['FileId'];
    $Type=$_GET['Type'];
    $SQL='call spDADelFile (\''.$TennantId.'\',\''.$UserId.'\',\''.$FileId.'\',\''.$Type.'\');';
    $result = mysql_query($SQL);
    
    // Delete File
?>
