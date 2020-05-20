<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
<?php include 'include/head.php'; ?>

  <title>Store Products </title>
  <?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
  <?php if(!empty( $_GET['ds_product'])) $page = $_GET['ds_product'] ?>
  <?php if(empty( $_GET['page_name'])) $link = 'Null' ?>
  <?php if(empty( $_GET['ds_product'])) $page = Null ?>

</head>

<body class="body-wrapper">
    

<style>
	

</style>


  <div class="main_wrapper">
  <?php include 'include/header.php'; ?>


  


    <br>    
      <div class="container">


<center>

    <br>

    
      <h1>Order Confirm Successful! Thank You!</h1>
      <br>
      <br>
      <h4>View More Featured Products and Explore </h4>
    </center>


<div class="brandSection clearfix">
          <div class="container">
            <div class="row">
              <div class="col-xs-12">
                <div class="owl-carousel partnersLogoSlider">

                 <?php $rows =mysqli_query($con,"SELECT * FROM product ORDER BY ordr" ) or die(mysqli_error($con));
                 $n=0;

                 while($row=mysqli_fetch_array($rows)){

                  $name2 = $row['name'];
                  $slug2 = $row['slug'];
                  $id = $row['id'];



                  $rowsx =mysqli_query($con,"SELECT * FROM pimgs where pslug='$slug2' && feat='1'  ORDER BY feat desc" ) or die(mysqli_error($con));
                  $n=1;

                  while($rowx=mysqli_fetch_array($rowsx)){
                    $pimg = $rowx['img']; 
                    $pordr = $rowx['ordr']; 
                    $pid = $rowx['id']; 
                    $pfeat = $rowx['feat']; 
                  }



                  ?>
                  <div class="slide">
                    <div class="partnersLogo clearfix">
                      <a href="dproducts-<?php echo $slug2 ?>"><img src="images/products/<?php echo $pimg ?>" ></a>
                      <p style="color:black;"><?php echo $name2 ?></p>
                    </div>
                  </div>

                <?php } ?>

              </div>
            </div>
          </div>
        </div>
      </div>

</div>

    <?php include 'include/footer.php'; ?>

</div>
</body>

</html>

