<?php
$a = readline('Domain Name: ');
#$output = shell_exec('nslookup '.$a);
#echo $output;
$output1 = shell_exec('nslookup -type=mx'.$a);
echo $output1;
?>
