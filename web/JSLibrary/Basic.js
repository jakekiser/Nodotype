function fValidateForm(event,oForm,ajaxMode) {
var bError=0;
    //Check for input fields
    bError=0;
    var pars = oForm.getElementsByTagName('input');
    bError=fCheckForErrors(pars);

    // If no Error, Check for text areas
    if (bError==0) {
        pars = oForm.getElementsByTagName('textarea');
        bError=fCheckForErrors(pars);
    }
        
    if (bError==1) {
        return false;
    }
        
    // Find update indicator based on class name
    pars = oForm.getElementsByTagName('input');
    for (var i=0;i<pars.length;i++) {
        if (pars[i].className.indexOf('xf_UpdInd')!=-1) {
            pars[i].value=1;
        }
    }
    // Identify Update Mode
    // Find update indicator based on class name
    for (i=0;i<pars.length;i++) {
        if (pars[i].name.indexOf('formModeInd')!=-1) {
            for (var i2=0;i2<pars.length;i2++) {
                if (pars[i2].className.indexOf('xf_UpdMode')!=-1) {
                    pars[i2].value=pars[i].value;
                }
            }
        }
    }     
    if (ajaxMode!='1') {
        oForm.submit();
    } else {
        fSaveBasicPage(event,oForm.id);
    }
}
function fCheckForErrors(pars) {
var bError=0;
var bFieldsRequired=0;
var bWrongEmailFormat=0;
var bCredentialsMatchIssue=0;    

    for (var i=0;i<pars.length;i++) {
	pars[i].className = pars[i].className.replace('formError','');
    }		
    for (var i=0;i<pars.length;i++) {
        // Check for value exists if required
        if (pars[i].className.indexOf('xf_Required')!=-1 && pars[i].value.length<1) {
            pars[i].className=pars[i].className+' formError';
            bError=1;
            bFieldsRequired=1;
        }
        // Check for valid email format if email field
        if (pars[i].className.indexOf('xf_Email')!=-1 && pars[i].value.length>0 && !isValidEmail(pars[i].value)) {
            pars[i].className=pars[i].className+' formError';
            bError=1;
            bWrongEmailFormat=1;
        }
        // Check for matching credentials (password match against #Password
        if (pars[i].className.indexOf('xf_CredentialsMatch')!=-1 && pars[i].value!=document.getElementById('Password').value) {
            pars[i].className=pars[i].className+' formError';
            bError=1;
            bCredentialsMatchIssue=1;
        }                
    }   
    if (bError==1 && bFieldsRequired==1) {
        alert ('Fields are required');
    }
    if (bError==1 && bCredentialsMatchIssue==1) {
        alert ('Passwords do not match');
    }
    if (bError==1 && bWrongEmailFormat==1) {
        alert ('Email field found that is an incorrect format');
    }
    return bError;
}
var RSSPollTimer;
function RSSPollTimer() {
if (document.getElementById('RSSPoll')) {
    RSSPollTimer=window.setInterval('RSSPollAjax()', 10000);
    }
}
function RSSPollAjax() {
    $("#RSSPoll").load("/OXPFUNCS.php?FUNC=RSSPOLL");
}
function fCheckVal(elem) {
    if (elem.checked) {
        elem.value='1';
    } else {
        elem.value=0;
    }
}

