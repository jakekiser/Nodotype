<?php
    $Persist_UserId=$_COOKIE["CCrdlUID"];
    //$iTennantId=$Persist_UserId;
    $iTennantId=$_COOKIE["tnt"];
// Check Credentials
    
require 'XCRED.php';

// Auto update directories if not there
    $sFolder = '/home/content/20/7307520/html/DZ/'.$iTennantId;
    if(is_dir($sFolder)!=1) {
        mkdir($sFolder,0755);
    }
    $sFolder = '/home/content/20/7307520/html/DZ/'.$iTennantId.'/w';
    if(is_dir($sFolder)!=1) {
        mkdir($sFolder,0755);
    }
    $sFolder = '/home/content/20/7307520/html/DZ/'.$iTennantId.'/g';
    if(is_dir($sFolder)!=1) {
        mkdir($sFolder,0755);
    }
    $sFolder = '/home/content/20/7307520/html/DZ/'.$iTennantId.'/f';
    if(is_dir($sFolder)!=1) {
        mkdir($sFolder,0755);
    }  
    
    $sFolder='../DZ/'.$iTennantId.'/f';

//
// To see the PHP example in action, please do the following steps.
//
// 1. Open test/js/uploader-demo-jquery.js file and change the request.endpoint
// parameter to point to this file.
//
//  ...
//  request: {
//    endpoint: "../server/php/example.php"
//  }
//  ...
//
// 2. As a next step, make uploads and chunks folders writable.
//
// 3. Open test/jquery.html to see if everything is working correctly,
// the uploaded files should be going into uploads folder.
//
// 4. If the upload failed for any reason, please open the JavaScript console,
// if this does not help please read the excellent documentation we have for you.
//
// https://github.com/Widen/fine-uploader/blob/master/readme.md
//

// Include the uploader class
require_once 'qqFileUploader.php';

$uploader = new qqFileUploader();

// Specify the list of valid extensions, ex. array("jpeg", "xml", "bmp")
$uploader->allowedExtensions = array();

// Specify max file size in bytes.
$uploader->sizeLimit = 10 * 1024 * 1024;

// Specify the input name set in the javascript.
$uploader->inputName = 'qqfile';

// If you want to use resume feature for uploader, specify the folder to save parts.
$uploader->chunksFolder = 'chunks';

// Call handleUpload() with the name of the folder, relative to PHP's getcwd()
$result = $uploader->handleUpload($sFolder);

// To save the upload with a specified name, set the second parameter.
// $result = $uploader->handleUpload('uploads/', md5(mt_rand()).'_'.$uploader->getName());

// To return a name used for uploaded file you can use the following line.
$result['uploadName'] = $uploader->getUploadName();

header("Content-Type: text/plain");
echo json_encode($result);

// Save to XPage File System

$sTestJSON=json_encode($result);
if ($sTestJSON['success']==true) {
    $sFolder=  str_replace('..', '', $sFolder).'/';
    $sFileName=str_replace('\'','\'\'',$result['uploadName']);
    $sRelativePath=str_replace('\'','\'\'',$sFolder);
    $iFileType=str_replace('\'','\'\'',0);
    $sDescription=str_replace('\'','\'\'','');
    $iFileId=str_replace('\'','\'\'','');
    $ft=str_replace('\'','\'\'',$_GET['ft']);
    $FileSize=0;
    $SQL='call spDAInsUpdFile (\''.$iTennantId.'\',\''.$Persist_UserId.'\',\''.$sFileName.'\',\''.$sRelativePath.'\',\''.$sDescription.'\',\''.$ft.'\',\''.$iFileId.'\',\''.$FileSize.'\');';
    $result = mysql_query($SQL);
}
?>