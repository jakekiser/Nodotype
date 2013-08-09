<?php
    $iTennantId=$_GET['tnt'];
    $RMEmail=$_COOKIE["RME_"];
    $RMPWD=$_COOKIE["RMP_"];
    if (strlen($RMEmail)>0) {
        $RMChecked=' checked ';
        $bRememberMe='1';
    }
    global $ProfStyle;
    $ProfStyle=0; // Partial - Small signin
?>
    <div class="SignIn">
        <div id="SignInForm">
            <form class="BasicForm" name="formTennantSignIn" id="formTennantSignIn" method="post" action="" onsubmit="return(fValidateForm(event,this,0))">
                <input type="hidden" class="xf_UpdInd" name="UpdInd" id="SIUpdInd"/>
                <input type="hidden" name="formModeInd" id="SITennantMode" value="TENNANTSIGNIN"/>
                <input type="hidden" name="TennantId" id="SITennantId" value="<? echo $iTennantId ?>"/>
                <input type="hidden" class="xf_UpdMode" name="formMode"/>
                <div class="StdRow EmailArea">
                    <div class="StdLabel SignInEmail">* Email</div>
                    <div class="StdInput Required"><input class="xf_Alpha xf_Required xf_Email" type="text" name="eMail" id="SI_eMail" value="<? echo $RMEmail ?>"/></div>
                    <br class="ClearFloat"/>
                </div>
                <div class="StdRow PasswordArea">
                    <div class="StdLabel SignInPassword  ">* Password</div>
                    <div class="StdInput Required"><input class="xf_Alpha xf_Required" type="Password" name="Password" id="SI_Password"value="<? echo $RMPWD ?>"/></div>
                    <br class="ClearFloat"/>
                </div>
                <div class="StdRow Footer Action">
                    <input class="ActionButton" type="submit" value="Sign In"/>
                </div>            
                <div class="StdRow SignInHouseKeeping">
                    <input type="checkbox" name="RememberMe" id="RememberMe" onchange="fCheckVal(this);" <? echo $RMChecked ?> value="<? echo $bRememberMe ?>"/><span>Remember me</span>
                    <div class="StdRow ForgottenPWD">
                        <a href="#">Reset my password?</a>
                    </div>
                </div>
                <div class="StdRow SignInHouseKeeping">
                    <div class="StdRow NeedAcct">
                        <a href="javascript:void(0);" onclick="$( '#SignInForm' ).toggle( 'slide', 100 );$( '#NewAcct' ).toggle( 'slide', 100 )" >Don't have an account?  Click here &raquo;</a>
                    </div>
                </div>                    
            </form>
        </div>
        <div id="NewAcct" class="NewAcct" style="display:none;">
            <div class="StdRow BackLink">
                <a href="javascript:void(0);" onclick="$( '#SignInForm' ).toggle( 'slide', 100 );$( '#NewAcct' ).toggle( 'slide', 100 )" >Back to Sign In</a>
            </div>
            <h2>Create your account</h2>
<?          require 'Includes/obj_ProfileForm.php'; ?>
        </div>
    </div>