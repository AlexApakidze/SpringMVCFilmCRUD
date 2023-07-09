<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Delete Film</title>
</head>
<body>
	<h1>Delete Film</h1>
	<c:if test="${film != null}">
		<p>Are you sure you want to delete the film with ID: ${film.filmId}?</p>
		<form action="deleteFilm.do" method="post">
			<input type="hidden" name="filmId" value="${film.filmId}">
			<input type="submit" value="Delete">
		</form>
	</c:if>
	<c:if test="${film == null}">
		<p>${message}</p>
	</c:if>
</body>
</html>
so