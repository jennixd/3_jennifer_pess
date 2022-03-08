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
			<th>Caller Name</th>
			<th>Phone Number</th>
			<th>Incident Type Id</th>
			<th>Incident Location</th>
			<th>Incident Desc</th>
			<th>Incident Status Id</th>
			<th>Time Called</th>
		</tr>
	</tbody>
	<?php
require_once "db.php";
	$conn = new mysqli(DB_SERVER,DB_USER,DB_PASSWORD,DB_DATABASE);
	$sql = "SELECT `incident_id`, `caller_name`, `phone_number`, `incident_type_id`, `incident_location`, `incident_desc`, `incident_status_id`, `time_called` FROM `incident` ORDER BY `incident_id` DESC LIMIT 10";
	$result = $conn->query($sql);
	$cars = [];
	while($row = $result->fetch_assoc()){
		$incidentid = $row["incident_id"];
		$callername = $row["caller_name"];
		$phonenum = $row["phone_number"];
		$incidenttid = $row["incident_type_id"];
		$incidentl = $row["incident_location"];
		$incidentd = $row["incident_desc"];
		$incidentsid = $row["incident_status_id"];
		$timec = $row["time_called"];
		$car = ["incident_id"=>$incidentid, "caller_name"=>$callername, "phone_number"=>$phonenum, "incident_type_id"=>$incidenttid, "incident_location"=>$incidentl,"incident_desc"=>$incidentd, "incident_status_id"=>$incidentsid, "time_called"=>$timec,];
		array_push($cars,$car);
	}
?>
	<?php
				foreach($cars as $car) {
					echo "<tr>" .
				"<td>" . "" . "</td>" .
				"<td>" . $car["incident_id"] . "</td>" .
				"<td>" . $car["caller_name"] . "</td>" .
				"<td>" . $car["phone_number"] . "</td>" .
				"<td>" . $car["incident_type_id"] . "</td>" .
				"<td>" . $car["incident_location"] . "</td>"  .
				"<td>" . $car["incident_desc"] . "</td>" .
				"<td>" . $car["incident_status_id"] . "</td>"  .
				"<td>" . $car["time_called"] . "</td>"  .
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