<?php
    if ($iPageId != 'New Page') {
        $iPageId=$_GET['pid'];
    }
    
    if (strlen($iPageId)<1) {
        $iPageId=$_GET['pid'];
    }    
    //echo "GET['pid']:".$_GET['pid'].", iPageId:".$iPageId.', len:'.strlen($iPageId);
    $Persist_UserId=$_COOKIE["CCrdlUID"];
    $iTennantId=$_COOKIE["tnt"];
    
    $iType='0';
    $sDisplayMode0_Chk=' checked ';
    $sDisplayMode_Val=0;
    $sDisplayMode1_Chk='';
    $sDisplayMode2_Chk='';
    $sDisplayMode3_Chk='';
    $sOptClass='';
    if (strlen($iPageId)>0) {
        $SQL='select p.OptClass, p.PageId, p.Title, p.PageHTML, p.Type,p.InlineEdit+0 as InlineEdit, p.DisplayMode from DA_Pages p where p.PageId=\''.$iPageId.'\'';
        //echo $SQL;
        $result = mysql_query($SQL);
        $num_rows = mysql_num_rows($result);
        if ( $num_rows >0 ){   
            while($row = mysql_fetch_array($result)) {
                $iPageId=$row['PageId'];
                $sTitle=$row['Title'];
                $sPageHTML=$row['PageHTML']; 
                $iType=$row['Type'];
                $bInlineEdit=$row['InlineEdit'];
                $sDisplayMode_Val=$row['DisplayMode'];
                $sOptClass=$row['OptClass'];
                switch ($row['DisplayMode']) {
                    case 0:
                        $sDisplayMode0_Chk=' checked ';
                        break;
                    case 1:
                        $sDisplayMode1_Chk=' checked ';
                        break;
                    case 2:
                        $sDisplayMode2_Chk=' checked ';
                        break;
                    case 3:
                        $sDisplayMode3_Chk=' checked ';
                        break;                    
                    default:
                        $sDisplayMode0_Chk=' checked ';
                        break;
                }
            }
        }
        else {
            echo '<div class=InfoMsg>We are sorry, but we cannot locate the requested page</div>'; 
        }
    }
    if ($bInlineEdit==1) {
        $sInlineEditChecked='checked';
    }
    echo '<div class="xMenu">';
    echo '  <div class="Add" title="Add New XPage"><a href="?p=ONEXPAGE?tnt='.$iTennantId.'"><img src="/images/spacer.gif"/></a></div>';
    echo '  <div class="Save" title="Save XPage"><a href="javascript:void(0);" onclick="document.getElementById(\'SaveButton\').click();"><img src="/images/spacer.gif"/></a></div>';
    echo '  <div class="Delete" title="Delete XPage"><a href="javascript:void(0);" onclick="fDelPage('.$iPageId.');"><img src="/images/spacer.gif"/></a></div>';
    echo '  <div class="List" title="List of all XPages"><a href="/OXP_PAGELIST?tnt='.$iTennantId.'"><img src="/images/spacer.gif"/></a></div>';
    echo '  <div id="ViewBtn" class="View" title="View your OneXPages"><a target="_blank" href="/oxp?tnt='.$iTennantId.'&EditMode=1"><img src="/images/spacer.gif"/></a></div>';
    echo '  <br class="ClearFloat">';
    echo '</div>';    
