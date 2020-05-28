<div class="spinner-wrapper">
<div class="spinner">
<center>
<div class="loadingio-spinner-cube-iw5wr7uhrl"><div class="ldio-kj3w5g5d1ni">
<div></div><div></div><div></div><div></div>
</div></div>
</center>
</div>
</div>
	<header id="header" class="full-header">

		<div id="header-wrap">

			<div class="container clearfix">

				<div id="primary-menu-trigger"><i class="icon-reorder"></i></div>

				<?php if($domain==$wilcode){ ?>

				<!-- Logo
					============================================= -->
					<div id="logo">
						<a href="home" class="standard-logo" data-dark-logo="images/logo.png"><img src="images/logo.png" alt="Logo"></a>
						<a href="home" class="retina-logo" data-dark-logo="images/logo.png"><img src="images/logo.png" alt="Logo"></a>
					</div><!-- #logo end -->

				<?php } if($domain==$it){ ?>
				<!-- Logo
					============================================= -->
					<div id="logo">
						<a href="home" class="standard-logo" data-dark-logo="images/it.png"><img src="images/it.png" alt="Logo" style="width: 180px;"></a>
						<a href="home" class="retina-logo" data-dark-logo="images/it.png"><img src="images/it.png" alt="Logo" style="width: 180px;"></a>
					</div><!-- #logo end -->

				<?php } ?>

				<!-- Primary Navigation
					============================================= -->
					<nav id="primary-menu">

						<ul>
							<li><a href="https://wilcode.com/"><div><i class="icon-home"></i>Home</div></a>
							</li>
							<li><a href="online-shops"><div><i class="icon-shop"></i>Online Shops</div></a>
							</li>

							<li><a href="designs"><div><i class="icon-magic"></i>Designs</div></a>
								<ul  data-animate="pulse" data-speed="900" style="  animation-duration: 0.3s;" >

									<?php $rows =mysqli_query($con,"SELECT * FROM pages where parent='designs' " ) or die(mysqli_error($con)); while($row=mysqli_fetch_array($rows)){
								        $id = $row['id']; 
								        $title = $row['title']; 
								        $icon = $row['icon']; 
								     	$parent = $row['parent']; 
								      	$slug = $row['slug']; 
								      ?>
									<li><a href="<?php echo $slug ?>"><div> <i class="<?php echo $icon ?>"></i> <?php echo $title ?></div></a></li>
									<?php } ?>
									

								</ul>
							</li>

							<li><a href="about"><div><i class="icon-call"></i>Contact Us</div></a>
							</li>

						</ul>


					<!-- Top Search
						============================================= -->
						<div id="top-search">
							<a href="#" id="top-search-trigger"><i class="icon-search3"></i><i class="icon-line-cross"></i></a>
							<form action="search.html" method="get">
								<input type="text" name="q" class="form-control" value="" placeholder="Type &amp; Hit Enter..">
							</form>
						</div><!-- #top-search end -->

					</nav><!-- #primary-menu end -->

				</div>

			</div>

		</header><!-- #header end -->
