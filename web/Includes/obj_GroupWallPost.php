<?
?>
<form style="display:none;" name="formGroupWallPost" id="formGroupWallPost" action="/OXPFUNCS.php?FUNC=OXP_WALLMESSAGE" method="post" onsubmit="return(fSaveBasicPage(event,'formGroupWallPost','-1','GWP_CallBackMsg','GWP_HKAX'))">
    <div style="display:none" id="GWP_HKAX"></div>
    <input type="text" name="TennantId" id="GWP_TennantId" value="<?echo $iTennantId ?>"/>
    <input type="text" name="UserId" id="GWP_UserId" value="<?echo $Persist_UserId ?>"/>
    <input type="text" name="GroupId" id="GWP_GroupId" value="<?echo $iGroupId ?>"/>
    <input type="text" name="WallMsg" id="GWP_WallMsg" />
    <input type="text" name="MsgType" id="GWP_MsgType" />
    <input type="text" class="xf_UpdInd" name="UpdInd" id="GWP_UpdInd"/>
    <input type="text" name="formModeInd" id="GWP_formMode" value="OXP_WALLMESSAGE"/>
    <input type="text" class="xf_UpdMode" name="formMode"/>
    <input type="text" name="CallBackMsg" id="GWP_CallBackMsg" value="fAddWallPostToStream('GWP_HKAX','GroupMainWallMsgs');"/>  
    <input type="submit" name="GWP_WallPost" id="GWP_WallPostSubmit" />
</form>
<div class="MainWall NoEntry">
    <div class="Inner">
        <div class="Functions">
            <div class="PostMessage Selected" onclick="fSelMsgOption(this,'GWP_');"><img src="/images/spacer.gif" />Post a Question</div>
            <div class="PostFile" onclick="fSelMsgOption(this,'GWP_');"><img src="/images/spacer.gif" />Post a File or Video</div>
            <div class="PostPoll" onclick="fSelMsgOption(this,'GWP_');"><img src="/images/spacer.gif" />Create a Poll</div>
            <br class="ClearFloat"/>
        </div>
        <div id="GWP_PostContainer" class="PostContainer">
            <div id="GWP_PostMessage" class="PostMessage">
                <div class="MessageBox">
                    <textarea name="WallMessage" id="GWP_MainMessage" class="MainMessage" placeholder="Ask a question or share what you are working on..."></textarea>
                </div>
                <div class="StdRow Footer Action">
                    <input type="button" onclick="fPostWallMsg(1,'GWP_MainMessage','GWP_');" name="WallPost" id="GWP_WallPostShare" class="WallPost" value="Share"/>
                </div>
            </div>
            <div id="GWP_PostFile" class="PostFile NoShow">
                <div class="StdRow" id="GWP_UploadPhotos"></div>
            </div>
            <div id="GWP_PostPoll" class="DoSurvey NoShow">Do a Survey</div>        
        </div>
    </div>
</div>



