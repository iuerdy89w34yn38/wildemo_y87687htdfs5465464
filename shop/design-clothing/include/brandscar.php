

    <div class="brandSection clearfix">
      <div class="container">
        <div class="row">
          <div class="col-xs-12">
            <div class="owl-carousel partnersLogoSlider">
              
            	<?php $rows =mysqli_query($con,"SELECT * FROM product ORDER BY ordr" ) or die(mysqli_error($con));
                $n=0;

                while($row=mysqli_fetch_array($rows)){

                    $name = $row['name'];
                     $slug = $row['slug'];
                     $id = $row['id'];
                     
                      
      $rows2 =mysqli_query($con,"SELECT * FROM pimgs where feat=1 AND  pslug='$slug'  ORDER BY ordr" ) or die(mysqli_error($con));
      $n=0;

      while($row2=mysqli_fetch_array($rows2)){

        $img = $row2['img'];

      }

                     

                  ?>
              <div class="slide">
                <div class="partnersLogo clearfix">
                  <a href="dproducts-<?php echo $slug ?>"><img src="images/products/<?php echo $img ?>"></a>
                  <p style="color:black;"><?php echo $name ?></p>
                </div>
              </div>
              
              <?php } ?>
              
            </div>
          </div>
        </div>
      </div>
    </div><!-- Brand-section -->