<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="menu font-effect-outline">
	<p id="welcome" class="font-effect-fire-animation" style="display: inline;">Welcome: <c:out value="${user.username}"/></p>
	<a href="welcome.jsp" id="home" class="btn btn-primary">Home</a>
	<a href="addContact.jsp" id="add" class="btn btn-primary">Add new</a>
	<a href="contacts.jsp" id="contacts" class="btn btn-primary">My contacts</a>
	<a href="LogoutServlet" id="logout" class="btn btn-danger">Log out</a>
</div>