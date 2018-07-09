<?php
	include "connect.php";
	include "config.php";
	
	$username = $_POST["username"];
	$password = md5($_POST["password"]);
	
	$connect = mysqli_stmt_init($con);
	
	/* create a prepared statement */
	if ($stmt = mysqli_stmt_prepare($connect, "SELECT password FROM user WHERE username=?")) {

    /* bind parameters for markers */
    mysqli_stmt_bind_param($connect, "s", $username);

    /* execute query */
    mysqli_stmt_execute($connect);

    /* bind result variables */
    mysqli_stmt_bind_result($connect, $pass);

    /* fetch value */
    mysqli_stmt_fetch($connect);
	
	$stmt_log = mysqli_stmt_prepare($connect, "INSERT INTO log (username,action,result,time) VALUES (?,?,?,?)");
	$time = date("Y-m-d h:s:i");
	
	if ($pass == $password) {
		session_start();
		$_SESSION["oss"] = $username;
		
		$activity = "Login";
		$result = "Success";
		
		mysqli_stmt_bind_param($connect, "ssss", $username, $activity, $result, $time);
		mysqli_stmt_execute($connect);
		//printf("Error #%d: %s.\n", mysqli_stmt_errno($connect), mysqli_stmt_error($connect));
		mysqli_stmt_close($connect);
		
		echo "<script>location.href='" . $basedomain . "?page=home_admin';</script>";
	} else {
		session_start();
		$_SESSION["oss"] = "";
		
		$activity = "Login";
		$result = "Failed";
		
		mysqli_stmt_bind_param($connect, "ssss", $username, $action, $result, $time);
		mysqli_stmt_execute($connect);
		//printf("Error #%d: %s.\n", mysqli_stmt_errno($connect), mysqli_stmt_error($connect));
		mysqli_stmt_close($connect);
		
		echo "<script>alert('Username atau password salah.');
			location.href='" . $basedomain . "'</script>";
	}

    //printf("%s is in district %s\n", $city, $district);

    /* close statement */
    //mysqli_stmt_close($connect);
}

	/* close connection */
	mysqli_close($con);
?>