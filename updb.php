<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>
	<?php include 'include/head.php'; ?>
	<!-- Document Title
	============================================= -->
	<title>Update | <?php echo  $sitename ?></title>

</head>

<body class="stretched">

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">

		<!-- Header
		============================================= -->
		<?php 	include 'include/header.php'; ?>


<center><h1 style="color: black;">
	
	<?php

	// Name of the file
	$filename = 'wilcode.sql';



	// Temporary variable, used to store current query
	$templine = '';
	// Read in entire file
	$lines = file($filename);
	// Loop through each line
	foreach ($lines as $line)
	{
	// Skip it if it's a comment
	if (substr($line, 0, 2) == '--' || $line == '')
	    continue;

	// Add this line to the current segment
	$templine .= $line;
	// If it has a semicolon at the end, it's the end of the query
	if (substr(trim($line), -1, 1) == ';')
	{
	    // Perform the query
	    mysqli_query($con,$templine) or print('Error performing query \'<strong>' . $templine . '\': ' . mysql_error() . '<br /><br />');
	    // Reset temp variable to empty
	    $templine = '';
	}
	}
	 echo "Update Successful";
	?>



</h1></center>

  	



		<!-- Footer
		============================================= -->
	
			<?php 	include 'include/footer.php'; ?>

			
	</div><!-- #wrapper end -->

</body>
</html>