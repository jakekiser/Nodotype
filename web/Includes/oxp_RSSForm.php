<?
    $sPostMsg='Added';
    $sTitle='';
    $sDescription='';
    $sFeedURL='';
    $sAttrAuthor='';
    $sAttrURL='';
    
    if ($iRSSID>0) {
        $sPostMsg='Updated';
        $SQL='select r.Title, r.Description, r.FeedURL, r.AttrAuthor, r.AttrURL, r.RSSImage from DA_RSS r'
        .' where r.RSSID='.$iRSSID;
        $result = mysql_query($SQL);
        $num_rows = mysql_num_rows($result);
        if ( $num_rows >0 ){   
            while($row = mysql_fetch_array($result)) {
                $sTitle=$row['Title'];
                $sDescription=$row['Description']; 
                $sFeedURL=$row['FeedURL'];
                $sAttrAuthor=$row['AttrAuthor'];          
                $sAttrURL=$row['AttrURL'];
                $sRSSImage=$row['RSSImage'];
            }
        }
            echo '<div class="xMenu">';
            echo '<div title="Save File" class="Save" id="SaveBtn">';
            echo '<a onclick="document.getElementById(\'RSSButton\').click();" href="javascript:void(0);">';
            echo '<img src="/images/spacer.gif"></a></div>';
            echo '<br class="ClearFloat">  </div>';
            echo '<h2>Edit RSS Rule</h2>';
    }
?>

        <form name="formRSSSetup" id="formRSSSetup" method="post" onsubmit="return(fSaveBasicPage(event,this.id,'<? echo $sPostMsg ?>'));">
            <input type="hidden" class="xf_UpdInd" name="UpdInd" id="RSSUpdInd"/>
            <input type="hidden" name="formModeInd" id="SIformMode" value="OXP_RSS"/>
            <input type="hidden" class="xf_UpdMode" name="formMode"/>
            <input type="hidden" name="RSSID" value="<? echo $iRSSID ?>"/>
            <input type="hidden" name="TennantId" value="<?echo $iTennantId ?>"/>
            <input type="hidden" name="CallBack" id="CallBack" value="fLoadWidget(2,'&tnt=<? echo $iTennantId ?>&Mode=<? echo $iMode ?>');"/>
            <input type="hidden" name="TennantId" id="TennantId" value="<? echo $iTennantId ?>"/>
            <div id="StdFormElems" class="StdFormElems" style="display:none;">
                <div class="StdRow">
                    <div class="StdLabel">* Title</div>
                    <div class="StdInput">
                        <input type="text" class="xf_Alpha xf_Required xfMaxSize_255" name="Title" id="Title" value="<? echo $sTitle ?>"/>
                    </div>
                    <br class="ClearFloat"/>            
                </div>
                <div class="StdRow">
                    <div class="StdLabel">* Feed URL</div>
                    <div class="StdInput">
                        <input type="text" class="xf_Alpha xf_Required xfMaxSize_255" name="FeedURL" id="FeedURL" value="<? echo $sFeedURL ?>"/>
                    </div>
                    <br class="ClearFloat"/>            
                </div>
                <div class="StdRow">
                    <div class="StdLabel">Description</div>
                    <div class="StdInput">
                        <textarea class="xf_Alpha xfMaxSize_500" name="Description" id="Description"><? echo $sDescription ?></textarea>
                    </div>
                    <br class="ClearFloat"/>            
                </div>
                <div class="StdRow">
                    <div class="StdLabel">RSS Default Image</div>
                    <div class="StdInput">
                        <input class="xf_Alpha" name="RSSImage" id="RSSImage" value="<? echo $sRSSImage ?>"/>
                        <div id="divRSSImageFiles"></div>
                    </div>
                    <br class="ClearFloat"/>            
                </div>                
                <div class="StdRow">
                    <div class="StdLabel">Attributed Author</div>
                    <div class="StdInput">
                        <input type="text" class="xf_Alpha xf_Required xfMaxSize_255" name="AttrAuthor" id="AttrAuthor" value="<? echo $sAttrAuthor ?>"/>
                    </div>
                    <br class="ClearFloat"/>            
                </div>
                <div class="StdRow">
                    <div class="StdLabel">Attributed Author URL</div>
                    <div class="StdInput">
                        <input type="text" class="xf_Alpha xf_Required xfMaxSize_255" name="AttrURL" id="AttrURL" value="<? echo $sAttrURL ?>"/>
                    </div>
                    <br class="ClearFloat"/>            
                </div>
                <div class="StdRow Footer Action">
                    <input type="submit" value="Submit" id="RSSButton"class="ActionButton">
                </div>                  
            </div>
        </form>