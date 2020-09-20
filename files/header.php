<!DOCTYPE html>
<html>
<head>
	<title>hMUSIC</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light container">
	  <a class="navbar-brand" href="index.php">hMUSIC</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>

	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto"> 
	      <li class="nav-item">
	        <a class="nav-link" href="#">Popular Tracks</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Latest Tracks</a>
	      </li>  
	      <li class="nav-item">
	      	<?php if (isset($_SESSION['user'])){ ?>
		        <!-- <a class="nav-link text-danger" href="logount_process.php">Logout</a> -->
		        <a class="nav-link" href="my_account.php">My Account</a>
	      	<?php }else{ ?>
		        <a class="nav-link" href="login.php">Login</a>	      	
	      	<?php } ?>

	      </li>  
	       <li class="nav-item">
	        <a class="btn btn-dark btn-sm mt-1" href="admin_song_upload.php">UPLOAD NEW MUSIC</a>
	      </li>  
	    </ul>
	    <form class="form-inline my-2 my-lg-0">
	      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
	      <button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Search</button>
	    </form>
	  </div>
	</nav>

<?php if(isset($_SESSION['message'])){ ?>
	<div class="alert alert-<?= $_SESSION['message']['type'] ?>  m-3">
		<?php 
			echo($_SESSION['message']['body']);
			unset($_SESSION['message']);
		 ?>
	</div>
<?php	} ?>