<?php
    include('connect.php');

    $sql = "SELECT * FROM client WHERE balance < 0";


    try {
        $sth = $dbh->prepare($sql);
        $sth->execute();
        $res = $sth->fetchAll();

        echo "<table border='1'>";
        echo "<thead><tr><th>Client ID</th><th>Name</th><th>Username</th><th>IP</th><th>Balance</th></tr></thead>";
        echo "<tbody>";

        foreach($res as $row)
        {
            echo "<tr><td>$row[0]</td><td>$row[1]</td><td>$row[2]</td><td>$row[4]</td><td>$row[5]</td></tr>";
        }
        
        echo "</tbody>";
        echo "</table>";
    }
    catch(PDOException $e) {
        echo $e->GetMessage();
    }

    $dbh = null;
?>