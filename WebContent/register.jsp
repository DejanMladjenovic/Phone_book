<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>register</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<link href="https://fonts.googleapis.com/css?family=Bungee+Shade|Lobster|Roboto&effect=fire|outline" rel="stylesheet">
<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<div class="container">

		<jsp:include page="includes/header.jsp"></jsp:include>
		<div class="login-form text-center">
			<c:out value="${screen}" />
			<h3>Please register!</h3>
			<form action="RegisterServlet" method="post">
				<div class="form-group">
					<label for="username">Username</label> <input
						type="text" pattern="[A-Za-z]{3,}" title="Only letters. Min 3 characters" class="form-control" name="username"
						placeholder="Username" autofocus="autofocus" required>
				</div>
				<div class="form-group">
					<label for="password">Password</label> <input
						type="password" pattern=".{5,}" title="Min 5 characters" class="form-control" name="password"
						placeholder="Password" required>
				</div>
				<div class="form-group">
					<label for="email">Email</label> <input
						type="email" class="form-control" name="email"
						placeholder="Email" required>
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
				<p>Already have account? Please <a href="login.jsp">Sign in!</a></p>
				<p>Back to <a href="index.jsp">start!</a></p>
			</form>
		</div>
	</div>
	<jsp:include page="includes/footer.jsp"></jsp:include>

</body>
</html>