<?php

    $Persist_UserId=$_COOKIE["CCrdlUID"];
    $PWDHash=$_COOKIE["CCrdl"];
    $iType=$_GET['type'];
    if (strlen($iType)<1) {
        $iType='0';
    }
    $iHeadlineId='-1';
?>
<div id='divRSSSetup'>
    <div class="xMenu">
        <div class="Add" title="Add New Headline"><a href="javascript:void(0);" onclick="$('#StdFormElems').toggle();"><img src="/images/spacer.gif"/></a></div>
        <div title="View your OneXPage" class="View" id="ViewBtn"><a href="/oxp?tnt=<? echo $iTennantId ?>&amp;editmode=1" target="_blank"><img src="/images/spacer.gif"></a></div>
        <br class="ClearFloat">
    </div>    
    <h2><a href="javascript:void(0);" onclick="$('#oxpWidgetsContainer').fadeIn();fSetFuncPane('WidgetFunctions','XPageWidgets');">Widgets</a>Headlines</h2>
    <div id="NewHeadline">    
<?  require 'oxp_HeadlineForm.php'; ?>
    </div>    
<?
    $SQL='select h.HeadlineId, h.Title from DA_Headlines h '
    .' where h.TennantId=\''.$iTennantId.'\''
    .' order by h.title;';
    $result = mysql_query($SQL);
    $num_rows = mysql_num_rows($result);
    if ( $num_rows >0 ){   
        echo '<ol id="SortableList2" class="ui-sortable">';
        while($row = mysql_fetch_array($result)) {    
            $sTitle=$row['Title'];
            $iHeadlineId=$row['HeadlineId'];
?>
        <li id="HLRow_<? echo $iHeadlineId ?>" class="StdRow StdList">
            <div class="SortableRow">
                <div class="Controls">
                    <div title="Edit Files" class="Edit">
                        <a onclick="fDisplayAjaxBox('FUNC=EDITHEADLINE&hlid=<? echo $iHeadlineId ?>',1,'fHealthlineHousekeeping()');" href="javascript:void(0);">
                            <img src="/images/spacer.gif">
                        </a>
                    </div>                     
                    <div title="Delete Files" class="Delete">
                        <a onclick="fDelHeadline(<? echo $iHeadlineId ?>);" href="javascript:void(0);">
                            <img src="/images/spacer.gif">
                        </a>
                    </div>                     
                    <br class="ClearFloat">                 
                </div>                 
                <div class="Title StdRowName"><? echo $sTitle ?></div>
                <br class="ClearFloat">              
            </div>          
        </li> 
<?
        }
        echo '</ol> ';
    } else {
        echo '<div class="InfoMsg">There were no Headlines rows located, <a class="Add" onclick="$(\'#StdFormElems\').toggle();" href="javascript:void(0);">Add one now?<img src="/images/spacer.gif"/></a></div>';
    }
?>
</div>
