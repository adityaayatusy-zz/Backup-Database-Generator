<?php

require_once 'autoload.php';
//init
$bc = new SqlBackup(__DIR__);
//call method
if($bc->create()){
    echo 'Backup berhasil';
}