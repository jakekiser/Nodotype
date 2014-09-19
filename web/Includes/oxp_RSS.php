<?php

    $Persist_UserId=$_COOKIE["CCrdlUID"];
    $PWDHash=$_COOKIE["CCrdl"];
    $iType=$_GET['type'];
    if (strlen($iType)<1) {
        $iType='0';
    }
    $iRSSID='-1';
    
?>
<div id='divRSSSetup'>
    <div class="xMenu">
        <div class="Add" title="Add New RSS Rule"><a href="javascript:void(0);" onclick="$('#StdFormElems').toggle();"><img src="/images/spacer.gif"/></a></div>
        <div title="View your OneXPage" class="View" id="ViewBtn"><a href="/oxp?tnt=<? echo $iTennantId ?>&amp;editmode=1" target="_blank"><img src="/images/spacer.gif"></a></div>
        <br class="ClearFloat">
    </div>    
    <h2><a href="javascript:void(0);" onclick="$('#oxpWidgetsContainer').fadeIn();fSetFuncPane('WidgetFunctions','XPageWidgets');">Widgets</a>RSS</h2>
    <div id="NewRSS">    
<?  require 'oxp_RSSForm.php'; ?>
    </div>    
<?
    $SQL='select r.RSSID, r.Title, r.Description, r.FeedURL, r.AttrAuthor, r.AttrURL from DA_RSS r '
    .' left join DA_Order o on o.EntityId=r.RSSID and o.Type=3'
    .' where r.TennantId=\''.$iTennantId.'\''
    .' order by o.OrderNum, r.title;';
    $result = mysql_query($SQL);
    $num_rows = mysql_num_rows($result);
    if ( $num_rows >0 ){   
        echo '<ol id="SortableList2" class="ui-sortable">';
        while($row = mysql_fetch_array($result)) {    
            $sFeedURL=$row['FeedURL'];
            $sTitle=$row['Title'];
            $iRSSID=$row['RSSID'];
            $sDescription=$row['Description'];
            $sAttrAuthor=$row['AttrAuthor'];
            $sAttrURL=$row['AttrURL'];            
?>
        <li id="RSSRow_<? echo $iRSSID ?>" class="StdRow StdList">
            <div class="SortableRow">
                <div class="Controls">
                    <div title="Edit Files" class="Edit">
                        <a onclick="fDisplayAjaxBox('FUNC=EDITRSS&rssid=<? echo $iRSSID ?>',1,'fCreateUploader(\'divRSSImageFiles\',[\'bmp\',\'gif\',\'jpg\',\'png\',\'tif\',\'jpeg\'],true,19)');" href="javascript:void(0);">
                            <img src="/images/spacer.gif">
                        </a>
                    </div>                     
                    <div title="Delete Files" class="Delete">
                        <a onclick="fDelRSS(<? echo $iRSSID ?>,10);" href="javascript:void(0);">
                            <img src="/images/spacer.gif">
                        </a>
                    </div>                     
                    <!--<div title="Sort Files" class="Sort">
                        <a href="javascript:void(0);">
                            <img src="/images/spacer.gif">
                        </a>
                    </div>-->                     
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
        echo '<div class="InfoMsg">There were no RSS rows located, <a class="Add" onclick="$(\'#StdFormElems\').toggle();" href="javascript:void(0);">Add one now?<img src="/images/spacer.gif"/></a></div>';
    }
?>
</div>
