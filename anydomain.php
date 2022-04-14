<?php
/* Request "ANY" record for php.net,
   and create $authns and $addtl arrays
   containing list of name servers and
   any additional records which go with
   them */
   $a = readline('Domain Name: ');
$result = dns_get_record("$a", DNS_ANY, $authns, $addtl);
echo "Result = ";
print_r($result);
#print_r($authns);
#echo "Additional = ";
#print_r($addtl);
?>