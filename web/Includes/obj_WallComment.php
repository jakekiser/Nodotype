<?php
require '/Includes/XCRED.php';
$iTennantId=$Persist_LoggedInTennantId;
$iMsgId=$_GET['mid'];
?>
<form onsubmit="return(fSaveBasicPage(event,'formCommentWallPost','-1','CMT_CallBackMsg','CMT_CAX'))" method="post" action="/OXPFUNCS.php?FUNC=OXP_WALLMESSAGE" id="formCommentWallPost" name="formCommentWallPost" style="display:none;">
    <div id="CMT_CAX" style="display:none"></div>
    <input type="text" value="<?echo $iTennantId ?>" id="CMT_TennantId" name="TennantId"/>
    <input type="text" value="<?echo $Persist_UserId ?>" id="CMT_UserId" name="UserId"/>
    <input type="text" value="<?echo $iMsgId ?>" id="CMT_MsgId" name="MsgId"/>
    <input type="text" id="CMT_WallMsg" name="WallMsg"/>
    <input type="text" id="CMT_MsgType" name="MsgType" value="100" />
    <input type="text" id="CMT_UpdInd" name="UpdInd" class="xf_UpdInd"/>
    <input type="text" value="OXP_WALLMESSAGE" id="CMT_formMode" name="formModeInd"/>
    <input type="text" name="formMode" class="xf_UpdMode"/>
    <input type="text" id="CMT_CallBackMsg" name="CallBackMsg" value="fAddWallPostToStream('CMT_CAX','divWRComments_<?echo $iMsgId ?>');"/>  
    <input type="submit" id="CMT_WallPostSubmit" name="CMT_WallPost"/>
</form>
<div class="divWallComment MainWall">
    <div class="Inner">
        <div class="MessageBox">
            <textarea placeholder="Post a comment on this message" id="CMT_MainMessage" name="WallMessage"></textarea>
        </div>
        <div class="StdRow Footer Action">
            <input type="button" value="Comment" class="WallPost" id="WallPostComment" name="WallPost" onclick="fPostWallMsg(100,'CMT_MainMessage','CMT_');">
        </div>        
    </div>
</div>
