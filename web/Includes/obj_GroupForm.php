<?
    $iTennantId=$_GET['tnt'];
    if (strlen($iTennantId)<1) {
        $iTennantId=$_COOKIE["CCtnt"];
    }   
    $iGroupId=$_GET['gtnt'];
    
    if (strlen($iTennantId)<1) $iTennantId=$_COOKIE["tnt"];    
    if (strlen($ProfStyle)<1) $ProfStyle=1;
    
    if ($ProfStyle==0) {
        $AcProcType=0;
        $AcMode='Add';
    } else {
        $AcProcType=1;
        $AcMode='Edit';
    }
    
    
    $sImgGroupLogo='/images/NoGroupLogo.png';
    if (strlen($iGroupId)>0) {
        $SQL="select ifnull(g.GroupLogo,'/images/NoGroupLogo.png') as GroupLogo, g.Name, g.Description, g.CreateDate from DA_Group g"
        .' where g.GroupId='.$iGroupId;
        $result = mysql_query($SQL);  
        $num_rows = mysql_num_rows($result);
        if ( $num_rows >0 ){         
            while($row = mysql_fetch_array($result)) {    
                $sName=$row['Name'];
                $sDescription=$row['Description'];
                $sImgGroupLogo=$row['GroupLogo'];
            }
        }        
    } else {
        $iGroupId=0;
    }
?>
            <div id="divForm" class="ProfileStyle_<?echo $ProfStyle ?>">
                <div class="xMenu">      
                    <div title="Save Group Profile" class="Save" id="SaveBtn">
                        <a onclick="document.getElementById('ProfileSaveButton').click();" href="javascript:void(0);"><img src="/images/spacer.gif"></a>
                    </div> 
                    <div title="Delete Profile" class="Delete" id="DelBtn">
                        <a onclick="fDelGroup('<?echo $iGroupId ?>')" href="javascript:void(0);"><img src="/images/spacer.gif"></a>
                    </div>                    
                    <br class="ClearFloat">  
                </div>
                <h3 class="EditTitle"><?echo $AcMode ?> Group</h3>
                <form class="BasicForm" name="formGroupEdit" id="formGroupEdit" method="post" action="/OXPFUNCS.php?FUNC=OXP_EDITGROUP" onsubmit="return(fSaveBasicPage(event,'formGroupEdit','-1','CallBackGrp','GAX'))">
                    <input type="hidden" class="xf_UpdInd" name="UpdInd" id="UpdInd"/>
                    <input type="hidden" name="formModeInd" id="AcFormMode" value="EDITGRoUP"/>
                    <input type="hidden" name="UserId" id="xf_UserId" value="<?echo $Persist_UserId ?>"/>
                    <input type="hidden" class="xf_UpdMode" name="formMode"/>
                    <input type="hidden" class="xf_ProfStyle" name="ProfStyle" value="<?echo $ProfStyle ?>"/>
                    <input type="hidden" class="xf_ProfUserId" name="ProfUserId" value="<?echo $Persist_UserId ?>"/>
                    <input type="hidden" id="GroupId" name="GroupId" value="<?echo $iGroupId ?>"/>
                    <input type="hidden" id="TennantId" name="TennantId" value="<?echo $iTennantId ?>"/>
                    <input type="hidden" id="CallBackGrp" name="CallBack" value="fBuildFullGroupList();fCloseCurtain();"/>
                    <input type="hidden" id="CallBackGrpPhoto" name="CallBackGrpPhoto" value=""/>
                    <div class="Cols Col1">
                        <div class="Inner">
                            <div class="StdRow">
                                <div class="StdLabel">* Group Name</div>
                                <div class="StdInput Required"><input class="xf_Alpha xf_Required" type="text" name="Name" id="Name" value="<? echo $sName ?>"/></div>
                                <br class="ClearFloat"/>
                            </div>
                            <div class="StdRow">
                                <div class="StdLabel">Short Description</div>
                                <div class="StdInput Required"><textarea class="xf_Alpha" name="Description" id="Description"><? echo $sDescription ?></textarea></div>
                                <br class="ClearFloat"/>
                            </div>
                        </div>
                    </div>
                    <div class="Cols Col2">
                        <div class="Inner">
                            <div class="StdRow" id="Photo">
                                <div id="GroupPhoto"><img id="imgGroupPhoto" src="<? echo $sImgGroupLogo ?>"/></div>
                                <div class="AddOption" title="Change Picture"><img src="/images/spacer.gif"/></div>
                                <input type="hidden" id="GroupPhotoURL"" name="GroupLogo" value="<?echo $sImgGroupLogo ?>"/>
                            </div>
                            <div class="StdRow" id="UploadPhotoURL"></div>
                        </div>
                    </div>
                    <br class="ClearFloat"/>
                    <div class="StdRow Footer Action">
                        <input id="ProfileSaveButton" class="ActionButton" type="submit" value="Submit"/>
                    </div>
                </form>
            </div>