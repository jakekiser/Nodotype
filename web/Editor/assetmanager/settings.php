<?php
$iTennantId=$_COOKIE["tnt"];
$UserId=$_COOKIE["CCrdlUID"];
$bReturnAbsolute=false;

$sBaseVirtual0='/DZ/'.$iTennantId.'/w';  //Assuming that the path is http://yourserver/Editor/assets/ ("Relative to Root" Path is required)

//$sBase0="c:/inetpub/wwwroot/Editor/assets"; //The real path
$sBase0='/home/content/20/7307520/html/DZ/'.$iTennantId.'/w'; //example for Unix server
$sName0="Web Assets";

$sBaseVirtual1='/DZ/'.$iTennantId.'/f';
$sBase1='/home/content/20/7307520/html/DZ/'.$iTennantId.'/f';
$sName1="Gallery Assets";

$sBaseVirtual2="";
$sBase2="";
$sName2="";

$sBaseVirtual3="";
$sBase3="";
$sName3="";
?>