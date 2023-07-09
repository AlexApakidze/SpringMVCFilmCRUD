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

		<input type="number" name="filmId"placeholder="Get film by ID"> <br>
		<button>Get Film</button>
	</form>
	
	
	<form action="addFilm.do" method="POST">

		<input type="text" name="title" placeholder="Title of film"> <br>
		<input type="text" name="description" placeholder="Film Description"> <br>
		<button>Add film</button>

	</form>
	<c:choose>
		<c:when test="${not empty film }">
			<h2>${film.title}</h2>
			<h3>Film description: ${film.description}</h3>
			<h3>Release year: ${film.releaseYear}</h3>
			<h3>Language: ${film.getLanguage()}</h3>
		
		</c:when>
		<c:otherwise>
		</c:otherwise>
	</c:choose>
</body>
</html>