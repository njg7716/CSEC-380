<?php
	include_once("common.php");
	$data = file_get_contents('php://input');
	if ($data = json_decode($data)) {
		$data = json_encode($data, JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);
		$sql = mysqli->prepare("INSERT INTO violations (info) VALUES($data)");
		$sql->execute();
	}

?>
