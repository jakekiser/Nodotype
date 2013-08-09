<?

?>
<div id="WidgetFunctions" style="display:none;" class="XPFuncs">
    <div id="oxpWidgetsOptions" class="oxpWidgetsContainer">
        <div class="xMenu">
            <div title="All XPage SItes" class="List"><a href="/OXP_TENNANTLIST?tnt=<? echo $iTennantId ?>"><img src="/images/spacer.gif"></a></div>
            <div id="SaveBtn" class="Save" style="display:none;" title="Save sorted XPages"><a href="javascript:void(0);" onclick="fSerializeSortPages();"><img src="/images/spacer.gif"/></a></div>
            <div id="StylerBtn" class="Styler" title="Edit site colors"><a href="javascript:void(0);" onclick="fSetFuncPane('StylerFunctions','XPageWidgets')"><img src="/images/spacer.gif"/></a></div>
            <div class="View" title="View your OneXPage"><a target="_blank" href="/oxp?tnt=<? echo $iTennantId ?>&editmode=1"><img src="/images/spacer.gif"/></a></div>
            <br class="ClearFloat">
        </div> 
        <div id="divWidgetArea">
            <h2 class=h2ActiveMenus>Widgets</h2>
            <div class="oxpWidget" onclick='fLoadWidget(1,"&Mode=11&tnt=<? echo $iTennantId ?>");'>
                <div>JavaScript</div>
            </div>             
            <div class="oxpWidget" onclick='fLoadWidget(0,"&Mode=10&tnt=<? echo $iTennantId ?>");'>
                <div>CSS</div>
            </div>
            <div class="oxpWidget" onclick='fLoadWidget(6,"&Mode=13&tnt=<? echo $iTennantId ?>");'>
                <div>Fonts</div>
            </div>            
            <div class="oxpWidget" onclick='fLoadWidget(2,"&tnt=<? echo $iTennantId ?>");'>
                <div>RSS</div>
            </div>
            <div class="oxpWidget" onclick='fLoadWidget(3,"");'>
                <div>Social</div>
            </div>
            <div class="oxpWidget" onclick='fLoadWidget(4,"");'>
                <div>Forms</div>
            </div>
            <div class="oxpWidget" onclick='fLoadWidget(5,"&Mode=12&tnt=<? echo $iTennantId ?>");'>
                <div>Galleries</div>
            </div>
            <div class="oxpWidget" onclick='fLoadWidget(7,"");'>
                <div>Video</div>
            </div>
            <div class="oxpWidget" onclick='fLoadWidget(8,"");'>
                <div>Headlines</div>
            </div>
            <div class="oxpWidget" onclick='fLoadWidget(9,"");'>
                <div>Profile+</div>
            </div>              
            <br class="ClearFloat"/>
        </div>
    </div>
    <div id="divWidgetContainer" style="display:none;"></div>
    <br class='ClearFloat'/>
</div>