<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>updateContact</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<link href="https://fonts.googleapis.com/css?family=Bungee+Shade|Lobster|Roboto&effect=fire|outline|fire-animation" rel="stylesheet">
<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<div class="container">

		<jsp:include page="includes/header.jsp"></jsp:include>
		<jsp:include page="includes/menu.jsp"></jsp:include>

		<div class="add-form text-center">
			<c:out value="${screen}" />
			<h3>Update contact!</h3>
			<form action="UpdateServlet" method="post">
				<div class="form-group">
					<label for="firstName">First Name</label> <input
						type="text" class="form-control" name="firstName" value="${contact.firstName}"
						autofocus="autofocus">
				</div>
				<div class="form-group">
					<label for="lastname">Last name</label> <input
						type="text" class="form-control" name="lastName"
						value="${contact.lastName}">
				</div>
				<div class="form-group">
					<label for="address">Address</label> <input
						type="text" class="form-control" name="address"
						value="${contact.address}">
				</div>
				<div class="form-group">
					<label for="number">Phone number</label> <input
						type="text" class="form-control" name="phoneNumber"
						value="${contact.phoneNumber}">
				</div>
				<div class="form-group">
					<label for="email">Email</label> <input
						type="email" class="form-control" name="email"
						value="${contact.email}">
				</div>
				<button type="submit" name="submit" value="${contact.id}" class="btn btn-default">Submit</button>
				<button type="submit" name="submit" value="cancel" class="btn btn-default">Cancel</button>
			</form>
		</div>
	</div>
	<jsp:include page="includes/footer.jsp"></jsp:include>
	

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>