<?php
    $iTennantId=$_COOKIE["tnt"];
    //if (strlen($iTennantId)<1) {
    //    $iTennantId=$_GET['tnt'];
    //}
    $iMode=$_GET['Mode'];
    $WidgetMode=0;
    switch ($iMode) {
        case '10':
            $sModeText='CSS';
            $WidgetMode=0;
            break;
        case '11':
            $sModeText='JavaScript';
            $WidgetMode=1;
            break;
        case '12':
            $sModeText='Gallery';
            $WidgetMode=5;
            break;  
        case '13':
            $sModeText='Font';
            $WidgetMode=6;
            break;         
    }
?>
<div id='divFileSetup' class="FSMode_<? echo $iMode ?>">
    <div class="xMenu">
        <div title="Save sorted files" class="Save" id="SaveBtn"><a onclick="fSaveSorts(event,1,'<? echo $iMode ?>');" href="javascript:void(0);"><img src="/images/spacer.gif"></a></div>
        <div title="View your OneXPage" class="View" id="ViewBtn"><a href="/oxp?tnt=<? echo $iTennantId ?>&amp;editmode=1" target="_blank"><img src="/images/spacer.gif"></a></div>
        <br class="ClearFloat">
    </div>    
    <h2><a href="javascript:void(0);" onclick="$('#oxpWidgetsContainer').fadeIn();fSetFuncPane('WidgetFunctions','XPageWidgets');">Widgets</a><? echo $sModeText ?></h2>
    <!--<div class="InfoMsg Add"><div class="EditImg"><img src="/images/spacer.gif"/></div><a href="javascript:void(0);" onclick="$('#NewFile').toggle();$('.qq-upload-list').empty();">Add <? echo $sModeText?> File?</a></div>-->
    <input type="hidden" id="oxpFSType" name="oxpFSType" value="<? echo $iMode ?>"/>
    <div id="NewFile">    
        <form name="formFileSetup" id="formFileSetup" method="post" onsubmit="return(fSaveBasicPage(event,this.id,'Added'));">
            <input type="hidden" class="xf_UpdInd" name="UpdInd" id="CSSUpdInd"/>
            <input type="hidden" name="formModeInd" id="SIformMode" value="OXP_CSS"/>
            <input type="hidden" class="xf_UpdMode" name="formMode"/>
            <input type="hidden" name="FileType" value="<? echo $iMode ?>"/>
            <input type="hidden" name="FileId" value="-1"/>
            <input type="hidden" name="CallBack" id="CallBack" value="fLoadWidget(<? echo $WidgetMode ?>,'&tnt=<? echo $iTennantId ?>&Mode=<? echo $iMode ?>');fAddFileHouseKeeping();"/>
            <input type="hidden" name="TennantId" id="TennantId" value="<? echo $iTennantId ?>"/>
            <div class="StdFormElems" style="display:none;">
                <div class="StdRow">
                    <div class="StdLabel">* FileName</div>
                    <div class="StdInput">
                        <input type="text" class="xf_Alpha xf_Required xfMaxSize_255" name="FileName" id="FileName" />
                    </div>
                    <br class="ClearFloat"/>            
                </div>
                <div class="StdRow">
                    <div class="StdLabel">* Relative Path</div>
                    <div class="StdInput">
                        <input type="text" class="xf_Alpha xf_Required xfMaxSize_255" name="RelativePath" id="RelativePath" />
                    </div>
                    <br class="ClearFloat"/>            
                </div>
                <div class="StdRow">
                    <div class="StdLabel">Description</div>
                    <div class="StdInput">
                        <textarea class="xf_Alpha xfMaxSize_500" name="Description" id="Description"></textarea>
                    </div>
                    <br class="ClearFloat"/>            
                </div>            
            </div>
            <div id="divULFiles"></div>
            <br class="ClearFloat"/>
            <div class="StdRow Footer Action" style="display:none;">
                <input type="submit" value="Submit" class="ActionButton">
            </div>             
        </form>
    </div>    
<?
    $SQL='select distinct RelativePath, FileName, FileId from DA_Files f '
    .' left join DA_Order o on o.EntityId=f.FileId and o.Type='.$iMode
    .' where f.TennantId=\''.$iTennantId.'\' and f.Type='.$iMode
    .' order by o.OrderNum;';
    $result = mysql_query($SQL);
    $num_rows = mysql_num_rows($result);
    if ( $num_rows >0 ){   
        echo '<ol id="SortableList2" class="ui-sortable">';
        while($row = mysql_fetch_array($result)) {    
            $sRelativePath=$row['RelativePath'];
            $sFileName=$row['FileName'];
            $iFileId=$row['FileId'];
            $FullPath=$sRelativePath.'/'.$sFileName;
?>
        <li id="FileRow_<? echo $iFileId ?>" class="StdRow StdList">
            <div class="SortableRow">
                <div class="Controls">
                    <div title="Edit Files" class="Edit">
                        <a onclick="fDisplayAjaxBox('FUNC=EDITFILE&fid=<? echo $iFileId ?>',0);" href="javascript:void(0);">
                            <img src="/images/spacer.gif">
                        </a>
                    </div>                     
                    <div title="Delete Files" class="Delete">
                        <a onclick="fDelFile(<? echo $iFileId ?>,10);" href="javascript:void(0);">
                            <img src="/images/spacer.gif">
                        </a>
                    </div>                     
                    <div title="Sort Files" class="Sort">
                        <a href="javascript:void(0);">
                            <img src="/images/spacer.gif">
                        </a>
                    </div>                     
                    <br class="ClearFloat">                 
                </div>                 
                <div class="FileName StdRowName"><? echo $sFileName ?></div>
                <div class="RelativePath StdRowName"><? echo $sRelativePath ?></div> 
<?  if ($iMode=='12') { ?>
                <div class="Image"><a title="Click to view" href="<? echo $FullPath ?>" target="_blank"><img src="<? echo $FullPath  ?>"/></a></div>                
<?  }   ?>                
                <br class="ClearFloat">              
            </div>          
        </li> 
<?
        }
        echo '</ol> ';
    } else {
        echo '<div class="InfoMsg">There were no '.$sModeText.' files located</div>';
    }
?>
</div>
