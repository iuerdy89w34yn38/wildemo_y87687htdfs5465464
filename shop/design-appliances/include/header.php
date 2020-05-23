<style type="text/css">
@media (max-width: 767px){
  .navbar-nav>li:hover > .dropdown-menu {
       position: initial;
    display: contents;
}
.topbar {
    display: block;
}
.zs-enabled {
      height: 250px;
    margin-top: 5px;
}

.mobcart{
position: absolute !important;
    background: #105d05;
    top: 56px;
    right: 5%;
    padding:5px 10px;
}


}


@media (min-width: 768px){

  .cartdd{
    color: black;
    padding: 10px;
    top: 30px !important;
    left: -320px !important;
}

@media (min-width: 992px){

  .cartdd{
    color: black;
    padding: 10px;
    top: 30px !important;
    left: -350px !important;
}

}

}

.cartmenu{
  position: relative;
    z-index: 99999;
}

.newlogo {
    position: absolute !important;
    float: left !important;
    left: 35px;
    top: -18px;
}
.navbar-nav {
    float: right;
    display: inline-block;
    margin-top: 10px;
    margin-bottom: 10px
}

.navbar-toggle {
    position: absolute;
    top: -60px;
    }


  .minicartimg{
    width: 50px
  }
  td{
    vertical-align: middle !important;
    font-size: 14px
  }
</style>
<?php 
        $rows =mysqli_query($con,"SELECT * FROM shop where status='cart' AND device='$device'" ) or die(mysqli_error($con));        $rowcount=mysqli_num_rows($rows);
?>
<header class="header-wrapper">
    <div class="topbar clearfix bgcolor">
      <div class="container">
        
      <ul class="topbar-left ">
          <li><i class="fa fa-phone"></i> <?php echo $sitephone ?> </li>
          <li class="email-id"> <i class="fa fa-envelope"></i>
            <a class="theme-text" href="mailto:<?php echo $sitemail ?>"><?php echo $sitemail ?></a>
          </li>
        </ul>
        <ul class="topbar-right    hidden-xs  hidden-sm">
          <li><i class="fa fa-facebook"></i></li>
          <li><i class="fa fa-instagram"></i></li>
          <li><i class="fa fa-twitter"></i></li>
          <li><?php echo $sitename ?></li>
        </ul>
        <ul class="visible-xs">       

          <li class="mobcart bgcolor ">
              <a href="cart.php"><i class="fa fa-shopping-cart"></i> <span><?php echo $rowcount ?></span> </a>
          </li>


        </ul>
      </div>
    </div>   

            <div class="visible-xs col-12 text-center">
              <center>
                                <a class="logo clearfix" href="home"><img src="images/<?php echo $sitelogo; ?>" alt="" class="img-responsive"/></a>
              </center>

            </div>


    <div class="header clearfix">
      <nav class="navbar navbar-main navbar-default">
        <div class="container">

       
          
          <div class="row">
          
            <div class="col-xs-12">
              <div class="header_inner">
                <div class="navbar-header">
                  <button type="button" class=" bgcolor navbar-toggle collapsed" data-toggle="collapse" data-target="#main-nav" aria-expanded="false">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  </button>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <center>
                <div class="collapse navbar-collapse" id="main-nav"><span class="navbar-header"></span>
                    
                  <ul class="nav navbar-nav">

              <li class="newlogo">
                <div class="hidden-xs">
                                <a class="logo clearfix" href="home"><img src="images/<?php echo $sitelogo; ?>" alt="" class="img-responsive"/></a>
                     </div>
              </li>


                    <?php

                    $rows =mysqli_query($con,"SELECT name,slug,res FROM pages WHERE hide=0  ORDER BY ordr" ) or die(mysqli_error($con));
                              
                      while($row=mysqli_fetch_array($rows)){
                        
                        $slug = $row['slug']; 
                        $name = $row['name']; 
                        $res = $row['res']; 

                        ?>

                    <li <?php if($link==$slug) echo'class="bgcolor"' ;?> <?php if($slug=='pages') echo'class="dropdown"' ; else if($slug=='videos') echo'style="display:none;"'; ?>>
                      <a href="<?php if($res==0) echo'cpages-' ;?><?php if($slug=='pages') echo'#'; else  echo $slug ?>"></span><?php echo $name ?></a>

                    	<?php if($slug=='pages'){ ?>
                    		

                    	<ul class="dropdown-menu">

                    		<?php 

                    		$rowsx =mysqli_query($con,"SELECT name,slug FROM childpages where pslug='$slug'  ORDER BY ordr" ) or die(mysqli_error($con));
                    		          
                    		  while($rowx=mysqli_fetch_array($rowsx)){
                    		    
                    		    $cslug = $rowx['slug']; 
                    		    $cname = $rowx['name']; 


                    		    ?>
                    	    <li><a href="pages-<?php echo $cslug ?>"><?php echo $cname ?></a></li>

                    	<?php } ?>
                    	</ul>

                    <?php } ?>




                    </li>



                    
                    <?php } ?>

                    <li class="cartmenu bgcolor hidden-xs">

  <div class="dropdown show">
  <a style="font-size: 19px;" class="btn btn-secondary dropdown-toggle hoverwhite" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color: #fff">
    <i class="fa fa-shopping-cart"></i> <span><?php echo $rowcount ?></span>

  </a>
  <div class="dropdown-menu cartdd">
    <table class="table table-striped">
      <thead>
         <tr>
        <td>Image</td><td style="min-width: 200px">Name</td><td>Size</td><td>Qty</td><td></td><td>Price</td>
      </tr>
      </thead>
      <tbody>

