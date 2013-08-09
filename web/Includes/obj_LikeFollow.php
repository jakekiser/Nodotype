<?
require '/Includes/XCRED.php';

    $lLikeType=$_GET['likeType'];
    $lUserId=$_GET['uid'];
    $lEntityId=$_GET['eid'];
    
    $iLikeId='0';
            
    $SQL='call spDAInsLike ('.$lEntityId.','.$lUserId.','.$lLikeType.')';
    $result = mysql_query($SQL);
    $num_rows = mysql_num_rows($result);
    if ( $num_rows >0 ){   
        while($row = mysql_fetch_array($result)) {
            $iLikeId=$row['LikeId'];
        }    
    }
    echo $iLikeId;
?>
