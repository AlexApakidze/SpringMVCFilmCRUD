<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC FIlm Site</title>
</head>
<body>
	<h1>Full Stack Films Inc.</h1>
	<form action="showFilm.do" method="POST">

		<input type="number" name="filmId"> <br>
		<button>Get Film</button>
	</form>
	<c:choose>
		<c:when test="${not empty film }">
			<h2>${film.actors}</h2>
		</c:when>
		<c:otherwise>
		</c:otherwise>
	</c:choose>
	
	<form action="addFilm.do" method="POST">

		<!-- <input type="number" name="filmId"> <br> -->
		<input type="text" name="title"> <br>
		<input type="text" name="description"> <br>
		<!-- <input type="number" name="releaseYear"> <br>
		<input type="number" name="languageId"> <br>
		<input type="number" name="rentalDuration"> <br>
		<input type="number" name="rentalRate"> <br>
		<input type="number" name="length"> <br>
		<input type="number" name="replacementCost"> <br>
		<input type="text" name="rating"> <br>
		<input type="text" name="specialFeatures"> <br> -->
		<button>Add film</button>

	</form>
	<c:choose>
		<c:when test="${not empty film }">
			<h2>${film.actors}</h2>
		</c:when>
		<c:otherwise>
		</c:otherwise>
	</c:choose>
</body>
</html>