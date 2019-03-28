<?php
$url = explode("?", $_SERVER['REQUEST_URI']);
$cmd = vsprintf('./lancache-autofill steam:%s "%s"', [
        str_replace("/", "", $url[0]),
        ($_GET['q']),
    ]
);
echo shell_exec($cmd);
