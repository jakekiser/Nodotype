<?

    $SQL='select PageHTML from DA_Pages p'
    .' where p.TenanntId='.$iTennantId.' and p.Title=\''.$sSmartCodeOptions.'\'';
    echo $SQL;
    $result = mysql_query($SQL);
    $num_rows = mysql_num_rows($result);
    if ( $num_rows >0 ){   
        $sPageHTML=$row['PageHTML'];
        echo $sPageHTML;
    }

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
?>
