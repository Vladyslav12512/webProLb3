<?php
    include('connect.php');

    $sql = "SELECT * FROM seanse WHERE start >= ? and stop <= ?";
    $start_time = $_GET['start'];
    $end_time = $_GET['end'];

    try {
        $sth = $dbh->prepare($sql);
        $sth->execute([$start_time, $end_time]);
        $res = $sth->fetchAll();

        echo "<table border='1'>";
        echo "<thead><tr><th>Seanse ID</th><th>start</th><th>Stop</th><th>in trafic</th><th>out trafic</th><th>Client ID</th></tr></thead>";
        echo "<tbody>";

        foreach($res as $row)
        {
            echo "<tr><td>$row[0]</td><td>$row[1]</td><td>$row[2]</td><td>$row[3]</td><td>$row[4]</td><td>$row[5]</td></tr>";
        }
        
        echo "</tbody>";
        echo "</table>";
    }
    catch(PDOException $e) {
        echo $e->GetMessage();
    }

    $dbh = null;
?>