<?php
    $url=$_GET['url'];
    $reason=$_GET['reason'];
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
    $result = mysql_query("INSERT INTO sites (url,reason) VALUES ('$newurl', '$reason')");
    if ($result=='TRUE')
    {
    echo "Успешно";
    }
    else {
    echo "Ошибка!";
    }
?>