?>
<form id="OXPForm" class="BasicForm" onsubmit="return(fValidateForm(this))" action="/ONEXPAGE" method="post" name="OXPForm">
    <input type="hidden" class="xf_UpdInd" name="UpdInd" id="OneXUpdInd"/>
    <input type="hidden" name="formModeInd" id="SIformMode" value="OneXPage"/>
    <input type="hidden" class="xf_UpdMode" name="formMode"/>
    <input type="hidden" name="PageId" id="PageId" value="<? echo $iPageId ?>"/>
    <input type="hidden" name="TennantId" id="TennantId" value="<? echo $iTennantId ?>"/>
    <input type="hidden" name="Type" id="Type" value="<? echo $iType ?>"/>
    <div class="StdRow FlowRow">
        <div class="StdLabel">* Title</div>
        <div class="StdInput"><input class="xf_Alpha xf_Required" type="text" name="Title" id="Title" value="<? echo $sTitle ?>"/></div>
        <br class="ClearFloat"/>    
    </div>
    <div class="StdRow FlowRow">
        <input type="checkbox" name="InlineEdit" <? echo $sInlineEditChecked ?> onchange="fCheckVal(this);" id="InlineEdit" value="<? echo $bInlineEdit ?>"/>
        Would you like to enable inline editing for this page?  <small>*Simple pages (no complex divs or non-XHTML constructs)</small>  
    </div>
    <br class="ClearFloat"/>
    <textarea id="txtContent" class="xf_Alpha xf_Required" name="txtContent" rows=4 cols=30><? echo $sPageHTML ?></textarea>
    <script>        
        var oEdit1 = new InnovaEditor("oEdit1");
        oEdit1.cmdAssetManager="modalDialogShow('/Editor/assetmanager/assetmanager.php',640,445);";
        oEdit1.tabs=[
            ["tabHome", "Home", ["grpEdit", "grpFont", "grpPara", "grpPage"]],
            ["tabStyle", "More Options", ["grpObjects", "grpLinks", "grpTables",
            "grpStyles"]]
        ];
        oEdit1.width = 844;
        oEdit1.height = 700;

        oEdit1.groups=[
            ["grpEdit", "Edit",
            ["Undo", "Redo", "Search", "SpellCheck", "ClearAll", "BRK", "Cut", "Copy",
            "Paste","PasteWord", "PasteText", "RemoveFormat","CustomTag"]],
            ["grpFont", "Font", ["FontName", "FontSize", "BRK", "Bold",
            "Italic", "Underline","Strikethrough","Superscript",
            "Subscript", "ForeColor", "BackColor"]],
            ["grpPara", "Paragraph", ["Paragraph", "Indent", "Outdent",
            "LTR", "RTL", "BRK", "JustifyLeft", "JustifyCenter",
            "JustifyRight","JustifyFull", "Numbering",
            "Bullets"]],
            ["grpPage", "Page & View", ["Save", "Print", "Preview", "BRK",
            "FullScreen","Image", "XHTMLSource"]],
            ["grpObjects", "Objects", ["Image", "Flash","Media",
            "BRK","Characters", "Line", "Form"]],
            ["grpLinks", "Links", ["Hyperlink","BRK", "Bookmark"]],
            ["grpTables", "Tables", ["Table", "BRK", "Guidelines"]],
            ["grpStyles", "Styles", ["StyleAndFormatting", "Styles", "BRK", "Absolute"]]
        ];      
        oEdit1.arrCustomTag=[
            ["RSS Feeds","[[OX.RSS]]"],
            ["Basic Login","[[OX.LOGIN]]"],
            ["Wall","[[OX.WALL]]"],
            ["Headlines","[[OX.HEADLINES]]"],
            ["RSS","[[OX.RSSBLOCKS]]"]];

        oEdit1.REPLACE("txtContent");//Specify the id of the textarea here

        //document.getElementById('OXPForm').insertBefore(document.getElementById('idAreaoEdit1'),document.getElementById('txtContent').nextSibling);
        
        //$(function() {$( "#divEditor" ).resizable();});
    </script>
    <div class="StdRow DisplayMode">
        <span>When should this display?</span>
        <input type="radio" name="DisplayModeSel" id="DisplayMode0" value="0" onclick="document.getElementById('DisplayMode').value=this.value;" <?echo $sDisplayMode0_Chk ?>/>Always
        <input type="radio" name="DisplayModeSel" id="DisplayMode1" value="1" onclick="document.getElementById('DisplayMode').value=this.value;"  <?echo $sDisplayMode1_Chk ?>/>Signed In
        <input type="radio" name="DisplayModeSel" id="DisplayMode2" value="2" onclick="document.getElementById('DisplayMode').value=this.value;"  <?echo $sDisplayMode2_Chk ?>/>Signed Out
        <input type="radio" name="DisplayModeSel" id="DisplayMode3" value="3" onclick="document.getElementById('DisplayMode').value=this.value;"  <?echo $sDisplayMode3_Chk ?>/>Never, internal use only
        <input type="hidden" name="DisplayMode" id="DisplayMode" value="<?echo $sDisplayMode_Val ?>" />
    </div>
    <div class="StdRow FlowRow">
        <div class="StdLabel">Optional Class Name</div>
        <div class="StdInput"><input class="xf_Alpha xf_Required" type="text" name="OptClass" id="OptClass" value="<? echo $sOptClass ?>" /></div>
        <br class="ClearFloat"/>    
    </div>   
        
<? if (strlen($iPageId)>0) { ?>
    <div class="StdRow RowDBId">Page Id: <? echo $iPageId; ?></div>
<? } ?>    
    <div class="StdRow Footer Action">
        <input id="SaveButton" type="submit" value="Submit" class="ActionButton">
    </div>
</form>
<!--<script>eval(document.getElementById('divEditor').innerHTML);</script>-->