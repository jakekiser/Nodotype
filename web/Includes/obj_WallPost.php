<?
require '/Includes/XCRED.php';
$iTennantId=$Persist_LoggedInTennantId;

?>
<form style="display:none;" name="formWallPost" id="formWallPost" action="/OXPFUNCS.php?FUNC=OXP_WALLMESSAGE" method="post" onsubmit="return(fSaveBasicPage(event,'formWallPost','-1','CallBackMsg','HKAX'))">
    <div style="display:none" id="HKAX"></div>
    <input type="text" name="TennantId" id="WM_TennantId" value="<?echo $iTennantId ?>"/>
    <input type="text" name="UserId" id="WM_UserId" value="<?echo $Persist_UserId ?>"/>
    <input type="text" name="WallMsg" id="WM_WallMsg" />
    <input type="text" name="MsgType" id="WM_MsgType" />
    <input type="hidden" class="xf_UpdInd" name="UpdInd" id="FileUpdInd"/>
    <input type="hidden" name="formModeInd" id="SIformMode" value="OXP_WALLMESSAGE"/>
    <input type="hidden" class="xf_UpdMode" name="formMode"/>
    <input type="hidden" name="CallBackMsg" id="CallBackMsg" value="fAddWallPostToStream();"/>  
    <input type="submit" name="WM_WallPost" id="WM_WallPostSubmit" />
</form>
<div class="MainWall NoEntry">
    <div class="Inner">
        <div class="Functions">
            <div class="PostMessage Selected" onclick="fSelMsgOption(this);"><img src="/images/spacer.gif" />Post a Question</div>
            <div class="PostFile" onclick="fSelMsgOption(this);"><img src="/images/spacer.gif" />Post a File or Video</div>
            <div class="PostPoll" onclick="fSelMsgOption(this);"><img src="/images/spacer.gif" />Create a Poll</div>
            <br class="ClearFloat"/>
        </div>
        <div id="PostContainer">
            <div id="PostMessage">
                <div class="MessageBox">
                    <textarea name="WallMessage" id="MainMessage" placeholder="Ask a question or share what you are working on..."></textarea>
                </div>
                <div class="StdRow Footer Action">
                    <input type="button" onclick="fPostWallMsg(0,'MainMessage');" name="WallPost" id="WallPostShare" class="WallPost" value="Share"/>
                </div>
            </div>
            <div id="PostFile" class="PostFile NoShow">
                <div class="StdRow" id="UploadPhotos"></div>
            </div>
            <div id="PostPoll" class="DoSurvey NoShow">Do a Survey</div>        
        </div>
    </div>
</div>



