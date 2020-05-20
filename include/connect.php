<?php	$con=mysqli_connect("localhost","root","","wilcode")or die(mysql_error());?> 
<?php 
    $link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? 
                "https" : "http") . "://" . $_SERVER['HTTP_HOST'] .  
                $_SERVER['REQUEST_URI'];
    $parse = parse_url($link);
	$domain=$parse['host'];
	$wilcode = 'localhost';
	$it='infotech4it.wilcode.com';

 ?>