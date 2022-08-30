<!DOCTYPE html>
<html>
	<head>
		<title> Login </title>
		<link rel="stylesheet" href="https://rds3.northsouth.edu/assets/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://rds3.northsouth.edu/assets/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://rds3.northsouth.edu/assets/css/login-style.css">
		<style>
			table {
				border-collapse: separate;
				border-spacing: 0 15px;
			}
			
			td {
				width: 100px;
				padding: 5px;
				color: #2a2a2b;
			}
		</style>
	</head>
	<body>
		<div id="navbar" class="navbar navbar-default navbar-collapse faculty-header">
			<div class="navbar-container  container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<img src="https://rds3.northsouth.edu/assets/images/logo-wide.png" style="max-width:340px">
					</a>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>

		<?php
		if(@$_GET['Empty']==true){
			?>
			<div class="alert-light text-danger"><?php echo $_GET['Please fill out the Name and ID']?></div>
			<?php
		}
		?>
		
		<?php
		if(@$_GET['Invalid']==true){
			?>
			<div class="alert-light text-danger"><?php echo $_GET['Invalid Name or ID']?></div>
			<?php
		}
		?>
		
		<div class="main-container ace-save-state container" id="main-container">
			<div class="page-content main-content">    <div class="row">
				<div class="col-md-6 col-md-offset-3 text-center" style="margin-top:40px;margin-bottom:40px;">
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6 col-lg-offset-3">
					<div class="login-form">
						<h3>NSU-RDS</h3>
						<div class="row">
							<div class="col-md-3 text-center">
								<img src="https://rds3.northsouth.edu/images/login.png" width="80" height="80"
								style="margin-top:10px;">
							</div>
							<div class="col-md-3">

								<form action="process.php" method="post">
									<table>

										<tr>
											<td> Name</td>
											<td><input type="text" name="username"></td>
										</tr>
										<tr>
											<td> Student ID</td>
											<td><input type="password" name="password"></td>
										</tr>
										<tr>
											<td><button class="btn btn-success" name="Login"> Login</button></td>
										</tr>
									</table>
								</form>
							</div>
						</div>
					</div>

					<div class="footer">

						<div class="footer-inner">
							<div class="footer-content">

								<span class="blue" style="font-weight: bold">CSE 311L Project<br><br><br></span>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>