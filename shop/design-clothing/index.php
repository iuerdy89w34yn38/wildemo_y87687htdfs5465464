<!DOCTYPE html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>

  <?php include 'include/head.php'; ?>

  <title><?php echo $sitename ?></title>

  <?php if(empty($_GET['page_name'])) $link ='home';  ?>
  
</head>

<body class="body-wrapper">

  <div class="main_wrapper">

    <?php include 'include/header.php'; ?>



    <div class="banner">

      <div id="demo-1" data-zs-src='[

      <?php

      $result =mysqli_query($con,"SELECT * FROM slider  ORDER BY ordr" ) or die(mysqli_error($con));
      $rowcount=mysqli_num_rows($result);
      $rows =mysqli_query($con,"SELECT * FROM slider  ORDER BY ordr" ) or die(mysqli_error($con));
      $n=0;

      while($row=mysqli_fetch_array($rows)){

        $name = $row['name']; 
        $img = $row['img']; 
        $ordr = $row['ordr']; 
        $id = $row['id']; 

        $n++;

        ?>

        "images/slider/<?php echo $img ; ?>"

        <?php if($n<$rowcount) echo "," ;  } ?>


        ]' 
        data-zs-overlay="dots">

      </div> 

    </div> <!--banner ends-->

    <section id="projects" class="projects-section section">
      <div class="container">
        <?php

        $rows =mysqli_query($con,"SELECT * FROM home" ) or die(mysqli_error($con));
        $n=0;

        while($row=mysqli_fetch_array($rows)){

          $post = $row['post']; 
          $postimg = $row['img']; 
        }
        ?>

        <div class="row">
          <div class="col-md-6"> <?php echo $post ?> </div>

          <div class="col-md-6">

           <img src="images/<?php echo $postimg ?>" class="img-responsive"> 
         </div>
       </div>


       <div class="clearfix">&nbsp;</div>

       <div class="latest-projects text-center">
        <br><hr><br>
        <h2>Featured Products</h2>

        <div class="clearfix">&nbsp;</div>

        <?php

        $rows =mysqli_query($con,"SELECT * FROM product WHERE feat=1  ORDER BY ordr" ) or die(mysqli_error($con));
        $n=0;

        while($row=mysqli_fetch_array($rows)){

          $name = $row['name'];
          $slug = $row['slug'];
          $desp = $row['desp'];
          $id = $row['id'];

               $price = $row['price']; 
               $sale = $row['sale']; 
               $saleprice = $row['saleprice'];


          $rows2 =mysqli_query($con,"SELECT * FROM pimgs where feat=1 AND pid='$id'  ORDER BY ordr" ) or die(mysqli_error($con));
          $n=0;

          while($row2=mysqli_fetch_array($rows2)){

            $img = $row2['img'];

          }


          ?>

          <a href="dproducts-<?php echo $slug ?>">
            <div class="item col-md-4 col-12">
              <div class="item-inner">
                <div class="project-item">
                  <div class="img-holder img-holder-9" style="background:url(images/products/<?php echo $img ?>);     background-size: 100% 280px;background-position:;"></div>
                   <?php if(!empty($sale)){ ?><div class="bgcolor icn"><?php $saleper = (($price/$saleprice)*100)-100; echo round($saleper)  ?>%</div> <?php } ?>
                  <div class="info-mask">
                    <div class="mask-inner">
                      <h4 class="title"><?php echo $name ?>
                        <br>
                        <span style="font-size: 14px">Rs. <?php echo number_format($price) ?>/ <?php if(!empty($sale)){ ?> <t class="und txtcolor">Rs.  <?php echo number_format($saleprice) ?>/-</t> <?php } ?></span>
                      </h4>

                      <div class=""><a href="dproducts-<?php echo $slug ?>"class="btn btn-default " >View Product</a> </div>


                    </div><!--//mask-inner-->
                  </div><!--//info-mask-->
                </div>

                <!--//project-item-->
              </div><!--//item-inner-->
            </div><!--//item-->
          </a>
        <?php } ?>
      </div> <!--//row-->

</div>

  <div class="main_wrapper">






    <?php

    $rows =mysqli_query($con,"SELECT * FROM home" ) or die(mysqli_error($con));
    $n=0;

    while($row=mysqli_fetch_array($rows)){

      $vidimg = $row['vidimg']; 
      $vidpost = $row['vidpost']; 

    }
    ?>



    <div class="count clearfix wow fadeIn paralax" data-wow-delay="100ms" style="background-image: url(images/<?php echo $vidimg ?>);">

      <div class="paralax-text text-center" style="background-color: #e8e8e8b5;
    padding: 20px; margin-top: 0px;">

       <?php echo $vidpost ?>

     </div>
   </div><!-- count -->


   <br>
   <br>
   <center>
    <div style="margin-top: 100px">
    <br>
        </div>

    <div class="brandSection clearfix" style="margin-top: 100px;">
    <br><h2>Our Brands</h2></center>

    </div>
    <div class="brandSection clearfix" style="margin-bottom: 100px;">
      <div class="container">
        <div class="row">
          <div class="col-xs-12">

            <div class="owl-carousel partnersLogoSlider">

            	<?php $rows =mysqli_query($con,"SELECT * FROM brands where feat=1  ORDER BY ordr" ) or die(mysqli_error($con));
              $n=0;

              while($row=mysqli_fetch_array($rows)){

                $url = $row['url']; 
                $name = $row['name']; 
                $img = $row['img'];
                $id = $row['id'];

                ?>
                <div class="slide">
                  <div class="partnersLogo clearfix">
                    <a href="brands-<?php echo $id ?>"><img src="images/brands/<?php echo $img ?>"></a>
                  <p style="color:black;"><?php echo $name ?></p>

                  </div>
                </div>

              <?php } ?>
              
            </div>
          </div>
        </div>
      </div>
    </div><!-- Brand-section -->

    <br>
    <br>

    <?php include 'include/footer.php'; ?>

  </div>
</body>

</html>

