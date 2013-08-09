<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <style>
    body{font:11px verdana,arial,sans-serif;}
    a{color:#0000cc;font-size:xx-small;}
  </style>

  <!-- STEP 1: Include the Editor js file -->
  <script language=JavaScript src='../scripts/innovaeditor.js'></script>

</head>
<body>

<?php
    
    if ($_POST["UpdInd"]="1" && isset($_POST["txtContent"])) {
        $sContent=stripslashes($_POST['txtContent']); /*** remove (/) slashes ***/
        $sContent=encodeHTML($sContent);
    }
?>

<form method="post" action="default.php" id="Form1">
    <input type="hidden" name="UpdInd" id="UpdInd"/>
    <div class="StdRow">
        <span class="StdLabel">Name</span>
        <span class="StdInput"><input type="text" name="Name" id="Name"/>
        <br class="ClearFloat"/>    
    </div>
    <div class="StdRow">
        <span class="StdLabel">Title</span>
        <span class="StdInput"><input type="Title" name="Title" id="Title"/>
        <br class="ClearFloat"/>    
    </div>    
    <textarea id="txtContent" name="txtContent" rows=4 cols=30></textarea>
    <script> //STEP 2: Replace the textarea (txtContent)
        var oEdit1 = new InnovaEditor("oEdit1");
        oEdit1.REPLACE("txtContent");//Specify the id of the textarea here
    </script>
    <input class="ActionButton"type="submit" value="Submit"/>
</form>

<?php
if(isset($_POST["txtContent"]))
  {
  $sContent=stripslashes($_POST['txtContent']); /*** remove (/) slashes ***/
  echo $sContent;
  }
?>

</body>
</html>