<!DOCTYPE html>
<html>
<head>
	<title>Ruang Baca</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="style.css">

</head>
<body>
	<?php 
		include "connect.php";
		include "checktransaction.php";
		session_start();
	 ?>

	<!-- ================================== NAVBAR & JUMBOTRON ================================== -->
	<img src="img/wallib2.jpg" class="bg-us">
	<header>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		  <a class="navbar-brand" href="index.php">Ruang Baca</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item">
		        <a class="nav-link" href="index.php">Home</a>
		      </li>
		      <li class="nav-item dropdown">
		        <a class="nav-link dropdown-toggle" style="cursor: pointer;" id="navbarDropdown" data-toggle="dropdown">
		          Categories
		        </a>
		        <div class="dropdown-menu">
		        	<a class="dropdown-item" href="categories.php?cat=all">All</a>
		        	<?php 
		        		$sql = "SELECT * FROM categories";
		        		$data = mysqli_query($link, $sql);

		        		while ($row = mysqli_fetch_object($data)) {
		        			?>
		        				<a class="dropdown-item" href="categories.php?cat=<?=$row->CategoryId?>"><?=$row->CategoryName?></a>
		        			<?php 
		        		}
		        	 ?>
		        </div>
		      </li>		      
		      <li class="nav-item active">
		        <a class="nav-link" href="about.php">About</a>
		      </li>
		    </ul>

		    <?php 
		    	if (!empty($_SESSION["nim"])) {
		    		$nim = $_SESSION["nim"];
		    		$sql = "SELECT * FROM members WHERE Nim = '$nim'";
		    		$data = mysqli_query($link, $sql);
		    		$row = mysqli_fetch_object($data);
		    		?>
		    		<a href="profile.php" class="text-warning" id="link">
		    			Hello, <?=$row->Name?>
				  	</a>
		    		<?php
		    	}
		    	else{
		    		?>
		    		<a href="signin.php">
		    			<button class="btn btn-outline-success my-2 my-sm-0 mr-1 rounded-0" type="submit">Sign in</button>
				  	</a>
		    		<?php
		    	}
		     ?>

		  </div>
		</nav>

		<div class="jumbotron jumbotron-fluid transparent m-0">
		  <div class="container">
		    <h1 class="display-4">About Us</h1>
		  </div>
		</div>

	</header>

	<!-- ================================== CONTENT ================================== -->

	<main class="bg-white p-5">
		<div class="container">
			<p class="text-dark text-justify">
				Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
			</p>

			<h2 class="text-dark mt-5">Our Contributor</h2>
			<table class="table table-hover">
			  <thead class="thead-dark">
			    <tr>
			      <th scope="col">Name</th>
			      <th scope="col">Email</th>
			      <th scope="col">Hire Date</th>
			      <th scope="col">Contribute</th>
			      <th scope="col"></th>
			    </tr>
			  </thead>
			  <tbody>
			  	<?php 
			  	$sql = "SELECT * FROM admins";
			  	$data = mysqli_query($link,$sql);

			  	while ($row = mysqli_fetch_object($data)) {
			  		$sql2 = "SELECT AdminId, SUM(Quantity) as Many FROM `inputs` WHERE AdminId = '$row->AdminId' GROUP BY AdminId";
			  		$data2 = mysqli_query($link, $sql2);
			  		$row2 = mysqli_fetch_object($data2);
			  		$quantity = $row2->Many;
			  		if ($quantity == 0) {
			  			$quantity = 0;
			  		}
			  		?>
					    <tr>
					      <td class="align-middle"><?=$row->Name?></td>
					      <td class="align-middle"><?=$row->Email?></td>
					      <td class="align-middle font-italic"><?=$row->HireDate?></td>
					      <td class="align-middle"><?=$quantity?> Books</td>
					      <td><img src="img/boy.svg" style="float: right;" width="75px"></td>
					    </tr>
			  		<?php
			  	}
			  	 ?>
			  </tbody>
			</table>
		</div>
	</main>
	
	<!-- ================================== FOOTER ================================== -->

	<footer class="bg-dark py-4">
		<div class="text-center">Copyright &copy; 2021 All Rights Reserved</div>
	</footer>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>