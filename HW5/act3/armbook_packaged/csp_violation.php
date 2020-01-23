<?php
	include_once("common.php");
	$data = file_get_contents('php://input');
	if($stmt = $mysqli->prepare("INSERT INTO violations (info) VALUES (?)")){
	if($stmt->bind_param("s", $data)){
        	if(!$stmt->execute()){
            	die("Error - Issue executing prepared statement: " . mysqli_error($mysqli));
       	}
        else{
            	$id = $stmt->insert_id;
            	die("All good");
        }
    	}
    	else{
        	die("Error - Issue binding prepared statement: " . mysqli_error($mysqli));
    	}
    	if($stmt->close()){
        	$good = true;
        	die("Done");
    	}
    	else{
        	die("Error - Failed to close prepared statement" . mysqli_error($mysqli));
    	}

	}
	else{
    		die("Error - Issue preparing statement: " . mysqli_error($mysqli));
	}
	die("Please work");

?>	
