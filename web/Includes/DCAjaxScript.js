	 var ActiveXIsAvailable=0;       
	 function AjaxSimpleCheck(url, errmsg, destid,dispMode, syncmode,f) {
	 
			if (syncmode==null) {
				var syncmode=true;
			}

			try {
	    	var oXmlHttp = zXmlHttp.createRequest();
	      ActiveXIsAvailable=1
			} 
			catch(err) {
				ActiveXIsAvailable=0
			}
				
			if (syncmode==false) {
				syncmode=false;
				}
			else {
				syncmode=true; 
			}
    
	    if (ActiveXIsAvailable==1) {
				oXmlHttp.open("get", url, syncmode);	
	      if (oXmlHttp!=null) {     
       		oXmlHttp.onreadystatechange = function () {
	         	if (oXmlHttp.readyState == 4) {
							if (oXmlHttp.status == 200) {	
								try {
									displayEmailMessage(oXmlHttp.responseText, errmsg, destid, dispMode,f);
									}
								catch(err) {
									} 
							}
							else {
								try {
									displayEmailMessage("An error occurred: " + oXmlHttp.statusText, errmsg, dispMode); //statusText is not always accurate
									}
							catch(err) {	
								}	
	          	}
	        	}            	
	      	}
	      	try {
        		oXmlHttp.send(null);
        		if (f!=null) {
        			try{eval(f);}catch(e){};
        		}
        	}
        	catch(err) {
        		alert ('URL:'+URL);
        	}
      	}
    	}
		}    	
        
function displayEmailMessage(sText, errmsg, destid, dispMode,f) {
       
 	if (destid!=null) {
 		var divCustomerInfo = document.getElementById(destid);
 		}
 	else	{
		var divCustomerInfo = document.getElementById("divCustomerInfo");
	}

  
  if (sText.indexOf('STATUS:')!=0) {
  	sText='STATUS:0,'+sText;
  }
  if (sText.indexOf('STATUS:0')==0) {
  	sText.replace(/STATUS:0,/g,'');
  	sText='STATUS:0,'+sText;
  }  
  rArr=sText.split(",")
  if (rArr!=null && sText.length>0) {
		if (rArr[0]=="STATUS:1") {
	   	sText = sText.replace("STATUS:1,", "")
	   	if (divCustomerInfo.innerHTML!=sText) {
	   		divCustomerInfo.innerHTML = sText;
	   	}
	            	
			if (dispMode!="1") {
	  		divCustomerInfo.style.display="";
	    	}
			else	{
		  	divCustomerInfo.style.display="none";
	  	}  
		}    	            	
  	else	{
	   	sText.replace(/STATUS:0,/g,'');
	            	
  	 	if (dispMode=="1") {
   			divCustomerInfo.style.display="";
 			}
   		else	{
	   		divCustomerInfo.style.display="none";
   		}      
	            	     	
   		var CheckForDataMsg=rArr[1].indexOf('{DATAFOUND}');
   		if (CheckForDataMsg>0) {
	   		sText=sText.replace("{DATAFOUND}", "");
 			}
   		var CheckForDataMsg=rArr[1].indexOf('{DATANOTFOUND}');
   		if (CheckForDataMsg>0) {
				sText=sText.replace("{DATANOTFOUND}", "");
 			}  
 			sText = sText.replace(/STATUS:0,/g,'');      		
			divCustomerInfo.innerHTML = sText;
  		if (f!=null) {
	  		//alert (f);
				//try{eval(f);}catch(e){alert('DC Error:'+e);};
				try{eval(f);}catch(e){};
				AdjustIframe();
			}
  	}
  	sText = sText.replace(/STATUS:0,/g,'');
  	return sText
	}
}


			
	
