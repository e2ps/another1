<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
		<meta name="generator" content="Hugo 0.101.0">
		<title>LeyteSamarTD</title>
		<link rel="icon" type="image/x-icon" href="../images/sample_logo.jpg">
		
		<link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/navbar-fixed/">
		
		<!-- Bootstrap core CSS -->
		<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
		
		<link href="../assets/dist/css/carousel.css" rel="stylesheet">
		<link href="../assets/dist/css/heroes.css" rel="stylesheet">
		
		<style>
			.bd-placeholder-img {
				font-size: 1.125rem;
				text-anchor: middle;
				-webkit-user-select: none;
				-moz-user-select: none;
				-ms-user-select: none;
				user-select: none;
				}
			
				@media (min-width: 768px) {
				.bd-placeholder-img-lg {
					font-size: 3.5rem;
				}
				}
			.actives {
				font-weight: bold;
				color: #ed7c1f !important;
			}
			.caption-1 {
				background-color: #6c757d63 !important;
				border-radius: 10px;
				padding: 30px;
			}
		</style>
	
		<!-- Custom styles for this template -->
		<link href="../assets/dist/css/navbar-top-fixed.css" rel="stylesheet">
	</head>
  <body>
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark" style="font-size:25px;">
			<a class="navbar-brand" href="#"><img src="../images/sample_logo.jpg" alt="LeyteSamarTD Logo" height="50px" width="70px" style="border-radius:10px;" ></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item ">
						<a class="nav-link <?= ($this->page == 'Home')? 'actives':'' ?>" href="../?page=home">Home <span class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item">
						<a class="nav-link <?= (isset($_GET['page']) && $_GET['page'] == 'services')? 'actives':'' ?>" href="services.php?page=services">Services</a>
					</li>
					<li class="nav-item">
						<a class="nav-link <?= ($this->page == 'contact')? 'actives':'' ?>" href="contact.php?page=contact">Contact</a>
					</li>
					<li class="nav-item">
						<!--<a class="nav-link" href="#" data-toggle="modal" data-target="#myModal">Login</a>-->
						<a class="nav-link <?= ($this->page == 'login')? 'actives':'' ?>" href="authenticate.php?">Login</a>
					</li>
					<li class="nav-item">
						<a class="nav-link <?= (isset($_GET['page']) && $_GET['page'] == 'explore')? 'actives':'' ?>" href="explore.php?page=explore">Explore!</a>
					</li>
				</ul>
			</div>
		</nav>
		<br/>
		<main role="main" class="container">