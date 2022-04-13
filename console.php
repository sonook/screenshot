<?php
$output = shell_exec('ls -lart | grep ps1');
echo "<pre>$output</pre>";
?>
