<?php include 'include/connect.php'; ?>
 
<?php
 if(!empty($_GET['page_name'])){	
$slug = $_GET['page_name'];
//$slug = substr($slug, 0, -1);
$rows =mysqli_query($con,"SELECT * FROM pages where `slug`= '$slug' ") or die(mysqli_error($con));

while($row=mysqli_fetch_array($rows)){

$id = $row['id']; 
$title = $row['title']; 
$keywords = $row['keywords']; 
$desp = $row['desp']; 
$post = $row['post']; 
$parent = $row['parent']; 
$slug = $row['slug'];
?>
	<meta name="keywords" content="<?php echo $keywords ?>"/>
	<meta name="description" content="<?php echo $desp ?>  - Designs By: WilCode"/>
	<meta name="subject" content="<?php echo $title ?> Designs">

	<meta name="copyright"content="WilCode">
	<meta name="language" content="EN">
	<meta name="robots" content="index,follow" />
	<meta name="topic" content="">
	<meta name="summary" content="">
	<meta name="Classification" content="Web Development">
	<meta name="author" content="Hamza Pervaiz, hamzapervaiz5@gmail.com">
	<meta name="designer" content="">
	<meta name="reply-to" content="info@wilcode.com">
	<meta name="owner" content="Hamza Pervaiz, hamza@wilcode.com">
	<meta name="url" content="<?php echo $actual_link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>">
	<meta name="identifier-URL" content="<?php echo $actual_link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>">
	<meta name="directory" content="submission">
	<meta name="category" content="Website Development">
	<meta name="coverage" content="Worldwide">
	<meta name="distribution" content="Global">
	<meta name="rating" content="General">
	<meta name="revisit-after" content="3 days">
	<meta http-equiv="Expires" content="0">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Cache-Control" content="no-cache">

	<meta property="og:title" content=" <?php echo $title ?>  - Designs By: WilCode"/>
	<meta property="og:description" content="The most Affordable and Highly Customizable Online Demos."/>
	<meta property="og:type" content=" <?php echo $title ?> Website Demos"/>
	<meta property="og:url" content="<?php echo $actual_link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>"/>
	<meta property="og:image" content="https://wilcode.com/ogfavicon.png"/>
	<meta property="og:site_name" content="WilCode"/>
	<meta property="fb:page_id" content="WilCodePK" />
	<meta property="og:email" content="info@wilcode.com"/>




<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:site" content="@wilcodepk">
<meta name="twitter:title" content="MAINTAIN YOUR BUSINESS EVEN IN LOCKDOWN!">
<meta name="twitter:description" content="Due to Coronavirus Pandemic, Physical Businesses are rolling down.
Create your Online Presence by building Online Shops. With your Own E-Commerce Store you can Sell your Products and Work from Home.">
<meta name="twitter:image" content="https://pbs.twimg.com/media/EZF0DJxXYAAYG8-?format=jpg&name=4096x4096">




	<!-- Document Title
	============================================= -->
	<title><?php echo $title ?> | <?php echo $sitename ?></title>

<?php } } ?>
