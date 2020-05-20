<button class="navbar-toggle mobheader">
  <i class="fa fa-bars"></i> 
</button>
<div class="navbar navbar-fixed-top">
      <span class="htitle visible-xs hidden-lg hidden-md hidden-sm" > Admin Panel </span>

    <div class="container-fluid main-nav clearfix">
 

    <div class="nav-collapse">

      <ul class="nav">
      
      <a href="orders">
      <span class="uprleft "><i class="fa fa-tasks" ></i> Orders Management</span></a>

        <?php

        $rows =mysqli_query($con,"SELECT name,slug,res,icon FROM pages WHERE hide=0 ORDER BY ordr" ) or die(mysqli_error($con));
                  
          while($row=mysqli_fetch_array($rows)){
            
            $slug = $row['slug']; 
            $name = $row['name']; 
            $res = $row['res']; 
            $icon = $row['icon']; 

            ?>

        <li>
          <a <?php if($link==$slug) echo'class="current"' ;?> href="<?php if($res==0) echo'cpages-' ;?><?php echo $slug ?>"><i class="fa fa-<?php echo $icon ?>"></i>  <?php echo $name ?></a>

        </li>

       
        <?php } ?>
      <a href="manages">
      <span class="upr"> <i class="fa fa-bars" ></i> Site Settings</span></a>

      </ul>

    </div>
  </div>
</div>



