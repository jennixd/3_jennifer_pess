<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Dispatch History</title>
<link href="css/bootstrap-4.3.1.css" rel="stylesheet" type="text/css">
<style>
body {
background-image: url('images/wallpaper.jpg');
}
</style>
</head>

<body>
<div class="container" style="width:930px">
<?php
	include "header.php";
?>

 <div class="form-group row">
	<table class="table table-striped">
	<tbody>
		<tr>
			<th></th>
			<th>Incident Id</th>
			<th>Patrol Car Id</th>
			<th>Time Dispatched</th>
			<th>Time Arrived</th>
			<th>Time Completed</th>
		</tr>
	</tbody>
	<?php
require_once "db.php";
	$conn = new mysqli(DB_SERVER,DB_USER,DB_PASSWORD,DB_DATABASE);
	$sql = "SELECT `incident_id`, `patrolcar_id`, `time_dispatched`, `time_arrived`, `time_completed` FROM `dispatch` ORDER BY `patrolcar_id` DESC LIMIT 10
	";

	$result = $conn->query($sql);
	$cars = [];
	while($row = $result->fetch_assoc()){
		$incidentid = $row["incident_id"];
		$patrolid = $row["patrolcar_id"];
		$timed = $row["time_dispatched"];
		$timea = $row["time_arrived"];
		$timec = $row["time_completed"];
		$car = ["incident_id"=>$incidentid, "patrolcar_id"=>$patrolid, "time_dispatched"=>$timed, "time_arrived"=>$timea, "time_completed"=>$timec,];
		array_push($cars,$car);
	}
?>
	<?php
				foreach($cars as $car) {
					echo "<tr>" .
				"<td>" . "" . "</td>" .
				"<td>" . $car["incident_id"] . "</td>" .
				"<td>" . $car["patrolcar_id"] . "</td>" .
				"<td>" . $car["time_dispatched"] . "</td>" .
				"<td>" . $car["time_arrived"] . "</td>" .
				"<td>" . $car["time_completed"] . "</td>"  .
				"</tr>"; }
			?>
		
</table>
</div>
<?php
			include "footer.php"
		?>
				 </div>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/popper.min.js"></script>			 
	<script src="js/bootstrap-4.0.0.js"></script>
</body>
</html>