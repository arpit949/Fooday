<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar">
	<div class="container-fluid">
		<div class="navbar-header">
			<a href="#" onClick="return false;" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar-collapse"
				aria-expanded="false"></a> <a href="#" onClick="return false;"
				class="bars"></a> <a class="navbar-brand" href="index.html"> <img
				src="<%=request.getContextPath()%>/adminResources/image/logo.png"
				alt="" /> <span class="logo-name">AtrioHR</span>
			</a>
		</div>
		<div class="collapse navbar-collapse" id="navbar-collapse">

			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown user_profile">
					<div class="dropdown-toggle" data-toggle="dropdown">
						<img
							src="<%=request.getContextPath()%>/adminResources/image/user_icon.webp"
							alt="user" style="margin-right: 10px;height: 40px;">
					</div>
					<ul class="dropdown-menu pullDown">
						<li class="body">
							<ul class="user_dw_menu">
								<li><a href="/logout"> <i class="material-icons">power_settings_new</i>Logout
								</a></li>
							</ul>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
	</nav>
</body>
</html>

