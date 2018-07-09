<?php
	include "config.php";
	include "connect.php";

	session_start();
	
	//update log
	$username = $_SESSION["oss"];
	$connect = mysqli_stmt_init($con);
	
	$stmt_log = mysqli_stmt_prepare($connect, "INSERT INTO log (username,action,result,time) VALUES (?,?,?,?)");
	
	$action = "Logout";
	$result = "Success";
	$time = date("Y-m-d h:s:i");
	
	mysqli_stmt_bind_param($connect, "ssss", $username, $action, $result, $time);
	mysqli_stmt_execute($connect);
	//printf("Error #%d: %s.\n", mysqli_stmt_errno($connect), mysqli_stmt_error($connect));
	mysqli_stmt_close($connect);
	
	//kill session	
	session_destroy();
	
	//close connection
	mysqli_close($con);
	
	echo "<script>location.href='" . $basedomain . "?page=login'</script>";
?>