<?php
error_reporting(E_ERROR | E_PARSE);
//including the database connection file
include_once("pages/config.php");
while($res = mysqli_fetch_array($result)){
	$qty = $_POST['qty'.$res['item_id'].'']?: '0';
	$size = $_GET['size'.$res['item_id'].'']?: '0';
	$st = $size * $qty;
	$total = 0 ;
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Pizza Ordering System - Front End Developer</title>
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
	<div class="content">
		<div class="banner">
			<img src="images/banner.jpg" alt="banner.jpg">
		</div>
		<div class="container-fluid">
			<?php include_once("pages/header.php");?>
			<form name="form" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
			<?php include_once("pages/customer.php");?>
				<table>
					<?php include_once("pages/classic.php");?>
					<?php include_once("pages/specialty.php");?>
					<?php include_once("pages/toppings.php");?>
				</table>
				<table>
					<tr>
						<th>
							<div class="row justify-content-center">
								<div class="col-auto"><input type="submit" name="OK"></div>
							</div>
						</th>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
<?php include_once("pages/functions.php");?>
</html>