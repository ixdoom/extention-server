<?php
    $url=$_GET['url'];
    $newfullurl = explode("/", $url);
    if($newfullurl[2])
    {
        $newurl = $newfullurl[2];
    }
    else
    {
        $newfullurl = explode(".", $url);
        if($newfullurl[0]=="www")
        {
            $newurl = $newfullurl[1].'.'.$newfullurl[2];
        }
        else
        {
            $newurl = $newfullurl[0].'.'.$newfullurl[1];
        }
    }
    $db = mysql_connect ("mysql.hostinger.ru","u348087550_root","02081994");
    mysql_select_db ("u348087550_main",$db);
    $result = mysql_query("SELECT reason FROM sites WHERE url = '$newurl'",$db);
    $myrow = mysql_fetch_array($result);
    if (empty($myrow['reason']))
    {
        echo "Сайт не найден в базе опасных сайтов";
    }
    else
    {
        echo $myrow['reason'];
    }
?>