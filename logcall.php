<?php
	require_once "db.php";
	$conn = new mysqli(DB_SERVER,DB_USER,DB_PASSWORD,DB_DATABASE);
	$sql = "SELECT * FROM incident_type";
	$result = $conn->query($sql);
	$incidentTypes = [];
	while($row = $result->fetch_assoc()){
		$id = $row["incident_type_id"];
		$type = $row["incident_type_desc"];
		$incidentType = ["id"=>$id, "type"=>$type];
		array_push($incidentTypes,$incidentType);
	}
	$conn->close();
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Logcall</title>
<link href="css/bootstrap-4.3.1.css" rel="stylesheet" type="text/css">
<style>
body {
background-image: url('images/wallpaper.jpg');
}
</style>
</style>
</head>

<body>
<div class="container" style="width:930px">
<?php
	include "header.php";
?>
		<section class="mt-3">
		 <form action="dispatch.php" method="post">
          <div class="form-group row">
            <label for="callerName" class="col-sm-4 col-form-label">
              Caller's Name
            </label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="callerName"
                     name="callerName" required>
          </div>
          </div>
          <div class="form-group row">
            <label for="contactNo" class="col-sm-4 col-form-label">Contact
              Number
            </label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="contactNo"
                     name="contactNo" required>
          </div>
          </div>
          <div class="form-group row">
            <label for="locationOfIncident" class="col-sm-4 col-form-label">
              Location of Incident
            </label>
            <div class="col-sm-8">
              <input type="text" class="form-control" id="locationOfIncident"
                     name="locationOfIncident" required>
            </div>
          </div>
          <div class="form-group row">
            <label for="typeOfIncident" class="col-sm-4 col-form-label">
              Type of Incident
            </label>
            <div class="col-sm-8">
              <select id="typeOfIncident" class="form-control"
                      name="typeOfIncident" required>
                <option value="">Select</option>
				<?php
					foreach($incidentTypes as $incidentType)
					{
						echo "<option value=\"" . $incidentType["id"] . "\">" . 
						$incidentType["type"] . "</option>";
					}
				?>
				
              </select>
            </div>
          </div>
          <div class="form-group row">
            <label for="descriptionOfIncident" class="col-sm-4 col-form-label">
              Description of Incident
            </label>
            <div class="col-sm-8">
              <textarea name="descriptionOfIncident" class="form-control" rows="5" id="descriptionOfIncident">
              </textarea>
            </div>
          </div>
          <div class="form-group row">
            <div class="col-sm-4">
            </div>
           <div class="col-sm-8">
              <input class="btn btn-primary" name="btnProcessCall" type="submit"
                     value="Process Call">
            </div>
          </div>
        </form>
		</section>
		<?php
			include "footer.php"
		?>
				 </div>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/popper.min.js"></script>			 
	<script src="js/bootstrap-4.0.0.js"></script>
</body>
</html>