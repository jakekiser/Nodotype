<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
?>
<div id="StylerFunctions" style="display:none;" class="XPFuncs">
    <div class="xMenu">
        <div id="SaveBtn" class="Save" style="display:none;" title="Save sorted XPages"><a href="javascript:void(0);" onclick="fSerializeSortPages();"><img src="/images/spacer.gif"/></a></div>
        <div id="WidgetBtn" class="Widget" title="View Available Widgets"><a href="javascript:void(0);" onclick="fSetFuncPane('WidgetFunctions','XPageWidgets');"><img src="/images/spacer.gif"/></a></div>
        <div id="ViewBtn" class="View" title="View your OneXPages"><a target="_blank" href="/oxp?tnt=<? echo $iTennantId ?>&editmode=1"><img src="/images/spacer.gif"/></a></div>
        <br class="ClearFloat">
    </div>     
    <h2 class=h2ActiveMenus>Styler</h2>
    <h3 id="CurrentArea">&nbsp;</h3>    
    <div id="Layout1">
        <div onclick="fSetCPSwatch(this,'l_Header');" class="l_Header">Header</div>
        <div class="l_BodyContainer">
            <div onclick="fSetCPSwatch(this,'BG', 'Background');" class="BG l_BodyLeft">BG</div>
            <div onclick="fSetCPSwatch(this,'l_BodyCenter');" class="l_BodyCenter">Body</div>
            <div onclick="fSetCPSwatch(this,'BG', 'Background');" class="BG l_BodyRight">BG</div>
            <br class="ClearFloat"/>
        </div>
        <div onclick="fSetCPSwatch(this,'l_Footer');" class="l_Footer">Footer</div>
    </div>
    <div id="tabs">
        <ul>
            <li><a href="#tabs-1">Color Picker</a></li>
            <li><a href="#tabs-2">Background Imagery</a></li>
        </ul>    
        <div id="tabs-1" class="StyleSlider">
            <div class="StdRow">
                <div id="red"></div>
                <div id="green"></div>
                <div id="blue"></div>
                <br class="ClearFloat"/>
            </div>
        </div>
        <div id="tabs-2" class="StyleOptions">
            <div class="StdRow">
                <div class="StdLabel">Background Image</div>
                <div class="StdInput Required">
                    <input type="text" value="<? echo $sBGImageURL ?>" id="BGImage" name="BGImage" class="xf_Alpha"/>
                </div>
            </div>
            <div class="StdRow">
                <div class=" StdLabel">BG Repeat</div>
                <div class="BGRepeat"><input type="radio" value="0" id="TileOption0" name="TileOption"/>Repeat side to side</div>
                <div class="BGRepeat"><input type="radio" value="1" id="TileOption1" name="TileOption"/>Repeat up and down</div>
                <div class="BGRepeat"><input type="radio" value="2" id="TileOption2" name="TileOption"/>Repeat all</div>
                <div class="BGRepeat"><input type="radio" value="3" id="TileOption3" name="TileOption"/>No Repeat</div>
            </div>
            <div class="StdRow">
                <div class="StdLabel">BG Position Left</div>
                <div class="StdInput Required">
                    <input type="text" value="<? echo $sBGPositionLeft ?>" id="BGPositionLeft" name="BGPositionLeft" class="xf_Alpha"/>
                </div>            
            </div>
            <div class="StdRow">
                <div class="StdLabel">BG Position Top</div>
                <div class="StdInput Required">
                    <input type="text" value="<? echo $sBGPositionTop ?>" id="BGPositionTop" name="BGPositionTop" class="xf_Alpha"/>
                </div>            
            </div>
            <div class="StdRow Footer Action">
                <input class="ActionButton" type="submit" value="Save"/>
            </div>        
        </div>
    </div>
</div>

<script>
    if (window.addEventListener) 
      window.addEventListener("load",function() {fInitColorPickers();});
    else if (window.attachEvent)
      window.attachEvent('onload', function() {fInitColorPickers()});
</script>
