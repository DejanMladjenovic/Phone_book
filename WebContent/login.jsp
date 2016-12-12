<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<link href="https://fonts.googleapis.com/css?family=Bungee+Shade|Lobster|Roboto&effect=fire|outline" rel="stylesheet">
<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<div class="container">

		<jsp:include page="includes/header.jsp"></jsp:include>

		<div class="login-form text-center">
			<c:out value="${screen}" />
			<h3>Please log in!</h3>
			<form action="LoginServlet" method="post">
				<div class="form-group">
					<label for="username">Username</label> <input
						type="text" class="form-control" name="username"
						placeholder="Username" autofocus="autofocus">
				</div>
				<div class="form-group">
					<label for="password">Password</label> <input
						type="password" class="form-control" name="password"
						placeholder="Password">
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
				<p>New user? Please <a href="register.jsp">Sign up!</a></p>
				<p>Back to <a href="index.jsp">start!</a></p>
			</form>
		</div>
	
	</div>
	<jsp:include page="includes/footer.jsp"></jsp:include>
	

</body>
</html>