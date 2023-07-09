<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Details</title>
</head>
<body>
	<h1>Film Details</h1>
	<h2>${film.title}</h2>
	<h3>Film description: ${film.description}</h3>
	<h3>Release year: ${film.releaseYear}</h3>
	<h3>Language: ${film.getLanguage()}</h3>
	<h3>Rental Duration: ${film.rentalDuration}</h3>
	<h3>Rental Rate: ${film.rentalRate}</h3>
	<h3>Film Length: ${film.length}</h3>
	<h3>Replacement cost: ${film.replacementCost}</h3>
	<h3>Film rating: ${film.rating}</h3>
	<h3>Special features: ${film.specialFeatures}</h3>
	<h3>Actors: ${film.actors}</h3>





	<form action="deleteFilm.do" method="POST">
		<input type="hidden" name="filmId" value="${film.filmId}">
		<button>Delete Film</button>
	</form>

	<a href="home.do">Back to Home</a>
</body>
</html>
