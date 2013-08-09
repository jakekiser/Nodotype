function fBuildRSSBlocks() {

    if (!document.getElementById('divRSSJSONDoc')) return;
    
    var iTotCols=4;
    eval (document.getElementById('divRSSJSONDoc').innerHTML);
    fCheckForLogout('divRSSJSONDoc');
    
    var sHTMLArray= new Array();
   
    var sHTML='';
    var iACnt=0;
    
    if (oDARSS[0]['RSSCOLS'].length>0) {
        iTotCols=oDARSS[0]['RSSCOLS'];
    }
        
    if (oDARSS.length>0) {
        //Initialize Array
        for (i=0;i<iTotCols;i++) {
            sHTMLArray[i]='';
        }
        for (i=0;i<oDARSS.length;i++) {
            if (iACnt==iTotCols) {
                iACnt=0;
            }
   
            sHTML=' <div class="divRSSRow" id=divRB_'+oDARSS[i]['RSSID']+'>'
                + '     <div class=divRBInner>'
                + '        <div class=divRBImage><span><a href='+oDARSS[i]['AttrURL']+' target=_blank ><img src='+oDARSS[i]['RSSImage']+' /></a></span></div>'
                + '        <div class=divRBTitle><span><a href='+oDARSS[i]['FeedURL']+' target=_blank >'+oDARSS[i]['Title']+'</a></span></div>'
                + '        <div class=divRBDescription><span>'+oDARSS[i]['Description']+'</span></div>'
                + '        <div class=divRBAttrAuthor><span>'+oDARSS[i]['AttrAuthor']+'</span></div>'
                + '        <div class=divRBAttrURL><img src='+oDARSS[i]['AttrURL']+' /></div>'
                + '     </div>'
                + '</div>';
            sHTMLArray[iACnt]=sHTMLArray[iACnt]+sHTML;
            iACnt=iACnt+1;
        }
        sHTML='';
        for (i=0;i<sHTMLArray.length;i++) {
            sHTML=sHTML+'<div class="divRCols" id="divRCol_'+i+'">'
            + sHTMLArray[i]
            + '</div>';
        }
        sHTML=sHTML+'<br class=ClearFloat />';
        document.getElementById('divRSSBlockContainer').innerHTML=sHTML;
    }
    
    if (oDARSS[0]['RSSCOLS'].length>0) {
        $('.divRCols').css( 'width', (10/iTotCols)*10+'%');
    }
    
    //#divRSSList .divRCols {}    
}
$(document).ready(function() {
    fBuildRSSBlocks();
});