<?php 
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "userdata";

	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	} 
	
	$sql = "select category_name,num_donations from total_donations";
	$result = $conn->query($sql);
	
	$output = "";
	if($result->num_rows > 0)
	{
		while($row = $result->fetch_assoc())
		{
			if($output !="")
				$output.=",";
			$output .= '"'.$row["category_name"].'":';
			$output .= '"'.$row["num_donations"].'"';
		}
				
		$output = '{'. $output .'}';
		echo $output;
	}
?>
