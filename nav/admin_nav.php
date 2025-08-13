<!doctype html>
<html lang="en">
	 <head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
		<meta name="generator" content="Hugo 0.101.0">
		<title>LeyteSamarTD | Admin</title>
		<link rel="icon" type="image/x-icon" href="../images/sample_logo.jpg">

		<link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/dashboard/">

		<!-- Bootstrap core CSS -->
		<link href="https://getbootstrap.com/docs/4.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

		<!-- Favicons -->
		<link rel="manifest" href="https://getbootstrap.com/docs/4.6/assets/img/favicons/manifest.json">
		<link rel="mask-icon" href="/docs/4.6/assets/img/favicons/safari-pinned-tab.svg" color="#563d7c">
		<meta name="msapplication-config" content="/docs/4.6/assets/img/favicons/browserconfig.xml">
		<meta name="theme-color" content="#563d7c">

		<!--<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet">
		<link href="https://cdn.datatables.net/2.3.2/css/dataTables.bootstrap4.css" rel="stylesheet">-->
		
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
			.auto-resize {
				min-height: 100px;
				overflow-y: hidden;
				resize: none;
				text-align: justify;
			}
		</style>

		
		<!-- Custom styles for this template -->
		<link href="../assets/dist/css/dashboard.css" rel="stylesheet">
		
		<!-- dataTable JS -->
        <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://cdn.datatables.net/2.3.2/js/dataTables.js"></script>
        <script src="https://cdn.datatables.net/2.3.2/js/dataTables.bootstrap4.js"></script>
	</head>
	<body>
    
	<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
		<a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="#">LeyteSamarTD</a>
		<button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-toggle="collapse" data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<ul class="navbar-nav px-3">
			<li class="nav-item text-nowrap">
			<a class="nav-link" href="../">Sign out</a>
			</li>
		</ul>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
				<div class="sidebar-sticky pt-3">
					<h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
						<span>MAIN</span>
					</h6>
					<ul class="nav flex-column">
						<li class="nav-item">
							<a class="nav-link <?= ($this->subpage == 'dashboard')? 'active':'' ?>" href="admin.php?">
								<span data-feather="home"></span>
								Dashboard <span class="sr-only">(current)</span>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link <?= ($this->subpage == 'inquiry')? 'active':'' ?>" href="admin.php?subpage=inquiry">
								<span data-feather="message-square"></span>
								Inquiry
							</a>
						</li>
					</ul>
			
					<h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
						<span>PAGES</span>
					</h6>
					
					<ul class="nav flex-column mb-2">
						<li class="nav-item">
							<a class="nav-link <?= (isset($_GET['page']) && $_GET['page'] == 'homePage')? 'active':'' ?>" href="homepage.php?page=homePage">
								<span data-feather="file-text"></span>
								Home
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#" onclick="underConstruction()">
								<span data-feather="file-text"></span>
								Services
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#" onclick="underConstruction()">
								<span data-feather="file-text"></span>
								Contact
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#" onclick="underConstruction()">
								<span data-feather="file-text"></span>
								Explore
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#" onclick="underConstruction()">
								<span data-feather="file-text"></span>
								Footer
							</a>
						</li>
					</ul>
				</div>
			</nav>
		
			<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">