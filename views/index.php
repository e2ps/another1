<?php include '../nav/header.php'; ?>

			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<?php
						$counter = 0;
						$active = '';
						//get all the carousel
						foreach ($carousel as $crsl_listItem){
							if ($counter == 0) $active = 'class="active"'; //set value
							echo '<li data-target="#myCarousel" data-slide-to="'.$counter.'" '.$active.'></li>';
							$counter++;
							$active = ''; //resset the value
						}
					?>
				</ol>
				<div class="carousel-inner">
					<?php 
						$counter = 0;
						$active = ""; 
						foreach ($carousel as $crsl_inner){
							if ($counter == 0) $active = "active";
							?>
							<div class="carousel-item <?= $active ?>">
								<img class="bd-placeholder-img" width="100%" height="100%" 
									 src="<?= $crsl_inner['cft_img'] ?>"
									>
								<div class="container">
									<div class="carousel-caption caption-1">
										<h1><?= $crsl_inner['cft_name'] ?></h1>
										<p><?= $crsl_inner['cft_desc'] ?></p>
										<p><a class="btn btn-lg btn-primary" 
											href="<?= $crsl_inner['cft_more'] ?>"
											target="_blank"
											>Explore for more...</a></p>
									</div>
								</div>
							</div>
							<?php 
							$active = "";
							$counter++;
						}
					?>
				</div>
				<button class="carousel-control-prev" type="button" data-target="#myCarousel" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</button>
				<button class="carousel-control-next" type="button" data-target="#myCarousel" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</button>
			</div>
			<!-- kailangan ini didto hit footer end tag div -->
			<div class="container marketing">
				
				<!-- START THE FEATURETTES -->
				<?php
					$counter = 0;
					$align = '';
					foreach ($hero as $hro){
						if ($counter == 1) {
							$align = 'order-md-2'; 
						}
						?>
							<hr class="featurette-divider">
			
							<div class="row featurette">
								<div class="col-md-7 <?= $align ?>">
									<h2 class="featurette-heading"><?= $hro['hft_title'] ?><span class="text-muted"><?= $hro['hft_subTitle'] ?></span></h2>
									<p class="lead"><?= $hro['hft_desc'] ?></p>
								</div>
								<div class="col-md-5">
									<!--<svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"></rect><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>-->
									<img
										 class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" 
										 width="500" 
										 height="500" 
										 src="<?= $hro['hft_img'] ?>"
										 alt="<?= $hro['hft_title'] ?>"
										>
								</div>
							</div>
						<?php
						$align = '';
						if ($counter == 1) {
							$counter = 0; //reset counter
						}else{
							$counter++; //increment
						}
					}
				?>
				<!-- /END THE FEATURETTES -->
				
			
<?php include '../nav/footer.php'; ?>