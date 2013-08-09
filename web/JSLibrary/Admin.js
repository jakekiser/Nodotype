function fDelPage(pid) {
    var x=window.confirm('You are about to delete an XPage\n\n if correct, press OK, else CANCEL');
    if (!x) {
        return;
    }
 
    $.get('/OXPFUNCS.php?FUNC=DELPAGE&pid='+pid);
    $('#Row_'+pid).removeAttr( "style" ).fadeOut();
}
function fDelFile(fid,pType) {
    var x=window.confirm('You are about to delete a file\n\n if correct, press OK, else CANCEL');
    if (!x) {
        return;
    }
 
    $.get('/OXPFUNCS.php?FUNC=DELFILE&FileId='+fid+'&Type='+pType);
    $('#FileRow_'+fid).removeAttr( "style" ).fadeOut();
}
function fDelRSS(rssId) {
    var x=window.confirm('You are about to delete a CSS rule if correct, press OK, else CANCEL');
    if (!x) {
        return;
    }
 
    $.get('/OXPFUNCS.php?FUNC=DELRSS&RSSID='+rssId);
    $('#RSSRow_'+rssId).removeAttr( "style" ).fadeOut();
}
function fSortPages(eId,mode) {
    
//    try {$( eId ).sortable( "destroy" )}catch(e){};
    
    fHideElems('XPageDoc');
    $('#XPageSortDoc').fadeIn(1000);    
    
    if (mode==0) {
        $( eId ).sortable({ axis: "y" });
     } else {
        $( eId ).sortable();
    }
    $( eId ).disableSelection();
    
    var sMode='mode_'+mode;

    document.getElementById('SaveBtn').style.display='';
    document.getElementById('AddBtn').style.display='';
    
    document.getElementById('FuncPane').className='FuncPane';
    
    if (mode==0) {
        document.getElementById('VMNav').className='VM VM_Nav';
        document.getElementById('VMPages').className='VMSelected VM VM_Pages';
    } else {
        document.getElementById('VMNav').className='VMSelected VM VM_Nav';
        document.getElementById('VMPages').className='VM VM_Pages';
        document.getElementById('FuncPane').className='XMenusSort FuncPane';        
    }
}
function fSimpleSort(eid,mode) {
    $(eid).sortable({ axis: "y" });
    var handle = $(eid).sortable( "option", "handle" );
    $(eid ).sortable( "option", "handle", ".Sort" ); 
    document.getElementById('FuncPane').className='FuncPane'; 
}
function fSortFiles(eId,mode) {
    
    fHideElems('XPageDoc');
    $('#XPageSortDoc').fadeIn(1000);    
    
    $( eId ).sortable({ axis: "y" });
    $( eId ).disableSelection();
    
    var sMode='mode_'+mode;

    document.getElementById('SaveBtn').style.display='';
    document.getElementById('AddBtn').style.display='';
    
    document.getElementById('FuncPane').className='FuncPane';
    
    if (mode==0) {
        document.getElementById('VMNav').className='VM VM_Nav';
        document.getElementById('VMPages').className='VMSelected VM VM_Pages';
    } else {
        document.getElementById('VMNav').className='VMSelected VM VM_Nav';
        document.getElementById('VMPages').className='VM VM_Pages';
        document.getElementById('FuncPane').className='XMenusSort FuncPane';        
    }
}
function fDisableSortPages(eId,mode) {
    
    fHideElems('XPageDoc');
    $('#XPageListDoc').fadeIn(1000);
    
    fDestroyDroppable(eId);

    document.getElementById('SaveBtn').style.display='none';
    document.getElementById('AddBtn').style.display='';
    
    document.getElementById('FuncPane').className='FuncPane';    
    
    if (mode==0) {
        document.getElementById('VMNav').className='VM VM_Nav';
        document.getElementById('VMPages').className='VMSelected VM VM_Pages';
    } else {
        document.getElementById('VMNav').className='VMSelected VM VM_Nav';
        document.getElementById('VMPages').className='VM VM_Pages';
    }    
}
function fDestroyDroppable (eId) {
    try {$( eId ).sortable( "destroy" );}catch(e){};
    try {$( eId ).droppable( "destroy" );}catch(e){};
}
function fSetFuncPane(elemId,explainId) {
    document.getElementById('oxpWidgetsOptions').style.display='';
    document.getElementById('divWidgetContainer').style.display='none';
    fHideElems('XPFuncs','div');
    $('#'+elemId).fadeIn(1000);
    
    fHideElems('XPageDoc');
    if (explainId) {
        $('#'+explainId).fadeIn(1000);
    }
    if (elemId=='SiteDetails') { // ICO Files w/in Site Details
        fCreateUploader('divICOFiles',['ico'],false,15,'CallBackICO');
        fCreateUploader('divXDirFiles',['bmp','gif','jpg','png','tif','jpeg'],false,20,'CallBackICO');
    }
}
function fBuildNav(activeMode, pageMode) {
    
    document.getElementById('InactiveSortableList').innerHTML='';
    document.getElementById('xf_SortType').value='0';
    
    if (pageMode==0) {
        document.getElementById('SaveBtn').style.display='';
        document.getElementById('AddBtn').style.display=''; 
    } else {
        document.getElementById('SaveBtn').style.display='';
        document.getElementById('AddBtn').style.display='';         
    }
    
    eval (document.getElementById('divJSONDoc').innerHTML);

    var sHTML='';
    if (oDANav.length>0) {
        for (i=0;i<oDANav.length;i++) {
            if ((oDANav[i]['Active']==activeMode && pageMode=='1') 
                || pageMode==0) {
                sHTML=sHTML+' <li class="StdRow StdList" id="Row_'+oDANav[i]['PageId']+'">'
                + '              <div class="SortableRow">'
                + '                 <div class="Controls">'
                + '                     <div class="Edit" title="Edit XPage"><a href="/ONEXPAGE?pid='+oDANav[i]['PageId']+'"><img src="/images/spacer.gif"/></a></div>'
                //+ '                     <div class="Edit" title="Edit XPage"><a href="javascript:void(0);" onclick="fEditPage('+oDANav[i]['PageId']+')"><img src="/images/spacer.gif"/></a></div>'
                + '                     <div class="Delete" title="Delete XPage"><a href="javascript:void(0);" onclick="fDelPage('+oDANav[i]['PageId']+');"><img src="/images/spacer.gif"/></a></div>'
                + '                     <div class="Sort" title="Sort XPage"><a href="javascript:void(0);"><img src="/images/spacer.gif"/></a></div>'
                + '                     <br class="ClearFloat"/>'
                + '                 </div>'
                + '                 <div class="Title">'+oDANav[i]['Title']+'</div>'
                + '                 <br class="ClearFloat"/>'
                + '              </div>'
                + '              <div id="EditRow_'+oDANav[i]['PageId']+'" syle="display:none;"></div>';
                + '          </li>';
            }
        }
    } 
    
    if (sHTML.length<1) {
        if (pageMode==0) {
            sHTML='      <li class=InfoMsg>There are no XPages on file at this time</li>';
        } else {
            sHTML='      <li class=PlaceHolder><div class=Title>Drop your menu options here</div></li>';
        }
    }

    //sHTML=sHTML+'<li id="BaseClearFloat" class="ClearFloat"/>';
    
    if (activeMode==1) {
        document.getElementById('SortableList').innerHTML=sHTML;
        fSortPages('#SortableList',0);
    } else {
        document.getElementById('InactiveSortableList').innerHTML=sHTML;
    }
    
    
}
function fBuildTennantBlocks() {
    if (!document.getElementById('divTntJSONDoc')) return;
    
    var iTotCols=4;
    eval (document.getElementById('divTntJSONDoc').innerHTML);
    var sHTMLArray= new Array();
    
    var sHTML='';
    var iACnt=0;
    if (oDATennants.length>0) {
        //Initialize Array
        for (i=0;i<iTotCols;i++) {
            sHTMLArray[i]='';
        }
        for (i=0;i<oDATennants.length;i++) {
            if (iACnt>iTotCols-1) {
                iACnt=0;
            }
            sHTML=' <div class="divTennantRow" id="divTB_'+oDATennants[i]['TennantId']+'">'
                + '     <div class="divTRInner">'
                + '        <div class="divTPageImage"><img onclick="self.location=\'/OXP_PAGELIST?tnt='+oDATennants[i]['TennantId']+'\'" src="'+oDATennants[i]['PageImageURL']+'"/></div>'
                + '        <div class="divTPageTitle"><span>'+oDATennants[i]['Title']+'</span></div>'
                + '        <div class="divTPageDesc"><span>'+oDATennants[i]['ShortDesc']+'</span></div>'
                + '        <div class="EditControls">'
                + '             <a title="Edit Site" class="Edit" href="/OXP_PAGELIST?tnt='+oDATennants[i]['TennantId']+'"><img src="/images/spacer.gif"></a>'
                + '             <a title="Send to Recycle bin" class="Delete" href="javascript:void(0);" onclick="fDelItem('+oDATennants[i]['TennantId']+',0);"><img src="/images/spacer.gif"></a>'
                + '        </div>'
                + '     </div>'
                + '</div>';
            sHTMLArray[iACnt]=sHTMLArray[iACnt]+sHTML;
            iACnt=iACnt+1;
        }
        sHTML='';
        for (i=0;i<sHTMLArray.length;i++) {
            sHTML=sHTML+'<div class="divTCols" id="divTCol_'+i+'">'
            + sHTMLArray[i]
            + '</div>';
        }
        sHTML=sHTML+'<br class=ClearFloat />';
        document.getElementById('divTennantContainer').innerHTML=sHTML;
    } 
}
function fEditPage(pid) {
    pars=document.getElementById('SortableList').getElementsByTagName('li');
    for (i=0;i<pars.length;i++){
        if (pars[i].id.indexOf('EditRow_')!=-1) {
            pars[i].empty();
        }
    }
    var elemId='#EditRow_'+pid;
    $('#EditRow_'+pid).load('/OXPFUNCS.php?FUNC=EDITPAGE&pid='+pid,
        function() {fCreateEditor(elemId)
            }
        );
}
function fSelectMainFunc(elemId) {
    pars=document.getElementById('NavPane').getElementsByTagName('div');
    for (i=0;i<pars.length;i++) {
        if (pars[i].className.indexOf('VM')!=-1) {
            var newClassName=pars[i].className.replace('VMSelected','');
            pars[i].className=newClassName;
        }
    }
    document.getElementById(elemId).className='VMSelected '+document.getElementById(elemId).className;
}
function fCreateEditor(elemId) {
    if ( editor )
	return;

    // Create a new editor inside the <div id="editor">, setting its value to html
    var config = {};
    editor = CKEDITOR.appendTo( elemId, config, html );
}
function fAddFileHouseKeeping() {
    $('#NewFile').fadeOut();
    document.getElementById('FileName').value='';
    document.getElementById('RelativePath').value='';
    document.getElementById('Description').value='';
}
function fSaveSorts(event,mode, sortType) {
    
    var elem='formSort';

        //Serialize Form
        var sDelim='';
        if (mode==0) { // Pages
            document.getElementById('SISortMode').value='OXP_SORTPAGE';
            sArray=fSerializeContainer('SortableList','Row_', 'li','','');
           // if (sArray.indexOf(',')!=-1) {
                sDelim=',';
           // }
            sArray=sArray+fSerializeContainer('InactiveSortableList','Row_', 'li',sDelim,'_');
        } else { // Files
            document.getElementById('SISortMode').value='OXP_SORTFILES';
            document.getElementById('xf_SortType').value=sortType;
            sArray=fSerializeContainer('SortableList2','FileRow_', 'li','','');
        }
            
        document.getElementById('SortArray').value=sArray;
        
        /* stop form from submitting normally */
        event.preventDefault();
        
        /* get some values from elements on the page: */
            
        var $form = $( this ),
            url = $form.attr( 'action' );
            
        if (document.getElementById(elem).action.indexOf('?FUNC')!=-1) url=document.getElementById(elem).action;            
        
        //* Send the data using post */
        var posting = $.post( url, $('#formSort').serialize() );

        /* Put the results in a div */
        posting.done(function() {
            fBuildStdMsg('Updated');
        });
}

