<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Details</title>
</head>
<body>

	<form action="deleteFilm.do" method="POST">
		<input type="hidden" name="filmId" value="${film.filmId}">
		<button>Delete Film</button>
	</form>

	<a href="home.do">Back to Home</a>
</body>
</html>
