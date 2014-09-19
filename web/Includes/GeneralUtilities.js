function isNumOrChar (InString)  {
	if(InString.length < 1) 
		return true;

  var iChars = "!@#$%^&*()+=[]\\\';,./{}|\":<>?";
  var l_SpecialCharacterFound = 0
  
  for (var i = 0; i < InString.length; i++) {
  	if (iChars.indexOf(InString.charAt(i)) != -1) {
	  	l_SpecialCharacterFound = 1;
	}
  }
	if (l_SpecialCharacterFound ) {
  		return false;
	 	}
	else {
		return true;
	}
}
function isNum (InString)  {
if(InString.length < 1) 
		return true;

  var iChars = "1234567890";
  var l_NonNumericFound = 0;
  
  for (var i = 0; i < InString.length; i++) {
  	if (iChars.indexOf(InString.charAt(i)) == -1) {
	  	l_NonNumericFound = 1;
	}
  }
	if (l_NonNumericFound) {
  		return false;
	 	}
	else {
		return true;
	}
}
function isValidEmail(InString)
{
if(InString.length < 1) 
		return true;
  var result = false
  var theStr = new String(InString)
  var index = theStr.indexOf("@");
  if (index > 0)
  {
    var pindex = theStr.indexOf(".",index);
    if ((pindex > index+1) && (theStr.length > pindex+1))
	result = true;
  }
  return result;
}
//Smooth Scrolling 


	$(function() {
	
		function filterPath(string) {
			return string
			.replace(/^\//,'')
			.replace(/(index|default).[a-zA-Z]{3,4}$/,'')
			.replace(/\/$/,'');
		}
	
		var locationPath = filterPath(location.pathname);
		var scrollElem = scrollableElement('html', 'body');
	
		// Any links with hash tags in them (can't do ^= because of fully qualified URL potential)
		$('a[href*=#]').each(function() {
	
			// Ensure it's a same-page link
			var thisPath = filterPath(this.pathname) || locationPath;
			if (  locationPath == thisPath
				&& (location.hostname == this.hostname || !this.hostname)
				&& this.hash.replace(/#/,'') ) {
	
					// Ensure target exists
					var $target = $(this.hash), target = this.hash;
					if (target) {
	
						// Find location of target
						var targetOffset = $target.offset().top;
						$(this).click(function(event) {
	
							// Prevent jump-down
							event.preventDefault();
	
							// Animate to target
							$(scrollElem).animate({scrollTop: targetOffset}, 400, function() {
	
								// Set hash in URL after animation successful
								location.hash = target;
	
							});
						});
					}
			}
	
		});
	
		// Use the first element that is "scrollable"  (cross-browser fix?)
		function scrollableElement(els) {
			for (var i = 0, argLength = arguments.length; i <argLength; i++) {
				var el = arguments[i],
				$scrollElement = $(el);
				if ($scrollElement.scrollTop()> 0) {
					return el;
				} else {
					$scrollElement.scrollTop(1);
					var isScrollable = $scrollElement.scrollTop()> 0;
					$scrollElement.scrollTop(0);
					if (isScrollable) {
						return el;
					}
				}
			}
			return [];
		}
	
	});

