<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>

  <?php include 'include/head.php'; ?>

  <title>Brands - <?php echo $sitename ?> </title>


  <?php if(!empty( $_GET['page_name'])) $link = $_GET['page_name'] ?>
  <?php if(!empty( $_GET['brand_name'])) $page = $_GET['brand_name'] ?>
  <?php if(empty( $_GET['page_name'])) $link = Null ?>
  <?php if(empty( $_GET['brand_name'])) $page = Null ?>

  <style type="text/css">
    .simg{
      height: 200px
    }
  </style>
  
</head>

<body class="body-wrapper">

  <div class="main_wrapper">
  <?php include 'include/header.php'; ?>
  
  <?php
  $rows =mysqli_query($con,"SELECT * FROM pages where slug='brands' " ) or die(mysqli_error($con));


while($row=mysqli_fetch_array($rows)){

  $pageid = $row['id'];  
  $pagename = $row['name'];
  $pagemetak = $row['metak'];
  $pagemetad = $row['metad'];
  $pagepost = $row['post'];
  $pagecover = $row['cover'];
  
}
?>

  
  <div class="banner">
    <img src="images/covers/<?php echo $pagecover ?>" class="img-responsive" width="100%"> 
  </div> <!--banner ends-->


<br>
  
  <div class="container pbg">
  
<br>

    <?php if(!empty($page)){ ?>




      <div class="latest-products text-center">

<?php 
          $rows =mysqli_query($con,"SELECT * FROM brands where id='$page'  ORDER BY ordr" ) or die(mysqli_error($con));
          while($row=mysqli_fetch_array($rows)){            $name = $row['name'];          }
 ?>
        <h2 style="text-transform: capitalize;"><?php echo $name ?> Products</h2>

        <div class="clearfix">&nbsp;</div>



        <div class="row ">


          <?php

          $rows =mysqli_query($con,"SELECT * FROM product where brand='$page'  ORDER BY ordr" ) or die(mysqli_error($con));
          $n=0;

          while($row=mysqli_fetch_array($rows)){

            $name = $row['name'];
            $slug = $row['slug'];
            $desp = $row['desp'];
            $id = $row['id'];
            $price = $row['price']; 
            $sale = $row['sale']; 
            $saleprice = $row['saleprice']; 

            if(empty($desp)) $desp='...';


            $rows2 =mysqli_query($con,"SELECT * FROM pimgs where feat=1 AND  pslug='$slug'   ORDER BY ordr" ) or die(mysqli_error($con));
            $n=0;
            while($row2=mysqli_fetch_array($rows2)){
              $img = $row2['img'];
            }

            ?>


            <div class="col-md-3">
              <div class="iportfolio">
                <div class="portfolio-image">
                  <a href="dproducts-<?php echo $slug ?>">
                    <img src="images/products/<?php echo $img ?>" class="">
                    <?php if(!empty($sale)){ ?>
                      <div class="bgcolor icn"><?php $saleper = (($price/$saleprice)*100)-100; echo round($saleper)  ?>%</div> <?php } ?>

                    </a>
                  </div>
                  <div class="portfolio-desc">
                    <h3><a href="product.php"><?php echo $name ?></a></h3>
                    <span>Rs. <?php echo number_format($price) ?>/ <?php if(!empty($sale)){ ?> <t class="und txtcolor">Rs.  <?php echo number_format($saleprice) ?>/-</t> <?php } ?></span>
                  </div>
                </div>
              </div>

              
              <?php $n++; $img='Null'; } ?>

            </div>
          </div>



        <br>
        <hr>
        <br>

    <?php } ?>

    <div class="latest-projects text-center">
    
    <h2><?php echo $sitename ?> Brands</h2>
    
    <div class="clearfix">&nbsp;</div>
    <div class="row">


    <?php

    $rows =mysqli_query($con,"SELECT * FROM brands  ORDER BY ordr" ) or die(mysqli_error($con));
    $n=0;

    while($row=mysqli_fetch_array($rows)){

      $name = $row['name'];
      $url = $row['url'];
      $img = $row['img'];
      $id = $row['id'];
      ?>

    
    <div class="col-md-6">
        <div class="item-inner">
            
  
    <div class="item col-md-6 text-right">
              <div class="img">
                  
                                <center>

                <a href="brands-<?php echo $id ?>">
                 <img class="simg" src="images/brands/<?php echo $img ?>" alt="" id="img1c" />
                </a>
                                </center>

              </div>
            
            
               <br>
                     
              <br>
              
             </div>
             
             
               <div class="item col-md-6">
                   <br>
                   <br>
                <a href="brands-<?php echo $id ?>">

                      <h4 class="heading1" style="    text-align: left;"><?php echo $name ?></h4>
                                        </a>
                                        <br>
                <a href="brands-<?php echo $id ?>" class="btn bgcolor heading1" style="float: left;">
                  View All Products
                </a>
    </div>
                
          <!--//project-item-->
        </div><!--//item-inner-->
    </div><!--//item-->
    
    
    




  <?php } ?>


  </div>
  

  </div>
  

  </div>
  


    <?php include 'include/footer.php'; ?>

</div>
</body>

</html>

