<!DOCTYPE html>
<html>
<head>
	<title>WebProLB3</title>
</head>
<body>
	
	<form action="getClientSeanse.php" method="get">
		<label for="vendor">Оберіть клієнта:</label>
		<select name="client_id" id="client_id">
			<?php
				include('connect.php');
				try {
					$stmt = $dbh->query("SELECT name, id_client FROM client");
					$res = $stmt->fetchAll();

					foreach($res as $row)
					{
						echo "<option value='$row[1]'>$row[0]</option>";
					}
				}
				catch(PDOException $ex) {
					echo $ex->GetMessage();
				}

				$dbh = null;
			?>
		</select>
		<input type="submit" value="Отримати сеанси роботи в мережі для обраного клієнта"/>
	</form>

    <form action="getTimeSeanse.php" method="get">
		<label for="vendor">Оберіть початок:</label>
		<input type="time" value="00:00" name="start" id="start"/>
        <br/>
		<label for="vendor">Оберіть кінець:</label>
		<input type="time" value="23:59" name="end" id="end"/>
		<br/>
		<input type="submit" value="Отримати сеанси роботи в мережі для обраного проміжку часу"/>
	</form>
    <form action="getNegativeBalanceUsers.php" method="get">		
		<input type="submit" value="Отримати боржників"/>
	</form>
</body>
</html>