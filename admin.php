<?php 
include_once("pages/config.php");
?>
<!DOCTYPE html>
<html>
<head>
	<title>Pizza Ordering System/ Admin Page</title>
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
	<div class="content">
		<div class="banner">
			<img src="images/banner.jpg" alt="banner.jpg">
		</div>
	</div>
	<table>
		<tr>
			<th>Full Name</th>
			<th>Mobile Number</th>
			<th>Orders</th>
			<th>Total Purchase Order</th>
		</tr>
		<?php
		while ($res = mysqli_fetch_array($result_admin)) {
			echo "
		<tr>
			<td>".$res['customer_name']."</td>
			<td>".$res['customer_contact']."</td>
			<td>Orders</td>
			<td>Total Purchase Order</td>
		</tr>


			";
		}
		?>
	</table>
</body>
</html>