<?php
    $url=$_GET['url'];
    $key = 'AIzaSyDsS0AVUKsq34jW8oTv0gAEaZTDpTi_Ygk';
    $test1 = "https://sb-ssl.google.com/safebrowsing/api/lookup?client=demo-app&key=".$key."&appver=1.5.2&pver=3.1&url=".$url;
    $test=file_get_contents($test1);
    echo $test;
?>