function fSerializeContainer(eId,rowPref, selType,sDelim,mode) {
var aId='';
var sId='';
    
    // Grab Active Navs
    pars=document.getElementById(eId).getElementsByTagName(selType);
    for (i=0;i<pars.length;i++) {
        if (pars[i].id.indexOf(rowPref)!=-1) {
            sId=pars[i].id;
            sId=sId.replace(rowPref,'');
            aId=aId+sDelim+sId+mode;
            sDelim=',';
        }
    }
    return aId;
}
function fInitNavDrag() {
    
    fDestroyDroppable ('#InactiveSortableList');
    fDestroyDroppable ('#SortableList');
    fDestroyDroppable ('#SortableList2');
    
    document.getElementById('xf_SortType').value='1';
    
    document.getElementById('VMNav').className='VMSelected VM VM_Nav';
    document.getElementById('VMPages').className='VM VM_Pages';
    document.getElementById('FuncPane').className='XMenusSort FuncPane';        

    // Create Sortable 
    $("#InactiveSortableList").sortable({connectWith: "#SortableList"});
    $("#SortableList").sortable({connectWith: "#InactiveSortableList"}); 
    
}
function fSetUpDragDrop(dragElemAttr, dropElemAttr) {
    
return;
    /// Not used - save for archives for now
    $( dragElemAttr ).draggable({
        appendTo: "body",
        cursor: "crosshair"
    });
    
    $( dropElemAttr ).droppable({
        activeClass: "ui-state-default",
        hoverClass: "ui-state-hover",
        accept: ":not(.ui-sortable-helper)",
        drop: function( event, ui ) {
            $( this ).find( ".PlaceHolder" ).remove();
            $( "<li></li>" ).html( ui.draggable.html() )
                .addClass('StdList')
                .addClass('StdRow')
                .insertBefore( $( this ).find( "#BaseClearFloat" ) );
            $(ui.draggable).remove();
        } //
        }).sortable({
            items: "li:not(.PlaceHolder)",
            sort: function() {
            // gets added unintentionally by droppable interacting with sortable
            // using connectWithSortable fixes this, but doesn't allow you to customize active/hoverClass options
            $( this ).removeClass( "ui-state-default" );
        }
    });  
}
function fSetCPSwatch(elem, className, optName) {
    
    if (optName){
       document.getElementById('CurrentArea').innerHTML='Currently styling: '+optName; 
    } else {
        document.getElementById('CurrentArea').innerHTML='Currently styling: '+elem.innerHTML;
    }
    
    //turn off swatch class
    pars=document.getElementById('Layout1').getElementsByTagName('div');
    for (i=0;i<pars.length;i++) {
        pars[i].className=pars[i].className.replace('swatch', '');
    }
    
    //turn on swatch class
    for (i=0;i<pars.length;i++) {
        if (pars[i].className.indexOf(className)!=-1) {
            pars[i].className=pars[i].className+' swatch';
        }
    }    
}
function fInitColorPickers() {
    $(function() {
        $( "#tabs" ).tabs();
    });    
    
    function hexFromRGB(r, g, b) {
        var hex = [
        r.toString( 16 ),
        g.toString( 16 ),
        b.toString( 16 )
        ];
        $.each( hex, function( nr, val ) {
        if ( val.length === 1 ) {
        hex[ nr ] = "0" + val;
        }
        });
        return hex.join( "" ).toUpperCase();
    }
    function refreshSwatch() {
        var red = $( "#red" ).slider( "value" ),
        green = $( "#green" ).slider( "value" ),
        blue = $( "#blue" ).slider( "value" ),
        hex = hexFromRGB( red, green, blue );
        $( ".swatch" ).css( "background-color", "#" + hex );
    }
    $(function() {
        $( "#red, #green, #blue" ).slider({
            orientation: "horizontal",
            range: "min",
            max: 255,
            value: 127,
            slide: refreshSwatch,
            change: refreshSwatch
        });
        $( "#red" ).slider( "value", 255 );
        $( "#green" ).slider( "value", 140 );
        $( "#blue" ).slider( "value", 60 );
    });    
}
function fDelItem(itemId,iMode) {
    switch (iMode) {
        case 0: // Inactive Site
           var x=window.confirm('You are about to Inactivate a site\n\n if correct, press OK, else CANCEL');
            if (!x) {
                return;
                break;
            }
 
            $.get('/OXPFUNCS.php?FUNC=INACTIVATESITE&SiteId='+itemId);
            $('#divTB_'+itemId).removeAttr( "style" ).fadeOut();

            break;
    }
}
function fDelHeadline(headlineId) {
    var x=window.confirm('You are about to Inactivate a site\n\n if correct, press OK, else CANCEL');
    if (!x) {
        return;
    }
 
    $.get('/OXPFUNCS.php?FUNC=DELHEADLINE&hlid='+headlineId);
    $('#HLRow_'+headlineId).removeAttr( "style" ).fadeOut();

}
function fLoadWidget(widget,params) {

    switch (widget) {
        case 0:
            document.getElementById('oxpWidgetsOptions').style.display='none';
            $('#divWidgetContainer').load('/OXPFUNCS.php?FUNC=FS'+params,
                function() {
                    fSimpleSort('#SortableList2',0 );
                    fCreateUploader('divULFiles',['css'],true,10);
                }
            );
            $('#divWidgetContainer').fadeIn();
            
            break;        
        case 1:
            document.getElementById('oxpWidgetsOptions').style.display='none';
            $('#divWidgetContainer').load('/OXPFUNCS.php?FUNC=FS'+params,
                function() {
                    fSimpleSort('#SortableList2',0 );
                    fCreateUploader('divULFiles',['js'],true,11)
                }
            );
            $('#divWidgetContainer').fadeIn();
            
            break;

        case 2:
            document.getElementById('oxpWidgetsOptions').style.display='none';
            $('#divWidgetContainer').load('/OXPFUNCS.php?FUNC=RSS'+params,
                function() {
                    fSimpleSort('#SortableList2',0 );
                }
            );
            $('#divWidgetContainer').fadeIn();
            
            break; 
            
        case 5:
            document.getElementById('oxpWidgetsOptions').style.display='none';
            $('#divWidgetContainer').load('/OXPFUNCS.php?FUNC=FS'+params,
                function() {
                    fSimpleSort('#SortableList2',0 );
                    fCreateUploader('divULFiles',['bmp','gif','jpg','png','tif','jpeg'],true,12)
                }
            );
            $('#divWidgetContainer').fadeIn();
            
            break; 
            
        case 6:
            document.getElementById('oxpWidgetsOptions').style.display='none';
            $('#divWidgetContainer').load('/OXPFUNCS.php?FUNC=FS'+params,
                function() {
                    fSimpleSort('#SortableList2',0 );
                    fCreateUploader('divULFiles',['eot','svg','woff','fnt','ttf','otf','fon'],true,13)
                }
            );
            $('#divWidgetContainer').fadeIn();
            
            break;
        
        case 8:
            document.getElementById('oxpWidgetsOptions').style.display='none';
            $('#divWidgetContainer').load('/OXPFUNCS.php?FUNC=HEADLINES'+params,
                function() {
                    fHealthlineHousekeeping();
                }
            );
            $('#divWidgetContainer').fadeIn();
            
            break;            
    }
}
function fHealthlineHousekeeping() {
   // document.getElementById('StdFormElems').style.display='';
    
    $( "#StartDate" ).datepicker({
        numberOfMonths: 2,
        showButtonPanel: true
    });   
    $( "#EndDate" ).datepicker({
        numberOfMonths: 2,
        showButtonPanel: true
    });   
    
    fCreateUploader('divAuthorImageFiles',['bmp','gif','jpg','png','tif','jpeg'],false,16, 'CallBackAuthor');
    fCreateUploader('divHeadlineImageFiles',['bmp','gif','jpg','png','tif','jpeg'],false,17, 'CallBackHeadline');
    
    if (document.getElementById('db_Priority').value) {
        document.getElementById('Priority').selectedIndex=document.getElementById('db_Priority').value;
    } else {
        document.getElementById('Priority').selectedIndex=0;
    }
}
function fGetEditorHTML(event,elem) {
    
    var myinstances = [];

    //this is the foreach loop
    for(var i in CKEDITOR.instances) {

        /* this  returns each instance as object try it with alert(CKEDITOR.instances[i]) */
        CKEDITOR.instances[i]; 
        
        /* this returns the names of the textareas/id of the instances. */
        CKEDITOR.instances[i].name;

        /* returns the initial value of the textarea */
        CKEDITOR.instances[i].value;  
 
        /* this updates the value of the textarea from the CK instances.. */
        CKEDITOR.instances[i].updateElement();

       /* this retrieve the data of each instances and store it into an associative array with
           the names of the textareas as keys... */
        myinstances[CKEDITOR.instances[i].name] = CKEDITOR.instances[i].getData();
        //alert (CKEDITOR.instances[i].getData());
        CKEDITOR.instances[i].destroy();
    }    
    var pars=document.getElementsByTagName('*');
    var sAllHTML='';
    var sAllIds='';
    var sDelim='';
    var sComma='';
    for (i=0;i<pars.length;i++) {
        if (pars[i].id) {
            if (pars[i].id.indexOf('XPageContainer_')==0) {
                //sAllHTML=sAllHTML+sDelim+pars[i].innerHTML;
                //sDelim='~1XP~';
                var sA=pars[i].id.split('_');
                //var sAllIds=sAllIds+sComma+sA[1];
                //sComma=','
                document.getElementById('XPG_HTML').value=pars[i].innerHTML;
                document.getElementById('XPG_IDS').value=sA[1];                
                fSaveBasicPage(event,'formAllHTML',-1);
            }
        }
    }
//    for (i=0;i<pars.length;i++) {
//        if (pars[i].id) {
//            if (pars[i].id.indexOf('XPageContainer_')==0) {
//                var sA=pars[i].id.split('_');
//                fBuildStreamMsg('Updating Content: '+sA[1]);
//            }
//        }
//    }    
//    setTimeout(function() {
//        $( "#StdMsg:visible" ).removeAttr( "style" ).fadeOut();
//        }, 3000 );
//    //fBuildStdMsg('Updated');
    //alert ('Changes to OneXPage have been saved');
    //sAllHTML=sAllHTML.replace(/contenteditable="true"/g,'');
    //document.getElementById('XPG_HTML').value=sAllHTML;
    //document.getElementById('XPG_IDS').value=sAllIds;
    
    //elem.submit();
   
}
function fSelectSiteType(siteType, elem) {
    pars=elem.parentNode.getElementsByTagName('div');
    for (i=0;i<pars.length;i++) {
        if (pars[i].className.indexOf('Outer')!=-1) {
            pars[i].className='Outer';
        }
    }
    elem.className='Outer Selected';
    document.getElementById('SDSiteType').value=siteType;
}

