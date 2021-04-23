<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Login</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;300;400&display=swap"
	rel="stylesheet">

<!-- CSS Libraries -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">
</head>

<body>
	<div class="wrapper">
		<!-- Header Start -->
		<div class="header home">
			<div class="header-top row align-items-center">
				<div class="col-lg-3">
					<div class="brand">
						<a> STUDENT RECORD MANAGEMENT SYSTEM </a>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="navbar navbar-expand-lg bg-light navbar-light">
						<div class="collapse navbar-collapse justify-content-between"
							id="navbarCollapse">
							<div class="navbar-nav ml-auto">
								<a href="myprofile.html" class="nav-item nav-link active">My
									Profile</a> <a href="" class="nav-item nav-link">Inbox</a> <a
									href="" class="nav-item nav-link">Send Request</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="hero row align-items-center">
				<div class="col-md-10">
					<br> </br>
				</div>
				<div class="col-md-3">
					<h2>LOGIN</h2>
				</div>
				<div class="col-md-7">
					<div class="form">
						<form action="loginservlet">
							<table width="100%" cellspacing="2" align="center" border="0">
								<tbody>
									<tr>
										<td>E-mail</td>
										<td>:</td>
										<td><input type="text" name="email" style="color: white;"
											size="25"></td>
									</tr>
									<tr>
										<td>Password</td>
										<td>:</td>
										<td><input type="password" name="password"
											style="color: white;" size="25"></td>
									</tr>
									<tr>
										<td><br></br></td>
									</tr>
									<tr>
										<td colspan="3" align="center"><input type="submit"
											value="Login" style="color: white;"></td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
				</div>
				<div class="col-md-10">
					<br> </br>
				</div>
				<div class="col-md-10">
					<br> </br>
				</div>
				<div class="col-md-10">
					<br> </br>
				</div>
			</div>

		</div>
	</div>
</body>
</html>