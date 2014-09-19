<?
    $Persist_UserId=$_COOKIE["CCrdlUID"];
    $iTennantId=$_COOKIE["tnt"];
// Check Credentials

    $sFileName='';
    $sRelativePath='';
    $iFileId=0;
    $sAlternateCSS='';
	
    $iFileId=$_GET['fid'];
    $SQL='select RelativePath, PhysicalPath, FileName, Type from DA_Files f'
    .' where f.fileid=\''.$iFileId.'\' and f.TennantId=\''.$iTennantId.'\'';
    $result = mysql_query($SQL);
    $num_rows = mysql_num_rows($result);
    if ( $num_rows >0 ){   
        while($row = mysql_fetch_array($result)) {
            $sFileName=$row['FileName'];
            $sRelativePath=$row['RelativePath'];
            $sPhysicalPath=$row['PhysicalPath'];
            $iType=$row['Type'];
        }
    }        

    // Get File content
    $sFullFileName='/home/content/20/7307520/html/DZ/'.$iTennantId.'/f/'.$sFileName;
    $sContent=fGetFileContent($sFullFileName);
    
    if ($iType==10) {
       //$sFullCSSContent=fCompileCSSContent($iTennantId);
    }
		
    echo '<div id="divCSSEditor">';
    echo '  <div class="xMenu">';
    echo '      <div id="SaveBtn" class="Save" title="Save File"><a href="javascript:void(0);" onclick="document.getElementById(\'FileEditorButton\').click();"><img src="/images/spacer.gif"/></a></div>';
    echo '      <br class="ClearFloat">';
    echo '  </div>';
    echo '  <h2>File Editor</h2>';
    echo '  <form name="formFileEditor" id="formFileEditor" method="post" onsubmit="return(fSaveBasicPage(event,\'formFileEditor\',\'Updated\',\'CallBackEditor\'))">';
    echo '      <input type="hidden" class="xf_UpdInd" name="UpdInd" id="FileUpdInd"/>';
    echo '      <input type="hidden" name="formModeInd" id="SIformMode" value="OXPFILEEDITOR"/>';
    echo '      <input type="hidden" class="xf_UpdMode" name="formMode"/>';
    echo '      <input type="hidden" name="TennantId" id="TennantId" value="'.$iTennantId.'"/>';
    echo '      <input type="hidden" name="CallBackEditor" id="CallBackEditor" value="fEditFile('.$iFileId.');"/>';
    echo '      <input type="hidden" name="fid" id="fid" value="'.$iFileId.'"/>';
    echo '      <input type="hidden" name="FullName" id="FullName" value="'.$sFullFileName.'"/>';
    echo '      <input type="hidden" name="FullCSSContent" id="FullCSSContent" value="'.$sFullCSSContent.'"/>';
    echo '      <input type="hidden" class="StdInput" name="FileName" id="FileName" value="'.$sFileName.'"/>';
    echo '      <input type="hidden" class="StdInput" name="FileType" id="FileType" value="'.$iType.'"/>';
    
    
    echo '      <div class="StdRow">';
    echo '          <span class="StdLabel">File Name:</span>';
    echo '          <span class="StdInput">'.$sFileName.'</span>';
    echo '          <br class="ClearFix"/>';
    echo '      </div>';
    echo '      <div id="FileContentContainer" class="StdRow">';
    echo '          <textarea name="FileContent" id="FileContent">'.$sContent.'</textarea>';
    echo '      </div>';
    echo '      <div class="StdRow Footer Action">';
    echo '          <input id="FileEditorButton" type="submit" value="Submit" class="ActionButton">';
    echo '      </div>';
    echo '  </form>';
    echo '</div>';

function fCompileCSSContent($iTennantId) {
    $sFullCSSContent='';
    $iFileId=$_GET['fid'];
    $SQL='select f.RelativePath, f.PhysicalPath, f.FileName, f.Type from DA_Files f'
    .' left join DA_Order o on o.EntityId=f.FileId and o.Type=10'
    .' where f.TennantId=\''.$iTennantId.'\' and f.Type=10;';
    $result = mysql_query($SQL);
    $num_rows = mysql_num_rows($result);
    if ( $num_rows >0 ){   
        while($row = mysql_fetch_array($result)) {
            $sFileName=$row['FileName'];
            
            //Open File and process
            $sFullFileName='/home/content/20/7307520/html/DZ/'.$iTennantId.'/f/'.$sFileName;
            $sFullCSSContent=$sFullCSSContent.fGetFileContent($sFullFileName);
        }
    }
    return $sFullCSSContent;
}    
function fGetFileContent($sFullFileName) {

    //Check to see if this is a new file
    if (strlen($sFullFileName)<1) {
        exit;
    }
    
    // Open file and get data to return
    $EditFile = $sFullFileName;
    $fh = fopen($EditFile, 'r') or die('can\'t open file');
    if ($fh) {
        while (($buffer = fgets($fh, 4096)) !== false) {
            $sContent=$sContent.$buffer;
        }
        if (!feof($fh)) {
            echo "Error: unexpected fgets() fail\n";
        }
    }    
    
    return $sContent;
    fclose($fh);
}     
?>