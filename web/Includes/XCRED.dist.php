<?php
//Variables for connecting to your database.
//These variable values come from your hosting account.
$hostname = "";
$username = "";
$dbname = "";

//These variable values need to be changed by you before deploying
$password = "";
        
//Connecting to your database
mysql_connect($hostname, $username, $password) OR DIE ("Unable to 
connect to database! Please try again later.");
mysql_select_db($dbname);

// Load basio variables
$Persist_UserId=$_COOKIE["CCrdlUID"];
$Persist_LoggedInTennantId=$_COOKIE["CCtnt"];
    
global $cr_FirstName, $cr_LastName, $cr_CompanyName, $cr_Email, $cr_Addr1, $cr_Addr2, $cr_Addr3, $cr_City, $cr_State, $cr_PostalCode,$cr_Country, $cr_PhotoURL;
//echo '$Persist_UserId'.$Persist_UserId;
if (function_exists('fBuildPersistInfo')) {
    fBuildPersistInfo($Persist_UserId);
}
?>
