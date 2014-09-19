var oWallPollTimer;

function fPostWallMsg(msgType,msgElem,preFix) {
    
    if (!preFix) preFix='WM_';
    if (document.getElementById(msgElem).value.length<1 && msgType==0) {
        alert ('You have not updated your status... simply type your update and press the SHARE button');
        return;
    }
    if (document.getElementById(msgElem).value.length<1 && msgType!=0) {
        alert ('You have not updated your post message... simply type your post message and press the SHARE button');
        return;
    }    
    document.getElementById(preFix+'WallMsg').value=document.getElementById(msgElem).value;
    document.getElementById(preFix+'MsgType').value=msgType;
    document.getElementById(msgElem).value='';
    document.getElementById(preFix+'WallPostSubmit').click();
}
function fAddWallPostToStream(jsonContainer,whichWall) {
    if (!jsonContainer) jsonContainer='HKAX';
    if (!whichWall) whichWall='MainWallMsgs';
    
    $('.MainWall').toggleClass('NoEntry');
    eval (document.getElementById(jsonContainer).innerHTML);
    sHTML=fBuildWallPost(oDAWallPost);
    sHTML=sHTML+'<br class=ClearFloat ></1>';
    
    var oNode = document.createElement('div');
    oNode.setAttribute('display','none')
    oNode.setAttribute('id','divWR_'+oDAWallPost['WMID']);
    oNode.innerHTML=sHTML;		
                        
    document.getElementById(whichWall).insertBefore(oNode,document.getElementById(whichWall).firstChild);
    $('#divWR_'+oDAWallPost['WMID']).fadeIn();
    
    $('.NoMessages').remove();
    
    fDestroyCommentBoxes();

}
function fBuildFullWall(jsonContainer, elemId) {
    
    if (!jsonContainer) jsonContainer='WallMsgJSON';
    if (!elemId) elemId='MainWallMsgs';  
    
    fCheckForLogout(jsonContainer);
    
    eval (document.getElementById(jsonContainer).innerHTML);
    
    var sHTML='';
    if (typeof(oDAWall) !== 'undefined') {
        
        // Get Messages
        if (oDAWall.length>0) {
            for (i=0;i<oDAWall.length;i++) {
                if (oDAWall[i]['MsgType']=='0' || oDAWall[i]['MsgType']=='1' || oDAWall[i]['MsgType']=='3') {
                    sHTML=sHTML+fBuildWallPost(oDAWall[i]);
                }
            }
            sHTML=sHTML+'<br class=ClearFloat >';
            document.getElementById(elemId).innerHTML=sHTML;
        }    
        // Get Comments
        if (oDAWall.length>0) {
            for (i=0;i<oDAWall.length;i++) {
                if (oDAWall[i]['MsgType']=='100') {
                    sHTML=fBuildWallPost(oDAWall[i]);
                    sHTML=sHTML+'<br class=ClearFloat ></1>';   
                    var oNode = document.createElement('div');
                    oNode.setAttribute('display','none')
                    oNode.setAttribute('id','divWR_'+oDAWall[i]['WMID']);
                    oNode.innerHTML=sHTML;                    
                    document.getElementById('divWRComments_'+oDAWall[i]['EntityId']).appendChild(oNode);
                }
            }            
        }
    }
}
function fBuildWallPost(oDAWall) {
    
    var sOwnerDelHTML='';
    if (oDAWall['UserId']==gUserId) {
        sOwnerDelHTML='<div class=Delete title=\"Delete your post\" onclick=fDelPost('+oDAWall['WMID']+');><img src=/images/spacer.gif /></div>';
    }    
    
    var sHref='void(0)';
    var sOnClick1='';
    var sOnClick2='';
    
    switch (oDAWall['MsgType']) {
        case '0':
        case '1':
        case '100':
            var sDestURL=fGetURL(0,oDAWall['UserId']);
            sOnClick1=sDestURL;            
            var sDestURL=fGetURL(1,oDAWall['EntityId2']);
            sOnClick2=sDestURL;
            break;
        case '3':
            var sDestURL=fGetURL(0,oDAWall['UserId']);
            sOnClick1=sDestURL;            
            var sDestURL=fGetURL(0,oDAWall['EntityId2']);
            sOnClick2=sDestURL;
            break;            
    }
    
    sHTML=' <div class="divWallRow divWallType_'+oDAWall['MsgType']+'" id=divWR_'+oDAWall['WMID']+'>'
    + '     <div id=divWRJSON_'+oDAWall['WMID']+' style=display:none;></div>'
    + '     <div class=divWRMainImage><img src='+oDAWall['UserImage']+' /></div>'
    + '     <div class=divWREntityImage><img src='+oDAWall['EntityImage']+' /></div>'
    + sOwnerDelHTML
    + '     <div class=divWRInner>'
    + '        <div class=divWRName><span '+sOnClick1+'>'+oDAWall['FirstName']+' '+oDAWall['LastName']+'</span></div>'
    + '        <div class=divWRName2><span class="General foundicon-chat"></span><span '+sOnClick2+'>'+oDAWall['EntityName2']+'</span></div><br class="ClearFloat"/>'
    + '        <div class=divWRMessage><span>'+oDAWall['Message']+'</span></div>'
    + '        <div class=OptionalFunctions>'
    + '             <div class=Like><a href=javascript:void(0); onclick=fLikeFollow('+oDAWall['WMID']+','+gUserId+',0);><span id="aLikeText_'+oDAWall['WMID']+'">Like</span></a></div>'
    + '             <div class=Comment><a href=javascript:void(0); onclick=fDisplayCommentBox('+oDAWall['WMID']+');>Comment</a></div>'
    + '             <div class=Share><a href=javascript:void(0);>Share</a></div>'
    + '             <div class=divWRDate><span>'+oDAWall['CreateDate']+'</span></div>'
    + '             <br class=ClearFloat />'
    + '        </div>'
    + '     </div>'
    + '     <div id=divWRComments_'+oDAWall['WMID']+'></div>'
    + '</div>'; 

    return sHTML;
}
function fDisplayCommentBox(msgId,pref) {
    
    if (!pref) pref='divW';
    
    // Destroy any existing comment boxes
    fDestroyCommentBoxes();
    
    // Stop Timer
    clearTimeout(oWallPollTimer);
    
    // Create div container for commentbox
    var sHTML='<div id=divCommentBox></div>';
    var nNode = document.createElement('div');
    nNode.innerHTML = sHTML;    
    
    //document.getElementById('divWR_'+msgId).appendChild(nNode);
    document.getElementById(pref+'_'+msgId).insertBefore(nNode,document.getElementById(pref+'Comments_'+msgId));
    
    $('#divCommentBox').load('/OXPFUNCS.php?FUNC=WALLCOMMENT&mid='+msgId); 
    
}
function fDestroyCommentBoxes() {
    pars=document.getElementsByTagName('div');
    for (i=0;i<pars.length;i++) {
        if (pars[i].id=='divCommentBox') {
            pars[i].parentNode.removeChild(pars[i]);
        }
    }
}
function fGetURL(mt,eid) {

    switch (mt) {
        case 0:
            return ' onclick=fBuildProfile('+eid+')';
            break;

        case 1:
            return ' onclick=fDisplayGroup('+eid+') ';
            break;
    }

}
function fBuildFullGroupList() {
    eval (document.getElementById('GAX').innerHTML);
    
    var sHTML='';
    
    if (typeof(oDAGroups) !== 'undefined') {
        if (oDAGroups.length>0) {
            for (i=0;i<oDAGroups.length;i++) {
                sHTML=sHTML+fBuildGroupList(oDAGroups[i]);
            }
        }
    }
    sHTML=sHTML+'<li title="View Group directory " class="Funcs GroupDirectory" onclick="fSetColl(this);"><span class="foundicon-folder"></span>Directory</li>';
    document.getElementById('divGroupList').innerHTML=sHTML;
}
function fBuildGroupList(oDAGroups) {
    
    var sEditFuncs='';
    if (oDAGroups['Admin']!=0) {
        sEditFuncs='<div class=Edit onclick=fDisplayAjaxBox(\'FUNC=EDITGROUP&gtnt='+oDAGroups['GroupId']+'\',0,\'fInstProfilePhoto(21)\');><img src="/images/spacer.gif"/></div>';
    }
    
    sHTML=' <li class="divGroupRow" id=divGR_'+oDAGroups['GroupId']+'>'
    + '         <div class=divGroupLogo><img src='+oDAGroups['GroupLogo']+' /></div>'
    + '         <div class=divGRInner>'
    + '             <div class=divGRName title="'+oDAGroups['Name']+'" onclick="fDisplayGroup(\''+oDAGroups['GroupId']+'\');"><span>'+oDAGroups['Name']+'</span></div>'
    + sEditFuncs
    + '         </div>'
    + '     </li>'; 

    return sHTML;
}
function fDelPost(wmid) {
    var x=window.confirm('You are about to delete your post, press OK, else CANCEL');
    if (!x) {
        return;
    }
 
    $.get('/OXPFUNCS.php?FUNC=DELPOST&WMID='+wmid);
    $('#divWR_'+wmid).removeAttr( "style" ).fadeOut();
}
function WallPollTimer() {
if (document.getElementById('MainWallMsgs')) {
    oWallPollTimer=window.setInterval(function() {$("#WallMsgJSON").load("/OXPFUNCS.php?FUNC=WALLMESSAGES&Refresh=1;",function() {fBuildFullWall();})}, 10000);
    }
}
function fLikeFollow(entityId,userId,likeType,optElemId) {
    switch(likeType) {
        case 0 :
          sPosText='Like';
          sNegText='Unlike';
          sIdPref='aLikeText_';
          $('#divWRJSON_'+entityId).load('/OXPFUNCS.php?FUNC=LIKEENTITY&uid='+userId+'&eid='+entityId+'&likeType='+likeType, 
            function() {
                if (document.getElementById('divWRJSON_'+entityId).innerHTML==0) {
                    document.getElementById(sIdPref+entityId).innerHTML=sPosText;
                } else {
                    document.getElementById(sIdPref+entityId).innerHTML=sNegText;
                }
            });          
          break;

        case 1 :
          sPosText='Following';
          sNegText='Follow';
          sIdPref='aFollowText_';
          var a=optElemId.split('_');
          var sElemPref=a[0];
          sElemPref=sElemPref.replace('JSON','');
          $('#'+optElemId).load('/OXPFUNCS.php?FUNC=LIKEENTITY&uid='+userId+'&eid='+entityId+'&likeType='+likeType, 
            function() {
                if (document.getElementById(optElemId).innerHTML!=0) {
                    document.getElementById(sElemPref+'Follow_'+entityId).innerHTML=sPosText;
                    document.getElementById(sElemPref+'Follow_'+entityId).className='FollowButtons Following';
                    if (document.getElementById('divGroupContainer')) document.getElementById('divGroupContainer').className='GroupFollowing';
                } else {
                    document.getElementById(sElemPref+'Follow_'+entityId).innerHTML=sNegText;
                    document.getElementById(sElemPref+'Follow_'+entityId).className='FollowButtons Follow';
                    if (document.getElementById('divGroupContainer')) document.getElementById('divGroupContainer').className='GroupFollow';
                }
            }); 
          if (document.getElementById('GAX')) $("#GAX").load("/OXPFUNCS.php?FUNC=GROUPLIST",function() {fBuildFullGroupList()});
          break; 
        
        case 5 :
          sPosText='Connected';
          sNegText='Request a Connection';
          sIdPref='divIPFollow_';
          var a=optElemId.split('_');
          var sElemPref='divIP';
          $('#'+optElemId).load('/OXPFUNCS.php?FUNC=LIKEENTITY&uid='+userId+'&eid='+entityId+'&likeType='+likeType, 
            function() {
                if (document.getElementById(optElemId).innerHTML!=0) {
                    document.getElementById(sElemPref+'Follow_'+entityId).innerHTML=sPosText;
                    document.getElementById(sElemPref+'Follow_'+entityId).className='FollowButtons Following';
                   // if (document.getElementById('divGroupContainer')) document.getElementById('divGroupContainer').className='GroupFollowing';
                } else {
                    document.getElementById(sElemPref+'Follow_'+entityId).innerHTML=sNegText;
                    document.getElementById(sElemPref+'Follow_'+entityId).className='FollowButtons Follow';
                    //if (document.getElementById('divGroupContainer')) document.getElementById('divGroupContainer').className='GroupFollow';
                }
            }); 
          break;          
      
    }
}
function fSetWallWidth() {
    if (!document.getElementById('PaneBigArea')) return;
    
    var sWidth=0;
    pars=document.getElementById('PaneBigArea').getElementsByTagName('div');
    for (i=0;i<pars.length;i++) {
        if (pars[i].className.indexOf('CenterPanes')!=-1) {
            sWidth=sWidth+parseInt(pars[i].offsetWidth);
        }
    }
    document.getElementById('PaneBigArea').style.width=sWidth+'px';
}
function fSetColl(elem) {
    
    // Plce all panes online
    //pars=document.getElementById('PaneBigArea').getElementsByTagName('div');
    //for (i=0;i<pars.length;i++) {
    //    pars[i].innerHTML=pars[i].innerHTML.replace('<!--','');
    //    pars[i].innerHTML=pars[i].innerHTML.replace('-->','');
    //} 
    
    // Cleanup Temp Divs
    pars=document.getElementById('PaneBigArea').getElementsByTagName('div');
    for (i=0;i<pars.length;i++) {
        if (pars[i].className.indexOf('Temp')!=-1) pars[i].innerHTML='';
    }
    
    // Unselect any selected divs... we will reselect momentarily
    pars=document.getElementById('CollFuncs').getElementsByTagName('li');
    for (i=0;i<pars.length;i++) {
        pars[i].className=pars[i].className.replace('Selected','');
    }
    var sA=elem.className.split(' ');
    var sFunc=sA[1];
    elem.className=elem.className+' Selected';
    
    // Process Function
   
    switch(sFunc) {
        case 'Wall':
            $('#PaneBigArea').animate({
                left: '0'
                }, 250, function() {
                // Animation complete.
            });
            break;
        case 'Influencers':
            $("#InfluencersCenterPane").load("/OXPFUNCS.php?FUNC=INFLUENCERS",function() {fBuildRSSBlocks()});
            fShiftFuncDisplay(sFunc);
            break;
            
        case 'GroupDirectory':
            $("#divGroupDirectoryJSON").load("/OXPFUNCS.php?FUNC=GROUPDIRECTORY",function() {fBuildGroupDirectory()});
            fShiftFuncDisplay(sFunc); 
            break;
            
        default:
            var leftPos=document.getElementById(sFunc+'CenterPane').offsetLeft;
            var nLeftPos=parseInt(leftPos)*-1;
            $('#PaneBigArea').animate({
                left: nLeftPos
                }, 250, function() {
                // Animation complete.
            });            
    }
    // Take Non-Selected DIVS offline
    //pars=document.getElementById('PaneBigArea').getElementsByTagName('div');
    //for (i=0;i<pars.length;i++) {
    //    if (pars[i].className!='Selected') {
    //        pars[i].innerHTML='<!--'+pars[i].innerHTML+'-->';
    //    }
    //}    
}
function fShiftFuncDisplay(sFunc) {
    var leftPos=document.getElementById(sFunc+'CenterPane').offsetLeft;
    var nLeftPos=parseInt(leftPos)*-1;
    $('#PaneBigArea').animate({
        left: nLeftPos
        }, 250, function() {
    // Animation complete.
    });      
}
function fDisplayGroup(gTnt) {
    $('#GroupCenterPane').load('/OXPFUNCS.php?FUNC=GROUPDISPLAY&gtnt='+gTnt, function() {
            fCreateUploader('GWP_UploadPhotos',['css','psd','bmp','wrf','xlsx','docx','pptx','vsd','ppt','doc','xls','pdf','xml','swf','mp3','mp4','jpg','gif','png','avi','zip','xml','psd','mpp','txt','eps', ],true,30,'','Search for a file, image or video to upload');
            $('#divIGDJSON_'+gTnt).load("/OXPFUNCS.php?FUNC=WALLMESSAGES&Refresh=1&eid="+gTnt+"&mt=1",function() {fBuildFullWall('divIGDJSON_'+gTnt,'GroupMainWallMsgs');}, 10000);
            $('#GWP_MainMessage').bind('focus', function() {
                $('.MainWall').toggleClass('NoEntry');
            });
    });
    
    var leftPos=document.getElementById('GroupCenterPane').offsetLeft;
    var nLeftPos=parseInt(leftPos)*-1;
    if (document.getElementById('PaneBigArea').offsetLeft!=nLeftPos) {
        $('#PaneBigArea').animate({
            left: nLeftPos
            }, 250, function() {
                // Animation complete.
        });
    } else {
        document.getElementById('PaneBigArea').style.display='none';
         $('#PaneBigArea').fadeIn();
    }
    
}
function fSelMsgOption(elem, pref) {
    if (!pref) pref='';
    
    pars=elem.parentNode.getElementsByTagName('div');
    for (i=0;i<pars.length;i++) {
        pars[i].className=pars[i].className.replace('Selected','');
    }
    elem.className=elem.className+' Selected';
    
    pars=document.getElementById(pref+'PostContainer').getElementsByTagName('div');
    for (i=0;i<pars.length;i++) {
        if (pars[i].className.indexOf('NoShow')<1  && (pars[i].id.indexOf('PostMessage')!=-1 || pars[i].id.indexOf('PostFile')!=-1 || pars[i].id.indexOf('PostPoll')!=-1)) {
            pars[i].className=pars[i].className=pars[i].className=pars[i].className+' NoShow';
        }
    }
    if (elem.className.indexOf('PostMessage')!=-1) {
        document.getElementById(pref+'PostMessage').className=document.getElementById(pref+'PostMessage').className.replace('NoShow','');
    }
    if (elem.className.indexOf('PostFile')!=-1) {
        document.getElementById(pref+'PostFile').className=document.getElementById(pref+'PostFile').className.replace('NoShow','');
    }
    if (elem.className.indexOf('PostPoll')!=-1) {
        document.getElementById(pref+'PostPoll').className=document.getElementById(pref+'PostPoll').className.replace('NoShow','');
    }     
}
function fBuildGroupDirectory() {

    var iTotCols=4;
    eval (document.getElementById('divGroupDirectoryJSON').innerHTML);
    var sHTMLArray= new Array();
   
    var sHTML='';
    var iACnt=0;
    
    if (oDAGroupDirectory.length>0) {
        //Initialize Array
        for (i=0;i<iTotCols;i++) {
            sHTMLArray[i]='';
        }
        for (i=0;i<oDAGroupDirectory.length;i++) {
            if (iACnt==iTotCols) {
                iACnt=0;
            }
            
            if (oDAGroupDirectory[i]['FollowStatus']>0) {
                sFollowStatus='Following';
            } else {
                sFollowStatus='Follow';
            }
   
            sHTML=' <div class="divGDRow" id=divGD_'+oDAGroupDirectory[i]['GroupId']+'>'
                + '     <div class=divGDInner>'
                + '        <div id="divGDImage_'+oDAGroupDirectory[i]['GroupId']+'" class=divGDImage onclick="fDisplayGroup('+oDAGroupDirectory[i]['GroupId']+')"><img src='+oDAGroupDirectory[i]['GroupLogo']+' /></div>'
                + '        <div id="divGDName_'+oDAGroupDirectory[i]['GroupId']+'" class=divGDName onclick="fDisplayGroup('+oDAGroupDirectory[i]['GroupId']+')">'+oDAGroupDirectory[i]['Name']+'</div>'
                + '        <div id="divGDDescription_'+oDAGroupDirectory[i]['GroupId']+'" class=divGDDescription><span>'+oDAGroupDirectory[i]['Description']+'</span></div>'
                + '        <div class=divGDFollow><div onclick="fLikeFollow('+oDAGroupDirectory[i]['GroupId']+','+gUserId+',1,\'divGDJSON_'+oDAGroupDirectory[i]['GroupId']+'\');" class="FollowButtons '+sFollowStatus+'" id="divGDFollow_'+oDAGroupDirectory[i]['GroupId']+'">'+sFollowStatus+'</div><br class="ClearFloat"/></div>'
                + '        <div id="divGDJSON_'+oDAGroupDirectory[i]['GroupId']+'" style=display:none;></div>'
                + '        <div class=divFollowers><img src='+oDAGroupDirectory[i]['TotFollowers']+' /></div>'
                + '     </div>'
                + '</div>';
            sHTMLArray[iACnt]=sHTMLArray[iACnt]+sHTML;
            iACnt=iACnt+1;
        }
        sHTML='';
        for (i=0;i<sHTMLArray.length;i++) {
            sHTML=sHTML+'<div class="divGDCols" id="divGDCol_'+i+'">'
            + sHTMLArray[i]
            + '</div>';
        }
        sHTML=sHTML+'<br class=ClearFloat />';
        document.getElementById('GroupDirectoryCenterPane').innerHTML=sHTML;
    }
    
    //if (oDAGroupDirectory[0]['RSSCOLS'].length>0) {
     //   $('.divRCols').css( 'width', (10/iTotCols)*10+'%');
    //}
}
function fCheckForJSONContainer(elemId) {
    if (!document.getElementById(elemId)) {
        var oNode = document.createElement('div');
        oNode.setAttribute('style','display:none')
        oNode.setAttribute('id',elemId);
        document.getElementById('HTMLBody').appendChild(oNode);
    }
}
function fBuildProfile(uid) {
    fCheckForJSONContainer('divProfileJSON');
    $("#divProfileJSON").load("/OXPFUNCS.php?FUNC=PROFILEDISPLAY&uid="+uid,function() {
        var sHTML=fBuildProfileHTML();
        document.getElementById('ProfileDisplayCenterPane').innerHTML=sHTML;
        $('#CollabAreaWallPost').load("/OXPFUNCS.php?FUNC=PROFILEWALLPOST&uid="+uid, function() {
            $('#PF_MainMessage').bind('focus', function() {
                $('.MainWall').toggleClass('NoEntry');
            });
        });                
        $('#divIPJSON').load("/OXPFUNCS.php?FUNC=WALLMESSAGES&Refresh=1&eid="+uid+"&mt=3",function() {fBuildFullWall('divIPJSON','CollabArea');}, 10000);        
        fShiftFuncDisplay('ProfileDisplay'); 
        
    });
}
function fBuildProfileHTML() {

    eval (document.getElementById('divProfileJSON').innerHTML);
    
    iCnt=0;
    sHTML='';
    for (i=0;i<oDAProfile.length;i++) {
        sAddr='<div>'+oDAProfile[i]['Addr1']+'</div>';
        if (oDAProfile[i]['Addr2'].length>0) sAddr=sAddr+'<div>'+oDAProfile[i]['Addr2']+'</div>';
        if (oDAProfile[i]['Addr3'].length>0) sAddr=sAddr+'<div>'+oDAProfile[i]['Addr3']+'</div>'
        if (oDAProfile[i]['City'].length>0) sAddr=sAddr+'<div><span>'+oDAProfile[i]['City']+',<span>'
        if (oDAProfile[i]['State'].length>0) sAddr=sAddr+'<span>'+oDAProfile[i]['State']+'</span>'
        if (oDAProfile[i]['PostalCode'].length>0) sAddr=sAddr+'<span>'+oDAProfile[i]['PostalCode']+'</span>'
        if (oDAProfile[i]['Country'].length>0) sAddr=sAddr+'<div>'+oDAProfile[i]['Country']+'</div>'
        sAddr=sAddr+'<div class=Since>Member since: '+oDAProfile[i]['CreateDate']+'</div>';
        sAdrr=sAddr+'</div>';
        
        sHTML='<div class=gProfile>'
        +'<div class=Inner>'
        +'  <div class=Details>'
        +'      <div class=Photo><img src=\''+oDAProfile[i]['PhotoURL']+'\'/></div>'
        +'      <div onclick="fLikeFollow('+oDAProfile[i]['UserId']+','+gUserId+',5,\'divIPJSON\');" class="FollowButtons Follow" id="divIPFollow_'+oDAProfile[i]['UserId']+'">Connect</div>'
        +'      <div class=DetailContainer>'
        +'          <h2>'+oDAProfile[i]['FirstName']+' '+oDAProfile[i]['LastName']+'</h2>'
        +'          <div class=Addr>'+sAddr+'</div>'
        +'      </div>'
        +'  </div>'
        +'</div>'
        +'<div id=CollabAreaWallPost></div>'
        +'<div id=CollabArea><div class=NoMessages>There are no messages available for this profile</div></div>'
        +'<div id=divIPJSON style=display:none;></div>'
        +'</div>';
    }
    return sHTML;
}
function fSearchByName(elem) {
    document.getElementById('divSearchResults').style.display='none';

    if (elem.value.length<1) return;
    
    var sSearchVal='';
    sSearchVal=elem.value;
    $("#divSearchJSON").load("/OXPFUNCS.php?FUNC=SEARCH&s="+document.getElementById('SearchForm').value,function() {fBuildSearchResults()})
    
}
function fCheckForLogout(elemId) {
    if (document.getElementById(elemId).innerHTML.indexOf('[[LOGGEDOUT]]')!=-1) {
        self.location='/oxp?tnt='+gTennantId+'&EditMode=0&m=_999';
    }
}
function fBuildSearchResults() {
    
    if (document.getElementById('divSearchJSON').innerHTML.length<1) return;
    
    fCheckForLogout('divSearchJSON');
    
    if (typeof(oDASearch) == 'undefined') {
        delete oDASearch;
    }
    document.getElementById('divSearchResults').innerHTML='';
    
    eval (document.getElementById('divSearchJSON').innerHTML);
    var sHTMLArray= new Array();
   
    var sHTML='';
    
    if (oDASearch.length>0) {
        for (i=0;i<oDASearch.length;i++) {
            
            var sLink='';
            switch (oDASearch[i]['Type']) {
                case '1':
                    sLink=' onclick=fCloseSearch();fDisplayGroup(\''+oDASearch[i]['EntityId']+'\'); ';
                    break;
                default:
                    sLink='onclick=fCloseSearch();fBuildProfile(\''+oDASearch[i]['EntityId']+'\');';
                    break;
            }
   
            sHTML=sHTML+' <div '+sLink+' title="Click to view" class="divSRow" id=diSR_'+oDASearch[i]['EntityId']+'>'
                + '     <div class=Inner>'
                + '        <div class=Logo><img src='+oDASearch[i]['Logo']+' /></div>'
                + '        <div class=Name >'+oDASearch[i]['Name']+'</div>'
                + '         <br class="ClearFloat"/>'
                + '     </div>'
                + '</div>';
        }

        document.getElementById('divSearchResults').innerHTML=sHTML;
        document.getElementById('divSearchResults').style.display='';
    }
}
function fCloseSearch() {
   // $('#divSearchResults').fadeOut();
    $( "#divSearchResults:visible" ).removeAttr( "style" ).fadeOut();
    document.getElementById('divSearchResults').innerHTML='';   
    document.getElementById('SearchForm').value='';   
    
    
    //document.getElementById('divSearchResults').style.display='none';
}
function fDelGroup(gid) {
    var x=window.confirm('You are about to delete a group, press OK, else CANCEL');
    if (!x) {
        return;
    }
 
    $.get('/OXPFUNCS.php?FUNC=DELETEGROUP&gid='+gid, function() {
        if (document.getElementById('GAX')) $("#GAX").load("/OXPFUNCS.php?FUNC=GROUPLIST",function() {fBuildFullGroupList()});
        fCloseCurtain();
    });
}
// Start up JS

$(document).ready(function(){
    if (document.getElementById('MainWallMsgs')) fBuildFullWall();
    fSetWallWidth();
    
    // Initiate Uploader
    fCreateUploader('UploadPhotos',['css','psd','bmp','wrf','xlsx','docx','pptx','vsd','ppt','doc','xls','pdf','xml','swf','mp3','mp4','jpg','gif','png','avi','zip','xml','psd','mpp','txt','eps', ],true,30,'','Search for a file, image or video to upload')
    if (document.getElementById('GAX')) $("#GAX").load("/OXPFUNCS.php?FUNC=GROUPLIST",function() {fBuildFullGroupList()});
    
    $('#MainMessage').bind('focus', function() {
        $('.MainWall').toggleClass('NoEntry');
        fDestroyCommentBoxes();
        //WallPollTimer();
    });
    $("#WallMsgJSON").load("/OXPFUNCS.php?FUNC=WALLMESSAGES&Refresh=1;",function() {fBuildFullWall();});
    $('.StdXPage').click(function() {fCloseSearch();});
    WallPollTimer();
});	