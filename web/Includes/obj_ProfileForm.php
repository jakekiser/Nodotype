<?
    $iTennantId=$_GET['tnt'];
    if (strlen($iTennantId)<1) {
        $iTennantId=$_COOKIE["CCtnt"];
    }    
    if (strlen($ProfStyle)<1) $ProfStyle=1;
    
    if ($ProfStyle==0) {
        $AcFormMode='NEWACCT';
        $AcProcType=0;
    } else {
        $AcFormMode='EXISTINGACCT';
        $AcProcType=1;
    }
?>
            <div id="divForm" class="ProfileStyle_<?echo $ProfStyle ?>">
                <div class="xMenu">      
                    <div title="Save Profile" class="Save" id="SaveBtn">
                        <a onclick="document.getElementById('ProfileSaveButton').click();" href="javascript:void(0);"><img src="/images/spacer.gif"></a>
                    </div>      
                    <br class="ClearFloat">  
                </div>
                <h3 class="EditTitle">Edit Profile</h3>
                <form class="BasicForm" name="formContactUs" id="formEditProfile" method="post" action="" onsubmit="return(fValidateForm(event,this,<?echo $AcProcType ?>))">
                    <input type="hidden" class="xf_UpdInd" name="UpdInd" id="UpdInd"/>
                    <input type="hidden" name="formModeInd" id="AcFormMode" value="<?echo $AcFormMode ?>"/>
                    <input type="hidden" class="xf_UpdMode" name="formMode"/>
                    <input type="hidden" class="xf_ProfStyle" name="ProfStyle" value="<?echo $ProfStyle ?>"/>
                    <input type="hidden" class="xf_ProfUserId" name="ProfUserId" value="<?echo $Persist_UserId ?>"/>
                    <input type="hidden" id="TennantId" name="TennantId" value="<?echo $iTennantId ?>"/>
                    <input type="hidden" id="CallBack" name="CallBack" value="document.getElementById('CallBack').value='if (document.getElementById(\'SmallAvater\')) document.getElementById(\'SmallAvater\').src=document.getElementById(\'PhotoURL\').value;fBuildStdMsg(\'Profile Updated\');';"/>
                    <input type="hidden" id="Permanent" name="Permanent" value="1"/>  
                    <div class="Cols Col1">
                        <div class="Inner">
                            <div class="StdRow ExtProfileDemographics">
                                <div class="StdLabel">Email</div>
                                <div class="StdInput Required"><? echo $cr_Email ?></div>
                                <br class="ClearFloat"/>
                            </div>                            
                            <div class="StdRow">
                                <div class="StdLabel">* First Name</div>
                                <div class="StdInput Required"><input class="xf_Alpha xf_Required" type="text" name="FirstName" id="FirstName" value="<? echo $cr_FirstName ?>"/></div>
                                <br class="ClearFloat"/>
                            </div>
                            <div class="StdRow">
                                <div class="StdLabel">* Last Name</div>
                                <div class="StdInput Required"><input class="xf_Alpha xf_Required" type="text" name="LastName" id="LastName" value="<? echo $cr_LastName ?>"/></div>
                                <br class="ClearFloat"/>
                            </div>
                            <div class="StdRow BasicProfileDemographics">
                                <div class="StdLabel">* Email</div>
                                <div class="StdInput Required"><input class="xf_Alpha xf_Required xf_Email" type="text" name="eMail" id="eMail" value="<? echo $cr_Email ?>"/></div>
                                <br class="ClearFloat"/>
                            </div>					
                            <div class="StdRow">
                                <div class="StdLabel">Organization Name</div>
                                <div class="StdInput"><input class="xf_Alpha" type="text" name="CompanyName" id="CompanyName" value="<? echo $cr_CompanyName ?>"/></div>
                                <br class="ClearFloat"/>
                            </div>
                            <div class="ExtProfileDemographics">
                                <div class="StdRow">
                                    <div class="StdLabel">* Address</div>
                                    <div class="StdInput Required"><input class="xf_Alpha xf_Required" type="text" name="Addr1" id="Addr1" value="<? echo $cr_Addr1 ?>"/>
                                    <br/><input class="xf_Alpha" type="text" name="Addr2" id="Addr2" value="<? echo $cr_Addr2 ?>"/>
                                    <br/><input class="xf_Alpha" type="text" name="Addr3" id="Addr3" value="<? echo $cr_Addr3 ?>"/>
                                    </div>
                                    <br class="ClearFloat"/>
                                </div>
                                <div class="StdRow">
                                    <div class="StdLabel">City</div>
                                    <div class="StdInput Required"><input class="xf_Alpha" type="text" name="City" id="City" value="<? echo $cr_City ?>"/></div>
                                    <br class="ClearFloat"/>
                                </div>
                                <div class="StdRow">
                                    <div class="StdLabel">State</div>
                                    <div class="StdInput Required"><input class="xf_Alpha" type="text" name="State" id="State" value="<? echo $cr_State ?>"/></div>
                                    <br class="ClearFloat"/>
                                </div>
                                <div class="StdRow">
                                    <div class="StdLabel">Postal Code</div>
                                    <div class="StdInput Required"><input class="xf_Alpha" type="text" name="PostalCode" id="PostalCode" value="<? echo $cr_PostalCode ?>"/></div>
                                    <br class="ClearFloat"/>
                                </div>                                
                                <div class="StdRow">
                                    <div class="StdLabel">Country</div>
                                    <div class="StdInput Required"><input class="xf_Alpha" type="text" name="Country" id="Country" value="<? echo $cr_Country ?>"/></div>
                                    <br class="ClearFloat"/>
                                </div>
                            </div>
                            <div class="StdRow">
                                <div class="StdLabel">Phone</div>
                                <div class="StdInput "><input class="xf_Alpha " type="text" name="Phone" id="Phone" value="<? echo $cr_Phone ?>"/></div>
                                <br class="ClearFloat"/>
                            </div>                            
                        </div>
                    </div>
                    <div class="Cols Col2">
                        <div class="Inner">
                            <div class="StdRow" id="Photo">
                                <div id="ProfPhoto"><img id="imgProfPhoto" src="<? echo $cr_PhotoURL ?>"/></div>
                                <div class="AddOption" title="Change Picture"><img src="/images/spacer.gif"/></div>
                                <input type="hidden" id="PhotoURL" name="PhotoURL" value="<?echo $sPhotoURL ?>"/>
                            </div>
                            <div class="StdRow" id="UploadPhotoURL"></div>
                            <div class="StdRow" id="Map"></div>
                        </div>
                    </div>
                    <br class="ClearFloat"/>
                    <div class="StdRow Footer Action">
<? if ($ProfStyle==0) { ?>                        
                        <input id="ProfileSaveButton" class="ActionButton" type="button" onclick="alert('Sorry - This is a big idea in the making... check back fall 2013');" value="Submit"/>
<? } else { ?>
                        <input id="ProfileSaveButton" class="ActionButton" type="submit" value="Submit"/>
<? } ?>                        
                    </div>
                </form>
            </div>