<?php 
        $rows =mysqli_query($con,"SELECT * FROM shop where status='cart' AND device='$device'" ) or die(mysqli_error($con));
        $rowcount=mysqli_num_rows($rows);
        $n=0;      $stotal=0;

        while($row=mysqli_fetch_array($rows)){
          $oid = $row['id']; 
          $pid = $row['pid']; 
          $qty = $row['qty']; 
          $size = $row['size']; 


          $rowsx =mysqli_query($con,"SELECT name,price FROM product where id='$pid' " ) or die(mysqli_error($con));
          while($rowx=mysqli_fetch_array($rowsx)){

            $price = $rowx['price'];  
            $proname = $rowx['name']; 
            $total = $qty*$price;
            $stotal = $stotal+$total;

          $rowsxx =mysqli_query($con,"SELECT img FROM pimgs where pid='$pid'  and feat='1' LIMIT 1 " ) or die(mysqli_error($con));
          while($rowxx=mysqli_fetch_array($rowsxx)){
            $image = $rowxx['img']; 
          }
        
          ?>

        <tr>
        <td><img src="images/products/<?php echo $image ?>" class="minicartimg"></td><td><?php echo $proname ?></td><td> <?php echo $size ?> </td><td> <?php echo $qty ?> </td><td> x </td><td><?php echo number_format($price) ?></td>
      </tr><tr>
      <?php } } ?>
      </tbody>
      <tfoot>
          <tr>
            <td colspan="3" class="text-right">Total</td><td colspan="3">Rs.  <?php echo number_format($stotal) ?> </td>
          </tr>
          <tr>
            <td colspan="6" class="bgcolor text-center">

                <a href="cart.php" class="bgcolor"  > <div style="width: 100%"> <span class="hoverwhite"> View Cart </span> </div></a>
              </td>
            </tr>
      </tfoot>
      

    </table>
  </div>
</div>
                </li>

                  </ul>
                </div><!-- navbar-collapse -->
              </center>

              </div>
            </div>
          </div>
        </div><!-- /.container -->
      </nav><!-- navbar -->
    </div>
  </header>


  
