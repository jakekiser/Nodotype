<?php

    $Persist_UserId=$_COOKIE["CCrdlUID"];
    $PWDHash=$_COOKIE["CCrdl"];
    $iType=$_GET['type'];
    if (strlen($iType)<1) {
        $iType='0';
    }
    $iTennantId=$_GET['tnt'];
    if (strlen($iTennantId)<1) {
        $iTennantId=$_COOKIE["tnt"];
    }
    
    echo '<div class="FuncContainer">';
    echo '  <div class="NavPane" id="NavPane">';
    echo '      <div title="List of all XPages" id="VMPages" class="VMSelected VM VM_Pages"><a href="javascript:void(0);" onclick="fSelectMainFunc(\'VMPages\');fSetFuncPane(\'XPageFunctions\',\'XPageWidgets\');fBuildNav(1,0);fSortPages(\'#SortableList\',0);"><img src="/images/spacer.gif"/></a></div>';
    echo '      <div title="Sort my XPage Menus" id="VMNav" class="VM VM_Nav"><a href="javascript:void(0);" onclick="fSelectMainFunc(\'VMNav\');fSetFuncPane(\'XPageFunctions\',\'XMenuDragDoc\');fBuildNav(1,1);fBuildNav(0,1);fInitNavDrag();fSortPages(\'#SortableList\',1)"><img src="/images/spacer.gif"/></a></div>';
    echo '      <div title="Design my XPage" id="VMSite" class="VM VM_Site"><a href="javascript:void(0)" onclick="fSelectMainFunc(\'VMSite\');fSetFuncPane(\'WidgetFunctions\',\'XPageWidgets\');"><img src="/images/spacer.gif"/></a></div>';
    echo '      <div title="Manage Site Options" id="VMTools" class="VM VM_Tools"><a href="javascript:void(0)" onclick="fSelectMainFunc(\'VMTools\');fSetFuncPane(\'SiteDetails\',\'XPageSite\');;"><img src="/images/spacer.gif"/></a></div>';
    echo '  </div>';
    echo '  <div id="FuncPane" class="FuncPane">';
    echo '      <div id="XPageFunctions" class="XPFuncs" >';
    echo '          <div class="xMenu">';
    echo '      <div title="All XPage SItes" class="List"><a href="/OXP_TENNANTLIST?tnt='.$iTennantId.'"><img src="/images/spacer.gif"></a></div>';
    echo '              <div id="AddBtn" class="Add" title="Add New XPage"><a href="/ONEXPAGE"><img src="/images/spacer.gif"/></a></div>';
    //echo '              <div id="SortBtn" class="Sort handle" title="Sort XPages"><a href="javascript:void(0);" onclick="fSortPages(\'#SortableList\',0);"><img src="/images/spacer.gif"/></a></div>';
    echo '              <div id="SaveBtn" class="Save" style="display:none;" title="Save sorted XPages"><a href="javascript:void(0);" onclick="$(\'#formSubmitBtn\').click();"><img src="/images/spacer.gif"/></a></div>';
    //echo '              <div id="ListBtn" class="List" style="display:none;" title="List XPages"><a href="javascript:void(0);" onclick="fDisableSortPages(\'#SortableList\',0);"><img src="/images/spacer.gif"/></a></div>';        
    echo '              <div id="ViewBtn" class="View" title="View your OneXPages"><a target="_blank" href="/oxp?tnt='.$iTennantId.'&EditMode=1"><img src="/images/spacer.gif"/></a></div>';
    echo '              <br class="ClearFloat">';
    echo '          </div>';    
    echo '          <div id="EditList" class="EditList">';
    echo '              <h2 class=h2ActiveMenus>Active Menus</h2>';
    echo '              <h2 class=h2XPages>XPages</h2>';
    echo '              <div class="divSortable"><ol id="SortableList"><li><div class="WaitNote">One moment while we retrieve your XPage information...</div></li></ol></div>';
    echo '              <h2 class=h2InactiveMenus>Inactive Menus</h2>';
    echo '              <div class="divSortable"><ol id="InactiveSortableList"></ol></div>';    
    echo '          </div>';
    echo '      </div>';
    echo '      <div id="ToolsAnim">';
 
    // Widgets
    require 'oxp_Widgets.php';
    
    // Site Details
    require 'oxp_SiteDetails.php';
    
    // Styler Functons
    require 'oxp_Styler.php';    
    
    echo '      </div>';
    echo '  </div>';
    echo '  <div class="ExplainPane">';
    echo '  <p id="XPageListDoc" class="XPageDoc triangle-right left">This is your list of XPages. You can edit or delete an existing XPage by simply click either the edit (/) or delete (X) icons to the left of each row. To add a new XPage, simply click the icon above the table denoted by the (+) icon. In either an edit (/) or (+) case, you will be provided an editor to manage your XPage.</p>';
    echo '  <p id="XPageSortDoc" style="display:none;" class="XPageDoc triangle-right left">OneXPage uses a very simple concept for displaying your page.  You only get one phyical page.  The beauty is in it\'s simplicity.  However, you can have multiple XPages of content.  Using the navigation tool, you can sort your list to display in the order you want your XPage displayed.  You can also manage how the "links" will appear on the top of your XPage.</p>';
    echo '  <p id="XMenuDragDoc" style="display:none;" class="XPageDoc triangle-right left">This function will allow you to tailor your menu functions that display in the header and footer.  Simply drag items from one list to the other to affect your Active and Inactive menus.  In addition, you can sort your Active menuses from left to right simply by dragging the menu into the desired position.</p>';
    echo '  <p id="XPageWidgets" style="display:none;" class="XPageDoc triangle-right left">OneXPage provides a variety of widgets you can connect to your page.  Click on any widgets to further set up and enhance your OneXPage.</p>';
    echo '  <p id="XPageSite" style="display:none;" class="XPageDoc triangle-right left">You can manage the various details  of your site such as site title, tracking codes, and more.</p>';
    
    echo '</div>';
    
    echo '<br class="ClearFloat"/></div>';
    
    echo '<form id="formSort" style="display:none;" name="formSort" method="post" action="/OXPFUNCS.php?FUNC=OXP_SORTPAGE" onsubmit="return(fSaveSorts(event,0))">';
    echo '<input type="text" name="TennantId" id="TennantId" value="'.$iTennantId.'"/>';
    echo '<input type="text" name="SortArray" id="SortArray" />';
    echo '<input type="text" class="xf_UpdInd" name="UpdInd" id="OneXUpdInd"/>';
    echo '<input type="text" name="formModeInd" id="SISortMode" value="OXP_SORTPAGE"/>';
    echo '<input type="text" name="xf_SortType" id="xf_SortType"/>';
    echo '<input type="text" class="xf_UpdMode" name="formMode"/>';
    echo '<input id="formSubmitBtn" type="submit" value="submit"/>';
    echo '</form>';
    
    // Build XPage Meta
    require 'oxp_MetaJSON.php';   
?>
