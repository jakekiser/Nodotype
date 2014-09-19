<?
    $RMEmail=$_COOKIE["RME_"];
    $RMPWD=$_COOKIE["RMP_"];
    if (strlen($RMEmail)>0) {
        $RMChecked=' checked ';
        $bRememberMe='1';
    }
?>
<div class="TwoCol">
    <div class="LeftPane">
        <div class="divInner">
            <h2>Sign in</h2>
            <div class="SignIn">
                <form class="BasicForm" name="formContactUs" id="formSignIn" method="post" action="" onsubmit="return(fValidateForm(event,this,0))">
                    <input type="hidden" class="xf_UpdInd" name="UpdInd" id="SIUpdInd"/>
                    <input type="hidden" name="formModeInd" id="SIformMode" value="SignIn"/>
                    <input type="hidden" class="xf_UpdMode" name="formMode"/>
                    <div class="StdRow">
                        <div class="StdLabel">* Email</div>
                        <div class="StdInput Required"><input class="xf_Alpha xf_Required xf_Email" type="text" name="eMail" id="SI_eMail" value="<? echo $RMEmail ?>"/></div>
                        <br class="ClearFloat"/>
                    </div>
                    <div class="StdRow">
                        <div class="StdLabel">* Password</div>
                        <div class="StdInput Required"><input class="xf_Alpha xf_Required" type="Password" name="Password" id="SI_Password"value="<? echo $RMPWD ?>"/></div>
                        <br class="ClearFloat"/>
                    </div>
                    <div class="StdRow SignInHouseKeeping">
                        <input type="checkbox" name="RememberMe" id="RememberMe" onchange="fCheckVal(this);" <? echo $RMChecked ?> value="<? echo $bRememberMe ?>"/><span>Remember me</span>
                        <div class="StdRow ForgottenPWD">
                            <a href="#">Forgot your password?</a>
                        </div>
                    </div>
                    <div class="StdRow SignInHouseKeeping">
                        <div class="StdRow NeedAcct">
                            <a href="javascript:void(0);" onclick="$( '#divRightPane' ).toggle( 'slide', 100 )" >Don't Have an Account?  Click here &raquo;</a>
                        </div>
                    </div>                    
                    <div class="StdRow Footer Action">
                        <input class="ActionButton" type="submit" value="Sign In"/>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="RightPane" id="divRightPane" style="display: none;">
        <div class="divInner">
            <h2>Create your account</h2>
            <div id="divForm">
                <form class="BasicForm" name="formContactUs" id="formContactUs" method="post" action="" onsubmit="return(fValidateForm(event,this,0))">
                    <input type="hidden" class="xf_UpdInd" name="UpdInd" id="UpdInd"/>
                    <input type="hidden" name="formModeInd" id="AcFormMode" value="NewAcct"/>
                    <input type="hidden" class="xf_UpdMode" name="formMode"/>
                    <input type="hidden" id="Permanent" name="Permanent" value="1"/>                    
                    <div class="StdRow">
                        <div class="StdLabel">* First Name</div>
                        <div class="StdInput Required"><input class="xf_Alpha xf_Required" type="text" name="FirstName" id="FirstName"/></div>
                        <br class="ClearFloat"/>
                    </div>
                    <div class="StdRow">
                        <div class="StdLabel">* Last Name</div>
                        <div class="StdInput Required"><input class="xf_Alpha xf_Required" type="text" name="LastName" id="LastName"/></div>
                        <br class="ClearFloat"/>
                    </div>
                    <div class="StdRow">
                        <div class="StdLabel">* Email</div>
                        <div class="StdInput Required"><input class="xf_Alpha xf_Required xf_Email" type="text" name="eMail" id="eMail"/></div>
                        <br class="ClearFloat"/>
                    </div>					
                    <div class="StdRow">
                        <div class="StdLabel">Company Name</div>
                        <div class="StdInput"><input class="xf_Alpha" type="text" name="CompanyName" id="CompanyName"/></div>
                        <br class="ClearFloat"/>
                    </div>	
                    <div class="StdRow">
                        <div class="StdLabel">* Phone</div>
                        <div class="StdInput Required"><input class="xf_Alpha xf_Required" type="text" name="Phone" id="Phone"/></div>
                        <br class="ClearFloat"/>
                    </div>       
                    <div class="StdRow">
                        <div class="StdLabel">Password</div>
                        <div class="StdInput Required"><input class="xf_Alpha xf_Credentials" type="Password" name="Password" id="Password"/></div>
                        <br class="ClearFloat"/>
                    </div>
                    <div class="StdRow">
                        <div class="StdLabel">Confirm Password (Must Match)</div>
                        <div class="StdInput Required"><input class="xf_Alpha xf_CredentialsMatch" type="Password" name="MatchPassword" id="MatchPassword"/></div>
                        <br class="ClearFloat"/>
                    </div>              
                    <div class="StdRow Footer Action">
                        <input class="ActionButton" type="submit" value="Create Profile"/>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <br class="ClearFloat"/>
</div>
