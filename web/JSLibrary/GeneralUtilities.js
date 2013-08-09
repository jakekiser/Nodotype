function fHideElems(className, selector) {
    if (!selector) {
        selector='p';
    }
    pars=document.getElementsByTagName(selector);
    for (i=0;i<pars.length;i++) {
        if (pars[i].className.indexOf(className)!=-1) {
            pars[i].style.display='none';
        }
    }
}
function isNumOrChar (InString)  {
	if(InString.length < 1) 
		return true;

  var iChars = "!@#$%^&*()+=[]\\\';,./{}|\":<>?";
  var l_SpecialCharacterFound = 0;
  
  for (var i = 0; i < InString.length; i++) {
  	if (iChars.indexOf(InString.charAt(i)) != -1) {
	  	l_SpecialCharacterFound = 1;
	}
  }
	if (l_SpecialCharacterFound ) {
  		return false;
	 	}
	else {
		return true;
	}
}
function isNum (InString)  {
if(InString.length < 1) 
		return true;

  var iChars = "1234567890";
  var l_NonNumericFound = 0;
  
  for (var i = 0; i < InString.length; i++) {
  	if (iChars.indexOf(InString.charAt(i)) == -1) {
	  	l_NonNumericFound = 1;
	}
  }
	if (l_NonNumericFound) {
  		return false;
	 	}
	else {
		return true;
	}
}
function isValidEmail(InString)
{
if(InString.length < 1) 
		return true;
  var result = false;
  var theStr = new String(InString);
  var index = theStr.indexOf("@");
  if (index > 0)
  {
    var pindex = theStr.indexOf(".",index);
    if ((pindex > index+1) && (theStr.length > pindex+1))
	result = true;
  }
  return result;
}
function fGetSubmit(elemId) {
   pars=document.getElementById(elemId).getElementsByTagName('input');
   for (i=0;i<pars.length;i++) {
       if (pars[i].getAttribute('Type')=='submit') {
           break;
       }
   }
   return pars[i];
}
function fBuildStdMsg(sText) {
    if (sText==-1) {
        return;
    }
    
    document.getElementById('StdMsg').innerHTML=sText;
    
    // get effect type from
    var selectedEffect = $( "#effectTypes" ).val();
    
    // run the effect
    var options = {};
    $( "#StdMsg" ).show( 'fade', options, 500, callback );

    //callback function to bring a hidden box back
    function callback() {
        setTimeout(function() {
            $( "#StdMsg:visible" ).removeAttr( "style" ).fadeOut();
        }, 3000 );
    };
}
function fDisplayAjaxBox(sFunc, sOption, sCallBack) {
    sFunc='/OXPFUNCS.php?'+sFunc;
    var posY=fDisplayCurtain();
    $('#dSCIBContainer').load(sFunc,
        function() {
            if (sOption==1) $('#StdFormElems').toggle();
            $('#dSCIB').fadeIn();
            fPositionSB();
            if (sCallBack) eval(sCallBack);
        }
    );
}
function fCloseCurtain () {
    $('#divShadowCurtain').fadeOut('slow', function() {
        $('#divShadowCurtain').empty();
        document.getElementById('HTMLBody').style.overflow='auto';
        if (document.getElementById('StdMsg')) document.getElementById('StdMsg').style.display='none';
        //if (document.getElementById('dSCIBContainer')) document.getElementById('dSCIBContainer').innerHTML='';
    
    });
}
function fDisplayCurtain () {
    
    //Display Curtain
    document.getElementById('divShadowCurtain').style.display='';
    document.getElementById('HTMLBody').style.overflow='hidden';

    // Size Curtain
    if(window.pageYOffset) {
        var h = document.getElementById('HTMLBody').scrollHeight;
    } else {
        var h = document.body.scrollHeight+ document.body.scrollTop;	
    }		
	
    // Find Offset for content positioning
    if(window.pageYOffset) {
        iPosY = window.pageYOffset;
    } else {
        iPosY = document.body.scrollTop;
    }
    
    document.getElementById('divShadowCurtain').style.top=iPosY+'px';
    
    // Build inner box
    if (!document.getElementById('dSCIB')) {
        var sHTML='<div id="dSCIB" style="display:none;"><div class=Close onclick=fCloseCurtain(); title="Close"><img src="/images/spacer.gif"/></div><div id="dSCIBContainer"></div></div>';
        document.getElementById('divShadowCurtain').innerHTML=sHTML;
    }
    
    return iPosY;
    // Display Content
    //DisplayAjaxPage (0,'divIFrame',pn,'',params,0,'',JSParams);	
	
    //document.getElementById('divMailBGContainer').style.top=posY+'px';
    //document.getElementById('divMailBGContainer').style.display='';

    //var h = document.getElementById('HTMLBody').clientHeight;
    //$('divMailDisplay').style.height=h*.8;
    //$('HTMLBody').style.overflow='hidden';
	
    //$('divIFrame').style.height=$('divMailDisplay').clientHeight-$('divCloseWin').offsetHeight-($('divMailDisplay').offsetHeight-$('divMailDisplay').clientHeight);

}
function fPositionSB() {
    
    if (!document.getElementById('dSCIB')) return;
    
    var iInnerHeight=parseInt(document.getElementById('dSCIB').offsetHeight);
    var iOuterHeight=parseInt(document.getElementById('divShadowCurtain').offsetHeight);
    
    if(window.pageYOffset) {
        iPosY = window.pageYOffset;
    } else {
        iPosY = document.body.scrollTop;
    }
    //iPosY=iPosY+50;
    //iOuterHeight=iOuterHeight-50;
    
    if (iOuterHeight<iInnerHeight) {
        iInnerHeight=iOuterHeight*.7;
        document.getElementById('dSCIBContainer').style.height=iInnerHeight+'px';
        document.getElementById('dSCIBContainer').style.overflow='auto';
    }
    
    //var iTopPos=(((((iInnerHeight/iOuterHeight)*100)-100)*-1)/2)+50;
    //Need to deal w/ "Advanced" options
    var iTopPos=((iOuterHeight/2)-(iInnerHeight/2));
    
    document.getElementById('dSCIB').style.top=iTopPos+'px';
    
    return iTopPos;
}
function fInstProfilePhoto(photoType) {
    if (!photoType) var photoType=18;
    
    if (photoType==18) {
        sCB='CallBack';
    } else {
        sCB='CallBackGrpPhoto';    
    }
    fCreateUploader('UploadPhotoURL',['bmp','gif','jpg','png','tif','jpeg'],false,photoType,sCB,'Upload Picture');
}
function fCreateUploader(elemId,extType, multi,ft, callBackId, buttText) {
    
    var CallBackFunc='CallBack';
    
    if (!ft) ft=0;
    if (!extType) extType='[]';
    if (callBackId) CallBackFunc=callBackId;
    var uploader = new qq.FineUploader({
        element: document.getElementById(elemId),
        callbacks: {
            onComplete: function(id, fileName, responseJSON) {
                if (responseJSON.success == true) {
                   $(this.getItemByFileId(id)).hide(2000);
                };
                if (document.getElementById(CallBackFunc)) {
                    eval(document.getElementById(CallBackFunc).value);
                    if (ft==15) {
                        document.getElementById('Favicon').value='/DZ/'+document.getElementById('TennantId').value+'/f/'+fileName;
                    }
                    if (ft==16) {
                        document.getElementById('AuthorImage').value='/DZ/'+document.getElementById('TennantId').value+'/f/'+fileName;
                    }
                    if (ft==17) {
                        document.getElementById('HeadlineImage').value='/DZ/'+document.getElementById('TennantId').value+'/f/'+fileName;
                    }
                    if (ft==18) {
                        document.getElementById('PhotoURL').value='/DZ/'+document.getElementById('TennantId').value+'/f/'+fileName;
                        document.getElementById('imgProfPhoto').src=document.getElementById('PhotoURL').value;
                    }
                    if (ft==19) {
                        document.getElementById('RSSImage').value='/DZ/'+document.getElementById('TennantId').value+'/f/'+fileName;
                    }
                    if (ft==20) {
                        document.getElementById('PageImageURL').value='/DZ/'+document.getElementById('TennantId').value+'/f/'+fileName;
                    }
                    if (ft==21) {
                        document.getElementById('GroupPhotoURL').value='/DZ/'+document.getElementById('TennantId').value+'/f/'+fileName;
                        document.getElementById('imgGroupPhoto').src=document.getElementById('GroupPhotoURL').value;
                    }                    
                };
            }
        },
        request: {
            endpoint: 'Includes/oxp_FileUploadServer.php?ft='+ft
        },
        multiple: multi,
        validation: {
            
            allowedExtensions: extType
        }       
    });
    if (ft==15) {
        document.getElementById('qqULText').value='';
    }  
    if (buttText) document.getElementById('qqULText').innerHTML=buttText;
}
function fSaveBasicPage(event,elem,msg,callBackId,addlJSONId) {
    
var CallBackFunc='CallBack';
if (callBackId) CallBackFunc=callBackId;
    
        if (!msg) {
            msg='Updated';
        }

        /* stop form from submitting normally */
        event.preventDefault();
        
        /* get some values from elements on the page: */
        
        var $form = $( this ),
            url = $form.attr( 'action' );
            
        if (document.getElementById(elem).action.indexOf('?FUNC')!=-1) url=document.getElementById(elem).action;
        
        CurrSub=fGetSubmit(elem);
        CurrSub.style.display='none';

        //* Send the data using post */
        var posting = $.post( url, $('#'+elem).serialize() );

        /* Put the results in a div */
        posting.done(function(data) {
            if(data != null && document.getElementById(addlJSONId)) $('#'+addlJSONId).text(data);
            fBuildStdMsg(msg);
            CurrSub.style.display='';
            if (document.getElementById(CallBackFunc)) {
                if (document.getElementById(CallBackFunc).value.length>0) {
                    eval(document.getElementById(CallBackFunc).value);
                }
            }
        });
  
}
function fSerializeSortPages() {
    var aId='';
    var sDelim='';
    var sId='';
    
    // Grab Active Navs
    pars=document.getElementById('SortableList').getElementsByTagName('li');
    for (i=0;i<pars.length;i++) {
        if (pars[i].id.indexOf('Row_')!=-1) {
            sId=pars[i].id;
            sId=sId.replace('Row_','');
            aId=aId+sDelim+sId;
            sDelim=',';
        }
    }
    
    // Grab Inactive Navs
    pars=document.getElementById('InactiveSortableList').getElementsByTagName('li');
    for (i=0;i<pars.length;i++) {
        if (pars[i].id.indexOf('Row_')!=-1) {
            sId=pars[i].id;
            sId=sId.replace('Row_','');
            aId=aId+sDelim+sId+'_';
            sDelim=',';
        }
    }    

    document.getElementById('SortArray').value=aId;
}

$(window).resize(function()
    {   
        fPositionSB();
    });
