<!DOCTYPE html>
<?php?>
<html lang="en">
<head>
	<link rel="icon" type="image/ico" href="images/favicon.ico">
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="author" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<title>My Cypher</title>

	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" href="css/owl.theme.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link href='https://fonts.googleapis.com/css?family=Unica+One' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,700' rel='stylesheet' type='text/css'>
	<!-- Main css -->
	<link rel="stylesheet" href="css/style.css">
	<style>
		#filein
		{
			font-size:1.3em;
			color:#FFF;
			background-color:#000;
			border-radius:25px;
			width:100px;
			text-align:center;
			border:1px solid #000;	
		}
		#filein:hover
		{
			text-align:center;
			width:100px;
			color:#fff;
			border:1px solid #FFF;
			background-color:#0CF;
			border-left-color:#000;
			border-right-color:#000;
		}
		
		/*Dropdown menu css code starts here */
		#primary_nav_wrap
		{
			margin-top:15px
		}
		#primary_nav_wrap ul
		{
			list-style:none;
			position:relative;
			float:left;
			margin:0;
			padding:0
		}
		#primary_nav_wrap ul a
		{
			display:block;
		}
		#primary_nav_wrap ul li
		{
			position:relative;
			float:left;
			margin:0;
			padding:0
		}
		#primary_nav_wrap ul li.current-menu-item
		{
			background:#ddd
		}
		#primary_nav_wrap ul li:hover
		{
			background:#f6f6f6
		}
		#primary_nav_wrap ul ul
		{
			display:none;
			position:absolute;
			top:100%;
			left:0;
			background:#fff;
			padding:0
		}
		#primary_nav_wrap ul ul li
		{
			float:none;
			width:200px
		}
		#primary_nav_wrap ul ul a
		{
			line-height:120%;
			padding:10px 15px
		}
		#primary_nav_wrap ul ul ul
		{
			top:0;
			left:100%
		}
		#primary_nav_wrap ul li:hover > ul
		{
			display:block
		}
		/*Dropdown menu css code ends here */
		.ov:hover
		{
			box-shadow: 2px 2px 2px 2px #000;
		}
	</style>
</head>
<body data-spy="scroll" data-target=".navbar-collapse" data-offset="50">

<div class="preloader">
	<div class="sk-spinner sk-spinner-pulse"></div>
</div>

<!-- Navigation Section -->

<div class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
			</button>
			<a href="index.php" class="navbar-brand"><span>My</span> Cypher</a>
		</div>
		<div class="collapse navbar-collapse">
			<nav id="primary_nav_wrap">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="encrypt.php" class="smoothScroll">Encrypt</a></li>
					<li><a href="decrypt.php" class="smoothScroll">Decrypt</a></li>
					<li><a href="gencrypt.php" class="smoothScroll">Group Encrypt</a></li>
					<li><a href="gdecrypt.php" class="smoothScroll">Group Decrypt</a></li>
					
					<li><a href="index.php" class="smoothScroll">About</a></li>
					
				</ul>
			</nav>            
		</div>
	</div>
</div>
