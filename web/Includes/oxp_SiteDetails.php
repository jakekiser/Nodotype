<?
    $Persist_UserId=$_COOKIE["CCrdlUID"];
    $iMode=15; // iCO File Type
    if ($bDF!='1') {
        $sDisplayForm='display:none;';
    } else {
        $iTennantId=0;
        $sCallBack='self.location=\'/OXP_TENNANTLIST\'';
    }
    
    $iSiteType=0;
    $SQL='select s.SiteTitle, s.TrackingCode, s.Favicon, s.PublicSite+0 as PublicSite, s.ShortDesc, s.XURL, s.PageImageURL, t.Type from DA_SiteDetails s'
    .' join DA_Tennant t on t.TennantId=s.TennantId'
    .' where s.TennantId=\''.$iTennantId.'\';';
    $result = mysql_query($SQL);
    $num_rows = mysql_num_rows($result);
    if ( $num_rows >0 ){   
        while($row = mysql_fetch_array($result)) {
            $sSiteTitle=$row['SiteTitle'];
            $sTrackingCode=$row['TrackingCode'];
            $sFavicon=$row['Favicon']; 
            $bPublicSite=$row['PublicSite'];
            $sShortDesc=$row['ShortDesc'];
            $sXURL=$row['XURL'];
            $sPageImageURL=$row['PageImageURL'];
            $iSiteType=$row['Type'];
        }
    }
    
    // Setup Class for Type
    $iSiteType0_CSS='';
    $iSiteType1_CSS='';
    $iSiteType2_CSS='';
    switch($iSiteType) {
        case 0:
            $iSiteType0_CSS=' Selected';
            break;
        case 1:
            $iSiteType1_CSS=' Selected';
            break;
        case 2:
            $iSiteType2_CSS=' Selected';
            break;
        default:
            $iSiteType0_CSS=' Selected';
            break;        
    }
    if (strlen($bPublicSite)<1) {
        $bPublicSite=1;
    }
    
    $PublicSiteChecked='';
    if ($bPublicSite==1) {
        $PublicSiteChecked=' checked ';
    }
