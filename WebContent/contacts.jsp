<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>contacts</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
<link href="https://fonts.googleapis.com/css?family=Bungee+Shade|Lobster|Roboto&effect=fire|outline|fire-animation" rel="stylesheet">
<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<div class="container">
		
		<jsp:include page="includes/header.jsp"></jsp:include>
		<jsp:include page="includes/menu.jsp"></jsp:include>
		<c:import url="/ContactsServlet"></c:import>
		
		<div class="screen text-center font-effect-outline">
			<h4><c:out value="${screen}" /></h4>
		</div>
		
		<c:choose>
		<c:when test="${fn:length(contacts) == 0}">
			<div class="empty-list text-center">
				<h3>Contact list is empty!</h3>
				<h4>Please <a href="addContact.jsp">add</a> some contacts!</h4>
			</div>
		</c:when>
		
		<c:otherwise>
					
			<div class="row">
				<div class="col-sm-12">
					<table class="table table-hover">
					<thead>
						<tr class="">
							<td>Nr</td>
							<td>First name</td>
							<td>Last name</td>
							<td>City</td>
							<td>Phone</td>
							<td>Email</td>
						</tr>
					</thead>
						<c:forEach items="${contacts}" var="contact" varStatus="counter" step="1">
							<tbody class="tbody " >
								<tr>
									<td><c:out value="${counter.count}" /></td>
									<td><c:out value="${contact.firstName }" /></td>
									<td><c:out value="${contact.lastName}" /></td>
									<td><c:out value="${contact.address}" /></td>
									<td><c:out value="${contact.phoneNumber}" /></td>
									<td><c:out value="${contact.email}" /></td>
									<td id="update">
										<form action="UpdateServlet" method="get">
											<button class="btn btn-primary" name="update" value="${contact.id}">Update</button>
										</form>
									</td>
									<td>
										<form action="DeleteServlet" method="post">
											<button class="btn btn-danger" name="delete" value="${contact.id}">Delete</button>
										</form>
									</td>
								</tr>
							</tbody>
						</c:forEach>
					</table>
				</div>
			</div>
		
		</c:otherwise>
		</c:choose>
		
		
	</div>
	<jsp:include page="includes/footer.jsp"></jsp:include>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>