function fGeoCodeToField() {
    geocoder = new google.maps.Geocoder();
    var address = $('Addr1').value+','+$('City').value+','+$('State').value+','+$('PostalCode').value;
 	geocoder.geocode({
        'address': address,
        'partialmatch': true}, fgeocodeResult);
    
   geocoder=null;
}
function fgeocodeResult(results, status) {
    if (status == 'OK' && results.length > 0) {
        latLng=results[0].geometry.viewport
        $('txtLatLng').value=latLng
        a=$('txtLatLng').value.split('),');
        sLL=a[0];
        sLL=sLL.replace(/\(|\)/gi,'')
        $('txtLatLng').value=sLL;
    } else {
        alert("Geocode was not successful for the following reason: " + status);
    }
}
function fReinstateSite(siteId) {
    var x=window.confirm('You are about to reinstate a site, if correct, press OK, else CANCEL');
    if (!x) {
        return;
    }    

    $('#Site_'+siteId).load('/OXPFUNCS.php?FUNC=REINSTATESITE&sid='+siteId,
        function() {$('#Site_'+siteId).fadeIn();fBuildStdMsg('Site Reinstated');self.location='/OXP_TENNANTLIST';
            }
        );    
    
}
function fDelSite(siteId) {
    var x=window.confirm('YOU ARE ABOUT PERMENANTLY DELETE A SITE HOMEY, if correct, press OK, else CANCEL');
    if (!x) {
        return;
    }
     
    $('#Site_'+siteId).load('/OXPFUNCS.php?FUNC=DELSITE&sid='+siteId,
        function() {$('#Site_'+siteId).fadeIn();fBuildStdMsg('Site Permenantly Deleted');
            }
        );      
}