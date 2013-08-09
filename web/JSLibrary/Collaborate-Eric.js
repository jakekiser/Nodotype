var WallPollTimer;

function fPostWallMsg(msgType,msgElem) {
    if (document.getElementById(msgElem).value.length<1) {
        alert ('You have not updated your status... simply type your update and press the \'Share\' button');
        return;
    }
    document.getElementById('WM_WallMsg').value=document.getElementById(msgElem).value;
    document.getElementById('WM_MsgType').value=msgType;
    document.getElementById(msgElem).value='';
    document.getElementById('WM_WallPostSubmit').click();
}
function fAddWallPostToStream() {
    $('.MainWall').toggleClass('NoEntry');
    eval (document.getElementById('HKAX').innerHTML);
    sHTML=fBuildWallPost(oDAWallPost);
    sHTML=sHTML+'<br class=ClearFloat />';
    
    var oNode = document.createElement('div');
    oNode.setAttribute('display','none')
    oNode.setAttribute('id','divWR_'+oDAWallPost['WMID']);
    oNode.innerHTML=sHTML;		
                        
    document.getElementById('MainWallMsgs').insertBefore(oNode,document.getElementById('MainWallMsgs').firstChild);
    $('#divWR_'+oDAWallPost['WMID']).fadeIn();
}
function fBuildFullWall() {
    eval (document.getElementById('WallMsgJSON').innerHTML);
    
    var sHTML='';
    
    if (oDAWall.length>0) {
        for (i=0;i<oDAWall.length;i++) {
            sHTML=sHTML+fBuildWallPost(oDAWall[i]);
        }
        sHTML=sHTML+'<br class=ClearFloat />';
        document.getElementById('MainWallMsgs').innerHTML=sHTML;
    }    
    
}
function fBuildWallPost(oDAWall) {
    
    var sOwnerDelHTML='';
    if (oDAWall['UserId']==gUserId) {
        sOwnerDelHTML='<div class=Delete title=\"Delete your post\" onclick=fDelPost('+oDAWall['WMID']+');><img src=/images/spacer.gif /></div>';
    }    
    
    sHTML=' <div class="divWallRow divWallType_'+oDAWall['MsgType']+'" id=divWR_'+oDAWall['WMID']+'>'
    + '     <div class=divWRMainImage><img src='+oDAWall['UserImage']+' /></div>'
    + '     <div class=divWREntityImage><img src='+oDAWall['EntityImage']+' /></div>'
    + sOwnerDelHTML
    + '     <div class=divWRInner>'
    + '        <div class=divWRName><span>'+oDAWall['FirstName']+' '+oDAWall['LastName']+'</span></div>'
    + '        <div class=divWRMessage><span>'+oDAWall['Message']+'</span></div>'
    + '        <div class=OptionalFunctions>'
    + '             <div class=Like><a href=javascript:void(0);>Like</a></div>'
    + '             <div class=Comment><a href=javascript:void(0);>Comment</a></div>'
    + '             <div class=Follow><a href=javascript:void(0);>Follow</a></div>'
    + '             <div class=Share><a href=javascript:void(0);>Share</a></div>'
    + '             <div class=divWRDate><span>'+oDAWall['CreateDate']+'</span></div>'
    + '             <br class=ClearFloat />'
    + '        </div>'
    + '     </div>'
    + '</div>'; 

    return sHTML;
}
function fBuildFullGroupList() {
    eval (document.getElementById('GAX').innerHTML);
    
    var sHTML='';
    
    if (oDAGroups.length>0) {
        for (i=0;i<oDAGroups.length;i++) {
            sHTML=sHTML+fBuildGroupList(oDAGroups[i]);
        }
        document.getElementById('divGroupList').innerHTML=sHTML;
    }    
    
}
function fBuildGroupList(oDAGroups) {
    
    
    sHTML=' <li class="divGroupRow" id=divGR_'+oDAGroups['GroupId']+'>'
    + '         <div class=divGroupLogo><img src='+oDAGroups['GroupLogo']+' /></div>'
    + '         <div class=divGRInner>'
    + '             <div class=divGRName><a href="javascript:void(0);" onclick="fDisplayAjaxBox(\'FUNC=EDITGROUP&gtnt='+oDAGroups['GroupId']+'\',0,\'fInstProfilePhoto(21)\');"/><span>'+oDAGroups['Name']+'</span></a></div>'
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
    WallPollTimer=window.setInterval(function() {$("#WallMsgJSON").load("/OXPFUNCS.php?FUNC=WALLMESSAGES&Refresh=1;",function() {fBuildFullWall();})}, 10000);
    }
}

// Start up JS
$(document).ready(function(){
    if (document.getElementById('MainWallMsgs')) fBuildFullWall();
    if (document.getElementById('GAX')) $("#GAX").load("/OXPFUNCS.php?FUNC=GROUPLIST",function() {fBuildFullGroupList()});
    $('#MainMessage').bind('focus', function() {
        $('.MainWall').toggleClass('NoEntry');
    });
    //WallPollTimer();
});	