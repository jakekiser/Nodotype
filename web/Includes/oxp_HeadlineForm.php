<?
    $sPostMsg='Added';
    $sTitle='';
    $sDescription='';
    $sFeedURL='';
    $sAttrAuthor='';
    $sAttrURL='';
    $iHeadlineId=$_GET['hlid'];
    if (strlen($iHeadlineId)<1) $iHeadlineId=0;
    
    if ($iHeadlineId>0) {
        $sPostMsg='Updated';
        $SQL='select h.HeadlineId, h.Title, h.Description, h.HeadlineURL, h.Author, h.AuthorURL, h.AuthorImage, h.HeadlineImage, h.Priority, h.StartDate, h.EndDate from DA_Headlines h'
        .' where h.HeadlineId='.$iHeadlineId;
        $result = mysql_query($SQL);
        $num_rows = mysql_num_rows($result);
        if ( $num_rows >0 ){   
            while($row = mysql_fetch_array($result)) {
                $iHeadlineId=$row['HeadlineId'];
                $sTitle=$row['Title'];
                $sDescription=$row['Description']; 
                $sHeadlineURL=$row['HeadlineURL'];
                $sAuthor=$row['Author'];          
                $sAuthorURL=$row['AuthorURL'];
                $sAuthorImage=$row['AuthorImage'];
                $sHeadlineImage=$row['HeadlineImage'];
                $iPriority=$row['Priority']-1;
                $sStartDate=$row['StartDate'];
                $sEndDate=$row['EndDate'];
            }
        }
            echo '<div class="xMenu">';
            echo '<div title="Save File" class="Save" id="SaveBtn">';
            echo '<a onclick="document.getElementById(\'HeadlineButton\').click();" href="javascript:void(0);">';
            echo '<img src="/images/spacer.gif"></a></div>';
            echo '<br class="ClearFloat">  </div>';
            echo '<h2>Edit Headline</h2>';
    }

?>
        <form name="formHeadlineSetup" id="formHeadlineSetup" method="post" onsubmit="return(fSaveBasicPage(event,this.id,'<? echo $sPostMsg ?>'));">
            <input type="hidden" class="xf_UpdInd" name="UpdInd" id="HeadlineUpdInd"/>
            <input type="hidden" name="formModeInd" id="SIformMode" value="OXP_HEADLINE"/>
            <input type="hidden" class="xf_UpdMode" name="formMode"/>
            <input type="hidden" name="HeadlineId" value="<? echo $iHeadlineId ?>"/>
            <input type="hidden" name="TennantId" value="<?echo $iTennantId ?>"/>
            <input type="hidden" name="CallBack" id="CallBack" value="fCloseCurtain();fLoadWidget(8,'');"/>
            <input type="hidden" name="CallBack" id="CallBackAuthor" value=""/>
            <input type="hidden" name="CallBack" id="CallBackHeadline" value=""/>
            <input type="hidden" id="db_Priority" value="<? echo $iPriority ?>"/>
            <div id="StdFormElems" class="StdFormElems" style="display:none;">
                <div class="StdRow">
                    <div class="StdLabel">* Title</div>
                    <div class="StdInput">
                        <input type="text" class="xf_Alpha xf_Required xfMaxSize_255" name="Title" id="Title" value="<? echo $sTitle ?>"/>
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
                    <div class="StdLabel">* URL</div>
                    <div class="StdInput">
                        <input type="text" class="xf_Alpha xf_Required xfMaxSize_255" name="HeadlineURL" id="HeadlineURL" value="<? echo $sHeadlineURL ?>"/>
                    </div>
                    <br class="ClearFloat"/>            
                </div>                
                <div class="StdRow">
                    <div class="StdLabel">Author</div>
                    <div class="StdInput">
                        <input type="text" class="xf_Alpha xf_Required xfMaxSize_255" name="Author" id="Author" value="<? echo $sAuthor ?>"/>
                    </div>
                    <br class="ClearFloat"/>            
                </div>
                <div class="StdRow">
                    <div class="StdLabel">Author URL</div>
                    <div class="StdInput">
                        <input type="text" class="xf_Alpha xf_Required xfMaxSize_255" name="AuthorURL" id="AuthorURL" value="<? echo $sAuthorURL ?>"/>
                    </div>
                    <br class="ClearFloat"/>            
                </div>
                <div class="StdRow">
                    <div class="StdLabel">Author Image</div>
                    <div class="StdInput">
                        <input type="text" class="xf_Alpha xf_Required xfMaxSize_255" name="AuthorImage" id="AuthorImage" value="<? echo $sAuthorImage ?>"/>
                        <div id="divAuthorImageFiles"></div>
                    </div>
                    <br class="ClearFloat"/>            
                </div>
                <div class="StdRow">
                    <div class="StdLabel">Headline Image</div>
                    <div class="StdInput">
                        <input type="text" class="xf_Alpha xf_Required xfMaxSize_255" name="HeadlineImage" id="HeadlineImage" value="<? echo $sHeadlineImage ?>"/>
                        <div id="divHeadlineImageFiles"></div>
                    </div>
                    <br class="ClearFloat"/>            
                </div>
                <div class="StdRow">Priority:
                    <select id="Priority" name="Priority">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                    </select>
                </div>
                <div class="StdRow">
                        (Optional) Start:<input type="text" id="StartDate" name="StartDate" value="<?echo $sStartDate ?>"/>
                        End:<input type="text" id="EndDate" name="EndDate" value="<?echo $sEndDate ?>"/>
                </div>                 
                <div class="StdRow Footer Action">
                    <input type="submit" value="Submit" id="HeadlineButton"class="ActionButton">
                </div>                  
            </div>
        </form>