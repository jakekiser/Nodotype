<?
$A=new BuildClass();

global $Persist_UserId, $Persist_LoggedInTennantId, $formModeInd;

    $iTennantId=$_COOKIE["tnt"];
    
    $formModeInd=str_replace('-',' ',$formModeInd);
    
    switch (strtoupper($formModeInd)) {
        case 'TENNANTSIGNIN':
            $iTennantId=$_POST["TennantId"];
            
        case 'SIGNIN':
        case 'TENNANTSIGNIN':
            $PWDHash=sha1(strtolower($_POST["eMail"]).$_POST["Password"]);
            $RememberMe=$_POST["RememberMe"];
            $RM_Email=$_POST["eMail"];
            $RM_PWD=$_POST["Password"];
            
            $EditMode=$_GET['EditMode'];
            if (strlen($EditMode)<1) $EditMode=0;            
            
            $TennantId=$_POST["TennantId"];
            $sFunction=strtoupper($formModeInd);
            if (strtoupper($formModeInd)=='SIGNIN') {
                $sStatType=0;
            } else {
                $sStatType=1;
            }
        
            if ($_POST["UpdInd"]=='1' || $_POST["SIUpdInd"]=='1') {
                $SQL='call spDAValidateCredentials (\''.$PWDHash.'\',\''.$TennantId.'\',\''.$sStatType.'\',\''.$sFunction.'\');';
                $result = mysql_query($SQL);
                $num_rows = mysql_num_rows($result);
                if ( $num_rows < 1 ){
                    if (strtoupper($formModeInd)=='SIGNIN') {
                        echo '<div class=InfoMsg>We could not find a profile for you based on your credentials, please try again.</div>';
                    } else {
                        header ('Location: /oxp?tnt='.$iTennantId.'&EditMode='.$EditMode.'&m=_200');                        
                    }
                } else {
                    while($row = mysql_fetch_array($result)) {
                        $Persist_UserId=$row['UserId'];
                    }                    
                    // Save Cookie w/$PWDHash
                    setcookie("CCrdlUID", $Persist_UserId, time()+3600);
                    setcookie("CCrdl", $PWDHash, time()+3600);
                    
                    setcookie('RME_', '', time() - 3600);
                    setcookie('RMP_', '', time() - 3600);                    
                    
                    //Save Cookies for memory
                    if ($RememberMe=='1') {
                        setcookie("RME_", $RM_Email, time() + (20 * 365 * 24 * 60 * 60));
                        setcookie("RMP_", $RM_PWD, time() + (20 * 365 * 24 * 60 * 60));
                        $RM_Email='';
                        $RM_PWD='';
                    }
                    //Go to destination
                    if (strtoupper($formModeInd)=='SIGNIN') {
                        header ('Location: /OXP_TENNANTLIST');
                    } else {
                        setcookie("CCtnt", $iTennantId, time()+3600);
                        header ('Location: /oxp?tnt='.$iTennantId.'&EditMode='.$EditMode);
                    }
                }
            }
            break;
        case 'NEWACCT':
            $LastName=$_POST["LastName"];
            $FirstName=$_POST["FirstName"];
            $CompanyName=$_POST["CompanyName"];
            $Email=$_POST["eMail"];
            $Permanent=$_POST["Permanent"];
            $PWDHash=sha1($_POST["eMail"].$_POST["Password"]);
            $Source=$_POST["Source"];
            $Context='';
            
            if ($_POST["UpdInd"]=='1') {
                $SQL='call spDAInsUser (\''.$LastName.'\',\''.$FirstName.'\',\''.$Email.'\',\''.$CompanyName.'\',\''.$Source.'\',\''.$Context.'\',b\''.$Permanent.'\',\''.$PWDHash.'\');';
                $result = mysql_query($SQL);
                //$num_rows = mysql_num_rows($result);
                //if ( $num_rows >0 ){
                
                    // Save Cookie w/$PWDHash
                    setcookie("CCrdlUID", $Persist_UserId, time()+3600);
                    setcookie("CCrdl", $PWDHash, time()+3600);
                    
                    setcookie('RME_', '', time() - 3600);
                    setcookie('RMP_', '', time() - 3600);
                    
                    //Go to destination
                    header ('Location: /OXP_TENNANTLIST');
                //}
            }
            break;
            
        case 'EXISTINGACCT':
            $LastName=$_POST["LastName"];
            $FirstName=$_POST["FirstName"];
            $Phone=$_POST["PhoneArea"];
            $Ext=$_POST["Ext"];
            $PhoneArea=$_POST["PhoneArea"];
            //$AddlEmail=$_POST["AddleMail"];
            $Addr1=$_POST["Addr1"];
            $Addr2=$_POST["Addr2"];
            $Addr3=$_POST["Addr3"];
            $City=$_POST["City"];
            $State=$_POST["State"];
            $Country=$_POST["Country"];
            $PostalCode=$_POST["PostalCode"];
            $CompanyName=$_POST["CompanyName"];
            $ProfUserId=$_POST["ProfUserId"];
            $Email=$_POST["eMail"];
            $sPhotoURL=$_POST["PhotoURL"];
            $Context='';
        
            if ($_POST["UpdInd"]=='1') {
                $SQL='call spDAInsUpdUser (\''.$ProfUserId.'\',\''.$LastName.'\',\''.$FirstName.'\',\''.$CompanyName.'\',\''.$Addr1.'\',\''.$Addr2.'\',\''.$Addr3.'\',\''.$City.'\',\''.$State.'\',\''.$Country.'\',\''.$PostalCode.'\',\''.$PhoneArea.'\',\''.$Phone.'\',\''.$Ext.'\',\''.$sPhotoURL.'\');';
                $result = mysql_query($SQL);
                //exit; // Ajax processing - we can finish early
            }
            break;            
            
            
        case 'CONTACT':
            $LastName=$_POST["LastName"];
            $FirstName=$_POST["FirstName"];
            $CompanyName=$_POST["CompanyName"];
            $Email=$_POST["eMail"];
            $Permanent='0';
            $PWDHash='';
            $Source=$_POST["Source"];
            $Context=$_POST["Context"];        
        
            if ($_POST["UpdInd"]=='1') {
                $SQL='call spDAInsUser (\''.$LastName.'\',\''.$FirstName.'\',\''.$Email.'\',\''.$CompanyName.'\',\''.$Source.'\',\''.$Context.'\',b\''.$Permanent.'\',\''.$PWDHash.'\');';
		$result = mysql_query($SQL);
		echo '<div class=InfoMsg>Thank you '.$FirstName.', we have recieved your information and will be in contact with you shortly</div>';
            }            
            break;
         
        case 'ONEXPAGE':
            $iPageId="New Page";
    
            if (isset($_POST["txtContent"])) {
                $sPageHTML=stripslashes($_POST['txtContent']); /*** remove (/) slashes ***/
                $sOptClass=str_replace('\'','\'\'',$_POST['OptClass']);
                $sPageHTML=str_replace('\'','\'\'',encodeHTML($sPageHTML));
                $sName= str_replace('\'','\'\'',$_POST['Name']);
                $sTitle=str_replace('\'','\'\'',$_POST['Title']);
                $iType=str_replace('\'','\'\'',$_POST['Type']);
                $bInlineEdit=str_replace('\'','\'\'',$_POST['InlineEdit']);
                $iPageId=str_replace('\'','\'\'',$_POST['PageId']);
                $iDisplayMode=str_replace('\'','\'\'',$_POST['DisplayMode']);
                $iTennantId==str_replace('\'','\'\'',$_POST['TennantId']);
                $SQL='call spDAInsUpdPageContent (\''.$sTitle.'\',\''.$sPageHTML.'\',\''.$iPageId.'\',\''.$iTennantId.'\',\''.$Persist_UserId.'\',\''.$iType.'\',\''.$bInlineEdit.'\',\''.$iDisplayMode.'\',\''.$sOptClass.'\');';
                $result = mysql_query($SQL);
                $num_rows = mysql_num_rows($result);
                if ( $num_rows >0 ){                 
                    while($row = mysql_fetch_array($result)) {
                        $iPageId=$row['PageId'];
                    }
                }
                header ('Location: /ONEXPAGE?pid='.$iPageId.'&m=_102');
                break;
            }
    
        case 'OXP_CSS':
        case 'OXP_ICO':
            $sFileName=str_replace('\'','\'\'',$_POST['FileName']);
            $sRelativePath=str_replace('\'','\'\'',$_POST['RelativePath']);
            $sTennantId=str_replace('\'','\'\'',$_POST['TennantId']);
            $iFileType=str_replace('\'','\'\'',$_POST['FileType']);
            $sDescription=str_replace('\'','\'\'',$_POST['Description']);
            $iFileId=str_replace('\'','\'\'',$_POST['FileId']);
            $FileSize=0;
            $SQL='call spDAInsUpdFile (\''.$sTennantId.'\',\''.$Persist_UserId.'\',\''.$sFileName.'\',\''.$sRelativePath.'\',\''.$sDescription.'\',\''.$iFileType.'\',\''.$iFileId.'\',\''.$FileSize.'\');';
            $result = mysql_query($SQL);  
            break;
        
        case 'OXP_RSS':
            $sTitle=str_replace('\'','\'\'',$_POST['Title']);
            $sDescription=str_replace('\'','\'\'',$_POST['Description']);
            $sAttrAuthor=str_replace('\'','\'\'',$_POST['AttrAuthor']);
            $sAttrURL=str_replace('\'','\'\'',$_POST['AttrURL']);
            $sFeedURL=str_replace('\'','\'\'',$_POST['FeedURL']);
            $iRSSID=str_replace('\'','\'\'',$_POST['RSSID']);
            $sTennantId=str_replace('\'','\'\'',$_POST['TennantId']);
            $sRSSImage=str_replace('\'','\'\'',$_POST['RSSImage']);
            $SQL='call spDAInsUpdRSS (\''.$sTennantId.'\',\''.$Persist_UserId.'\',\''.$iRSSID.'\',\''.$sTitle.'\',\''.$sDescription.'\',\''.$sFeedURL.'\',\''.$sAttrAuthor.'\',\''.$sAttrURL.'\',\''.$sRSSImage.'\');';
            echo $SQL;
            $result = mysql_query($SQL);  
            break;        
        
        case 'OXP_PAGEVIEW':
        case 'OXP':
            $iTennantId=str_replace('\'','\'\'',$_POST['XPG_TennantId']);
            //$sAllHTML=str_replace("'","''",$_POST['XPG_HTML']);
            $sAllIds=stripslashes($_POST['XPG_IDS']);
            $sAllHTML=stripslashes($_POST['XPG_HTML']);
            $sAllHTML=str_replace('\'','\'\'',encodeHTML($sAllHTML));
            $sAllHTML=preg_replace("/\s+/", " ", $sAllHTML);
            $SQL='call spDAUpdInlinePageContent (\''.$iTennantId.'\',\''.$Persist_UserId.'\',\''.$sAllHTML.'\',\''.$sAllIds.'\',\'\');';
            $result = mysql_query($SQL);  
            //header ('Location: /OXP?tnt='.$iTennantId.'&EditMode=1&m=_107');
            break;        
        
        case 'OXP_SORTFILES':
            $iTennantId= str_replace('\'','\'\'',$_POST['TennantId']);
            $sSortArray= str_replace('\'','\'\'',$_POST['SortArray']);
            $iSortType= str_replace('\'','\'\'',$_POST['xf_SortType']);
            $SQL='call spDAOrderFileEntity (\''.$iTennantId.'\',\''.$iSortType.'\',\''.$sSortArray.'\');';
            $result = mysql_query($SQL);  
            //header ('Location: /OXP_PAGELIST?m=_103');
            break;        
        
        case 'OXP_SITEDETAILS':
            $iTennantId= str_replace('\'','\'\'',$_POST['TennantId']);
            $SiteTitle= str_replace('\'','\'\'',$_POST['SiteTitle']);
            $sXURL= str_replace('\'','\'\'',$_POST['XURL']);
            $sFavicon= str_replace('\'','\'\'',$_POST['Favicon']);
            $sPageImageURL= str_replace('\'','\'\'',$_POST['PageImageURL']);
            $sTrackingCode=stripslashes($_POST['TrackingCode']);
            $sTrackingCode=str_replace('\'','\'\'',encodeHTML($sTrackingCode));
            $sTrackingCode=preg_replace("/\s+/", " ", $sTrackingCode);            
            
            $bPublicSite=str_replace('\'','\'\'',$_POST['PublicSite']);
            $sShortDesc=str_replace('\'','\'\'',$_POST['ShortDesc']);
            $iSiteType=str_replace('\'','\'\'',$_POST['SiteType']);
            if (strlen($bPublicSite)<1) {
                $bPublicSite='1';
            }
            $SQL='call spDAInsUpdSiteDetails (\''.$iTennantId.'\',\''.$Persist_UserId.'\',\''.$SiteTitle.'\',\''.$sShortDesc.'\',\''.$sFavicon.'\',\''.$sTrackingCode.'\',\''.$bPublicSite.'\',\''.$sXURL.'\',\''.$sPageImageURL.'\',\''.$iSiteType.'\');';
            $result = mysql_query($SQL);  
                       
            break;
            
        case 'TENNANTSIGNOUT':
            break;
            
        case 'OXP':
            $sXURL=$_GET['XURL'];
            IF (strlen($sXURL)>0) {
                $SQL='select TennantId from DA_SiteDetails s where s.XURL=\''.$sXURL.'\'';
                $result = mysql_query($SQL);  
                $num_rows = mysql_num_rows($result);
                if ( $num_rows >0 ){         
                    while($row = mysql_fetch_array($result)) {    
                        $iTennantId=$row['TennantId'];
                    }
                }
                else {
                  header ('Location: ?m=_105');
                }
            }
            break;
            
        case 'OXP_HEADLINE':
            $iTennantId=$_POST['TennantId'];
            $iHeadlineId=$_POST['HeadlineId'];
            $sTitle=$_POST['Title'];
            $sDescription=$_POST['Description'];
            $sAuthor=$_POST['Author'];
            $sAuthorURL=$_POST['AuthorURL'];
            $sAuthorImage=$_POST['AuthorImage'];
            $sHeadlineURL=$_POST['HeadlineURL'];
            $sHeadlineImage=$_POST['HeadlineImage'];
            $iPriority=$_POST['Priority'];
            $sStartDate=$_POST['StartDate'];
            $sEndDate=$_POST['EndDate'];
            
            $SQL='call spDAInsUpdHeadlines (\''
                .$iTennantId.'\',\''
                .$Persist_UserId.'\',\''
                .$iHeadlineId.'\',\''
                .$sTitle.'\',\''
                .$sDescription.'\',\''
                .$sAuthor.'\',\''
                .$sAuthorURL.'\',\''
                .$sAuthorImage.'\',\''
                .$sHeadlineURL.'\',\''
                .$sHeadlineImage.'\',\''
                .$iPriority.'\',\''
                .$sStartDate.'\',\''
                .$sEndDate.'\')';
            $result = mysql_query($SQL);
            break; 
    
        
        case 'OXPFILEEDITOR':
            $sFileName=$_POST['FullName'];
            $iFid=$_POST['fid'];
            $sFileContent=$_POST['FileContent'];
            $iFileType=$_POST['FileType'];
            $sFullCSSContent=$_POST['FullCSSContent'];
            
            $fh = fopen($sFileName, 'w') or die('can\'t open file');
            

            $sFileContent=  str_replace('\\','',$sFileContent);

            /*Let's make sure the file exists and is writable first.*/
            if (is_writable($sFileName)) {
                if (!$fh = fopen($sFileName, 'a')) {
                    echo "Cannot open file ($sFileName)";
                exit;
            }

            // Write $somecontent to our opened file.
            if (fwrite($fh, $sFileContent) === FALSE) {
                echo "Cannot write to file ($sFileName)";
                exit;
            }

           fclose($fh);
           
           if ($iFileType==10) {
               $sFileName=  str_replace($_POST['FileName'], 'DIGIAPOLIS_Tennant_Full.css', $sFileName);
               $fh = fopen($sFileName, 'w') or die('can\'t open file');
            
                if (is_writable($sFileName)) {
                    if (!$fh = fopen($sFileName, 'a')) {
                        echo "Cannot open file ($sFileName)";
                    exit;
                }

                  // Write $somecontent to our opened file.
                    if (fwrite($fh, $sFullCSSContent) === FALSE) {
                        echo "Cannot write to file ($sFileName)";
                        exit;
                    }

                    fclose($fh);               
               }
           }

           } else {
                echo "The file $filename is not writable";
            }
            
            
            break;            
    }
?>