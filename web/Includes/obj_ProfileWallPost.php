<?
require '/Includes/XCRED.php';
$iTennantId=$Persist_LoggedInTennantId;
$igUserId=$_GET['uid'];

?>
<form style="display:none;" name="formWallPost" id="formProfWallPost" action="/OXPFUNCS.php?FUNC=OXP_WALLMESSAGE" method="post" onsubmit="return(fSaveBasicPage(event,'formProfWallPost','-1','ProfCallBackMsg','PF_HKAX'))">
    <div style="display:none" id="PF_HKAX"></div>
    <input type="text" name="TennantId" id="PF_TennantId" value="<?echo $iTennantId ?>"/>
    <input type="text" name="UserId" id="PF_UserId" value="<?echo $Persist_UserId ?>"/>
    <input type="text" name="WallMsg" id="PF_WallMsg" />
    <input type="text" name="MsgType" id="PF_MsgType" />
    <input type="text" name="gUserId" id="PF_gUserId" value="<?echo $igUserId ?>" />
    
    <input type="hidden" class="xf_UpdInd" name="UpdInd" id="FileUpdInd"/>
    <input type="hidden" name="formModeInd" id="PFformMode" value="OXP_WALLMESSAGE"/>
    <input type="hidden" class="xf_UpdMode" name="formMode"/>
    <input type="hidden" name="CallBackMsg" id="ProfCallBackMsg" value="fAddWallPostToStream('PF_HKAX','CollabArea');"/>  
    <input type="submit" name="PF_WallPost" id="PF_WallPostSubmit" />
</form>
<div class="MainWall NoEntry">
    <div class="Inner">
        <div class="Functions">
            <div class="PostMessage Selected" onclick="fSelMsgOption(this);"><img src="/images/spacer.gif" />Post a Question</div>
            <div class="PostFile" onclick="fSelMsgOption(this);"><img src="/images/spacer.gif" />Post a File or Video</div>
            <br class="ClearFloat"/>
        </div>
        <div id="PF_PostContainer" class="PostContainer">
            <div id="PF_PostMessage">
                <div class="MessageBox">
                    <textarea name="WallMessage" id="PF_MainMessage" placeholder="Ask a question..."></textarea>
                </div>
                <div class="StdRow Footer Action">
                    <input type="button" onclick="fPostWallMsg(3,'PF_MainMessage','PF_');" name="WallPost" id="PF_WallPostShare" class="WallPost" value="Share"/>
                </div>
            </div>
            <div id="PostFile" class="PostFile NoShow">
                <div class="StdRow" id="UploadPhotos"></div>
            </div>
            <div id="PostPoll" class="DoSurvey NoShow">Do a Survey</div>        
        </div>
    </div>
</div>



