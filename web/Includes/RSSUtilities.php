<?
class BuildRSSClass {
    public function BuildRSS($sSmartCodeOptions) {
        
        if (strlen($sSmartCodeOptions)<1) {
            //$sSmartCodeOptions='http://feeds.feedburner.com/twitter/digiapolis';
            $sSmartCodeOptions='http://feeds.feedburner.com/NextWaveHealthsFacebookWall';
        }
   
        $rss = new DOMDocument();
        $rss->load($sSmartCodeOptions);    
    
        $feed = array();
        foreach ($rss->getElementsByTagName('item') as $node) {
            $item = array ( 
                'title' => $node->getElementsByTagName('title')->item(0)->nodeValue,
                'desc' => $node->getElementsByTagName('description')->item(0)->nodeValue,
                'link' => $node->getElementsByTagName('link')->item(0)->nodeValue,
                'date' => $node->getElementsByTagName('pubDate')->item(0)->nodeValue,
            );
            array_push($feed, $item);
        }

        $limit = 3;
        for($x=0;$x<$limit;$x++) {
            $title = str_replace(' & ', ' &amp; ', $feed[$x]['title']);
            $link = $feed[$x]['link'];
            $description = $feed[$x]['desc'];
            //$description=  str_replace('<div>', '',$description);
            //$description=  str_replace('</div>', '',$description);
            $date = date('m/d/Y h:i:s a', strtotime($feed[$x]['date']));
            $SocialTime=$this->fTimeDisplay($date);
            
            echo '<div class="RSSRow">';
            echo '  <div class="RSSTitle" ><a target="_blank" href="'.$link.'" title="'.$title.'">'.$title.'</a></div>';
            echo '  <div class="RSSDate">'.$SocialTime.'</div>';
            echo '  <div class="RSSDesc">'.$description.'</div>';
            echo '</div>';
        }
        echo '<p class="More"><a class="Twitter" target="_blank" href="'.$sSmartCodeOptions.'">See All &raquo;</a></p>';
    }

    public function fTimeDisplay($oDate) {

        $datetime1 = new DateTime($oDate);
        $datetime2 = new DateTime(date('m/d/Y h:i:s a', time()));

        $dateDiff = $datetime1->diff($datetime2);
        $TDDays = $dateDiff->format('%d');
        $TDHours = $dateDiff->format('%h');
        $TDMin = $dateDiff->format('%i');
        $TDMM = $dateDiff->format('%m');

        $TDisplay='a moment ago';
        if ($TDMin>0) {
            $TDPlural='';
            if ($TDMin>1) {
                $TDPlural='s';
            }
            $TDisplay=$TDMin.' Minute'.$TDPlural.' ago';
        }

	if ($TDHours>0 ) {
            $TDPlural='';
            if ($TDHours>1) {
                $TDPlural='s';
            }
            $TDisplay=$TDHours.' Hour'.$TDPlural.' ago';
        }	

	if ($TDDays>0) {
            $TDPlural='';
            if ($TDDays>1) {
                $TDPlural='s';
            }		
            $TDisplay=$TDDays.' Day'.$TDPlural.' ago';
        }
		
	if ($TDMM>0) {
            $TDPlural='';
            if ($TDMM>1) {
                $TDPlural='s';
            }		
            $TDisplay=$TDMM.' Month'.$TDPlural.' ago';
        }
		
	return $TDisplay;
}}
?>