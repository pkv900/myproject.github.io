<?php 
	$pid = $_GET['pid'];
	$treview = $_GET['treview'];
	

	$myfile = fopen("userReview.txt", "w") or die("Unable to open file!");
	$txt = $treview;
	fwrite($myfile, $txt."\n");
	fclose($myfile);

	//$python = 'C:\Users\Asus\Anaconda3\python.exe';
	$pyscript = 'C:\xampp\htdocs\myproject\admin\rate.py';

	exec("python $pyscript", $output);

	print_r($output);
	//echo $output[0];
	//$output_array = json_decode($output);
	
	foreach($output as $row){
		$rating = $row;
		
	}
	//$rate = $rating[1];
	//echo $rating;
	 
	$sql = "UPDATE products SET rating = '$rating' WHERE pid ='$pid'";
	
	$conn = mysqli_connect("localhost","root","");
	mysqli_select_db($conn,"mydb");
	if($conn->query($sql)){
		echo ("<SCRIPT LANGUAGE='JavaScript'>
				window.alert('Product rating updated!!')
				window.location.href='admin-rate-product.php'
				</SCRIPT>");
	}

?>