//
?><div id="SiteDetails" style="<? echo $sDisplayForm ?>" class="XPFuncs">
    <div class="xMenu">
        <div title="All XPage SItes" class="List"><a href="/OXP_TENNANTLIST?tnt=<? echo $iTennantId ?>"><img src="/images/spacer.gif"></a></div>
        <div id="SaveBtn" class="Save" title="Save Site Details"><a href="javascript:void(0);" onclick="document.getElementById('SiteDetailButton').click();"><img src="/images/spacer.gif"/></a></div>
        <div id="ViewBtn" class="View" title="View your OneXPages"><a target="_blank" href="/oxp?tnt=<? echo $iTennantId ?>&editmode=1"><img src="/images/spacer.gif"/></a></div>
        <br class="ClearFloat">
    </div>     
    <h2>Site Details</h2>
    <form name="formSiteDetails" id="formSiteDetails" method="post" action="/OXP_PAGELIST" onsubmit="return(fValidateForm(event,this,1))">
        <input type="hidden" class="xf_UpdInd" name="UpdInd" id="OneXUpdInd"/>
        <input type="hidden" name="formModeInd" id="SIformMode" value="OXP_SiteDetails"/>
        <input type="hidden" class="xf_UpdMode" name="formMode"/>
        <input type="hidden" name="TennantId" id="TennantId" value="<? echo $iTennantId ?>"/>
        <input type="hidden" name="CallBack" id="CallBack" value="<?echo $sCallBack ?>"/>
        <input type="hidden" name="SiteType" id="SDSiteType" value="<?echo $iSiteType ?>"/>
        <div class="StdRow">
            <div class="StdLabel">* Name of Site</div>
            <div class="StdInput">
                <input type="text" class="xf_Alpha xf_Required xfMaxSize_500" name="SiteTitle" id="SiteTitle" value="<? echo $sSiteTitle ?>"/>
            </div>
            <br class="ClearFloat"/>            
        </div>
        <div class="StdRow" id="divRowProclaimURL">
            <div class="StdLabel">* Proclaim your XURL</div>
            <div class="StdInput">
                <input type="text" class="xf_Alpha xfMaxSize_255" name="XURL" id="XURL" value="<? echo $sXURL ?>"/>
            </div>
            <br class="ClearFloat"/>            
        </div>        
       <div class="StdRow">
            <div class="StdLabel">Short Description (500 chars)</div>
            <div class="StdInput">
                <textarea name="ShortDesc" id="ShortDesc"><? echo $sShortDesc ?></textarea>
            </div>
            <br class="ClearFloat"/>            
        </div>
        <div class="StdRow"><a class="Advanced" href="javascript:void(0);" onclick="$( '#divSDAdvanced' ).toggle( 'slide', 100 );">Advanced</a></div>
        <div id="divSDAdvanced" style="display:none;">
            <div class="StdRow">
                <div class="StdLabel">Favicon</div>
                <div class="StdInput">
                    <input type="text" name="Favicon" id="Favicon" class="xfMaxSize_255" value="<? echo $sFavicon ?>"/>
                    <div id="divICOFiles"></div>
                </div>
                <br class="ClearFloat"/>
            </div>
            <div class="StdRow">
                <div class="StdLabel">XPage Directory Image</div>
                <div class="StdInput">
                    <input type="text" name="PageImageURL" id="PageImageURL" class="xfMaxSize_255" value="<? echo $sPageImageURL ?>"/>
                    <div id="divXDirFiles"></div>
                </div>
                <br class="ClearFloat"/>
            </div>        
            <div class="StdRow">
                <div class="StdLabel">Tracking Code (Google Analytics, Marketo Munchkin, etc...)</div>
                <div class="StdInput">
                    <textarea name="TrackingCode" id="TrackingCode"><? echo $sTrackingCode ?></textarea>
                </div>
                <br class="ClearFloat"/>            
            </div>
            <div class="StdRow">
                <input type="checkbox" name="PublicSite" <? echo $PublicSiteChecked ?> id="PublicSite" value="<? echo bPublicSite ?>" onclick="fCheckVal(this)"/>&nbsp;<span>Show on OneXPage public portal</span>
            </div>
        </div>
        <div class="SiteTypesContainer">
            <div class="SiteTypes">
                <div onclick="fSelectSiteType(0, this)" id="SiteType_0" class="Outer <?echo $iSiteType0_CSS ?>""><div class="Inner">Site</div></div>
                <div onclick="fSelectSiteType(1, this)" id="SiteType_1" class="Outer <?echo $iSiteType1_CSS ?>""><div class="Inner">Community</div></div>
                <div onclick="fSelectSiteType(2, this)" id="SiteType_2" class="Outer <?echo $iSiteType2_CSS ?>""><div class="Inner">Blog</div></div>
                <br class="ClearFloat"/>
            </div>
        </div>
        <div class="StdRow Footer Action">
            <input id="SiteDetailButton" type="submit" value="Submit" class="ActionButton">
        </div>            
    </form>
    <input type="hidden" id="oxpFSType" name="oxpFSType" value="<? echo $iMode ?>"/>
    <div id="NewFile">    
        <form name="formFileSetup" id="formFileSetup" method="post" onsubmit="return(fSaveBasicPage(event,this.id,'Added'));">
            <input type="hidden" class="xf_UpdInd" name="UpdInd" id="CSSUpdInd"/>
            <input type="hidden" name="formModeInd" id="SIformMode" value="OXP_ICO"/>
            <input type="hidden" class="xf_UpdMode" name="formMode"/>
            <input type="hidden" name="FileType" value="<? echo $iMode ?>"/>
            <input type="hidden" name="FileId" value="-1"/>
            <input type="hidden" name="CallBackICO" id="CallBackICO" value=""/>
            <input type="hidden" name="TennantId" id="TennantId" value="<? echo $iTennantId ?>"/>
        </form>
    </div>      
</div>
