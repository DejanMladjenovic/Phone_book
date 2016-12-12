<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<link href="https://fonts.googleapis.com/css?family=Bungee+Shade|Lobster|Roboto&effect=fire|outline" rel="stylesheet">
<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<div class="container">
		
		<jsp:include page="includes/header.jsp"></jsp:include>
		
		<div class="menu text-right font-effect-outline">
			<a href="register.jsp" id="register" class="btn btn-primary">Register</a>
			<a href="login.jsp" id="login" class="btn btn-primary">Login</a>
		</div>
		
		<div class="main text-center font-effect-outline">
			<h3>Phone book online</h3>
			<p>Welcome to my phone book application.</p>
			<p>Manage your contacts as free as you want.</p>
		</div>
		
		
	</div>
	<jsp:include page="includes/footer.jsp"></jsp:include>
	

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>