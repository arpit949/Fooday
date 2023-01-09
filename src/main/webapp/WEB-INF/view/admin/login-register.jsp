<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta content="width=device-width, initial-scale=1" name="viewport" />
	<title>AtrioHR - HR and Company Management Admin Template</title>
	<!-- Favicon-->
	<link rel="icon" href="<%=request.getContextPath()%>/adminResources/image/favicon.ico" type="image/x-icon">
	<!-- Plugins Core Css -->
	<link href="<%=request.getContextPath()%>/adminResources/css/app.min.css" rel="stylesheet">
	<!-- Custom Css -->
	<link href="<%=request.getContextPath()%>/adminResources/css/style.css" rel="stylesheet" />
	<link href="<%=request.getContextPath()%>/adminResources/css/extra_pages.css" rel="stylesheet" />
</head>

<body class="light">
	<div class="loginmain">
		<div class="loginCard">
			<div class="login-btn splits">
				<p>Already an user?</p>
				<button class="active">Login</button>
			</div>
			<div class="rgstr-btn splits">
				<p>Don't have an account?</p>
				<button>Register</button>
			</div>
			<div class="wrapper">
				<form id="login" tabindex="500">
					<h3>Login</h3>
					<div class="mail">
						<input type="email">
						<label>Mail or Username</label>
					</div>
					<div class="passwd">
						<input type="password">
						<label>Password</label>
					</div>
					<div class="text-right p-t-8 p-b-31">
						<a href="#">
							Forgot password?
						</a>
					</div>
					<div class="submit">
						<button class="dark">Login</button>
					</div>
					<div class="flex-c p-b-112">
						<a href="#" class="login100-social-item bg-fb">
							<i class="fab fa-facebook-f"></i>
						</a>
						<a href="#" class="login100-social-item bg-twitter">
							<i class="fab fa-twitter"></i>
						</a>
						<a href="#" class="login100-social-item bg-google">
							<i class="fab fa-google"></i>
						</a>
					</div>
				</form>
				<form id="register" tabindex="502">
					<h3>Register</h3>
					<div class="name">
						<input type="text">
						<label>Full Name</label>
					</div>
					<div class="mail">
						<input type="email">
						<label>Mail</label>
					</div>
					<div class="uid">
						<input type="text">
						<label>User Name</label>
					</div>
					<div class="passwd">
						<input type="password">
						<label>Password</label>
					</div>
					<div class="submit">
						<button class="dark">Register</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Plugins Js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
	<!-- Extra page Js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/login-register.js"></script>
</body>

</html>