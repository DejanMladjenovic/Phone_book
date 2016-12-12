<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>welcome</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<link href="https://fonts.googleapis.com/css?family=Bungee+Shade|Lobster|Roboto&effect=fire|outline|fire-animation" rel="stylesheet">
<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<div class="container">
		
		<jsp:include page="includes/header.jsp"></jsp:include>
		<jsp:include page="includes/menu.jsp"></jsp:include>
		
		<div class="screen text-center font-effect-outline">
			<h4><c:out value="${screen}" /></h4>
		</div>
		
		<div class="search form-group text-center">
			<form action="SearchServlet" method="get" class="form-horizontal">
				<input type="text" autocomplete="off" class="form-control" id="match"
					name="match" placeholder="Insert name or lastname" autofocus="autofocus">
				<button type="submit" class="btn btn-primary" name="search">Search</button>

			</form>
		</div>

	</div>
	<jsp:include page="includes/footer.jsp"></jsp:include>
	

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>