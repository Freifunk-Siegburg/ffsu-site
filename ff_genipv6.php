<?php

// generate IPv6 from nodeid
// (c) 2017 by Claus Marxmeier

$debug="";
$nodeid=$argv[1];

if ($debug){
        var_dump($argv);
}

if (!$nodeid){
        echo "Please enter nodeid as param! using default value: 1eb70676ca92.\n\n";
        $nodeid="1eb70676ca92";
}

$ipv6_prefix_01="2a03:2260:3017:100:";
$ipv6_prefix_03="2a03:2260:3017:300:";
$ipv6_prefix_04="2a03:2260:3017:400:";
$ipv6_prefix_05="2a03:2260:3017:500:";
$ipv6_prefix_07="2a03:2260:3017:700:";
$ipv6_prefix_11="2a03:2260:3017:1100:";


// Test - lets calculate ipv6 from nodeid
          $firstpart=substr($nodeid,0,2);
          $secondpart=substr($nodeid,2,10);
          $firstdec=hexdec($firstpart);
          $newdec=$firstdec+2;

          $firstdec=dechex($newdec);
          //make sure we have 2 digits - a leading 0 in case if not
          if (strlen($firstdec) < 2){
               $firstdec="0".$firstdec;
            }
            // print "node   : ".$nodeid;
            // print "first  : ".$firstpart;
            // print "second: ".$secondpart;
            // print "<br>";
       // bsp:  2a03:2260:3017:300:
$ipv6=$firstdec.substr($secondpart,0,2).":".substr($secondpart,2,2)."ff:fe".substr($secondpart,4,2).":".substr($secondpart,6,4);
echo "nodeid   : ".$nodeid."\n";
echo "Siegburg : ".$ipv6_prefix_01.$ipv6."\n";
echo "Lohmar   : ".$ipv6_prefix_03.$ipv6."\n";
echo "Sankt Au : ".$ipv6_prefix_04.$ipv6."\n";
echo "SozNet   : ".$ipv6_prefix_05.$ipv6."\n";
echo "Niederkas: ".$ipv6_prefix_07.$ipv6."\n";
echo "Altenkir : ".$ipv6_prefix_11.$ipv6."\n";

?>
