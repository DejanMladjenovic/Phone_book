<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>welcome</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<link href="https://fonts.googleapis.com/css?family=Bungee+Shade|Lobster|Roboto&effect=fire|outline" rel="stylesheet">
<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<div class="container">
		
		<jsp:include page="includes/header.jsp"></jsp:include>
		
		
		<div class="menu font-effect-outline">
			<p id="welcome" style="display: inline;">Welcome: <c:out value="${user.username}"/></p>
			<a href="welcome.jsp" id="home" class="btn btn-primary">Home</a>
			<a href="addContact.jsp" id="add" class="btn btn-primary">Add new</a>
			<a href="contacts.jsp" id="contacts" class="btn btn-primary">My contacts</a>
			<a href="LogoutServlet" id="logout" class="btn btn-danger">Log out</a>
		</div>
		
		<div class="search form-group text-center">
			<c:out value="${screen}" />
			<form action="SearchServlet" method="get" class="form-horizontal">
				<input type="text" autocomplete="off" class="form-control" id="match"
					name="match" placeholder="Insert name or lastname"
					required="required">
				<button type="submit" class="btn btn-primary" name="search">Search</button>

			</form>
		</div>

		<jsp:include page="includes/footer.jsp"></jsp:include>
		
	</div>
	

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>