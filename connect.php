<?php
    $dsn = "mysql:host=localhost;dbname=WebProLAB3";
    $username = 'root';
    $password = '';

    try {
        $dbh = new PDO($dsn, $username, $password);
    } catch (PDOException $e) {
        echo $e->GetMessage();
    }
?>