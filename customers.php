<?php 

include 'connection.php';

$q="select * from customer";
$result=mysqli_query($con,$q);

?>

<!DOCTYPE HTML>
<html lang="en">
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
		<title>CUSTOMER DETAILS</title>
		 <link rel="stylesheet" href="customer2.css">
		 	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	</head>
<body>
	

<div class="navbar">
  <div class="logo">
  </div>

<ul id="navlist">
  
  <li class="navlist"><a href="index.php"><i class='fa fa-home' aria-hidden='true'></i>Home</a></li>
   <li class="navlist"><a class='active' href="customers.php"><i class="fa fa-users" aria-hidden="true"></i>Customers List</a></li>
   <li class="navlist"><a href="transfer.php"><i class='fa fa-money' aria-hidden='true'></i>Money Transfer</a></li>
    <li class="navlist"><a href="transactionhistory.php"><i class='fa fa-exchange' aria-hidden='true'></i> View Transaction</a></li>

</ul>
</div>
</body>

 <div class="dark-overlay">
  	<div>
    <h1 class="title" style="color:yellow">Customer Details</h1>
    

  </div>

  <br>

  <table class="table" align=center style="font-family: serif;color: black;">
		<thead>
			<th>CUST ID</th>
			<th>NAME</th>
			<th>EMAIL</th>
			<th>BALANCE</th>
		</thead>
		<tbody>
		<tr align = center>
				
			<?php  
				while($row=mysqli_fetch_array($result)){
			?>
			
			<td><?php echo  $row["id"]; ?></td>
			<td><?php echo  $row["name"]; ?></td>
			<td><?php echo  $row["email"]; ?></td>
			<td><?php echo  $row["current-balance"]; ?></td>
		<tr align = center>
	<?php }
	?>
		</tr>
		</tbody>
	</table>
</div>


<footer>
  <p>Developed by Rashmi Khogare</p><br>
  	<ul class="foot">
</ul>

</footer>

</body>
</html>