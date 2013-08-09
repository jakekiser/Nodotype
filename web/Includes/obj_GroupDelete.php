<?php
require '/Includes/XCRED.php';
    
$iTennantId=$_COOKIE["CCtnt"];
$iUserId=$Persist_UserId;
$iGroupId=$_GET['gid'];

    $SQL='call spDADelGroup ('
    .$iUserId.','
    .$iTennantId.','
    .$iGroupId.')';
    $result = mysql_query($SQL);
?>