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

		<input type="number" name="filmId" placeholder="Get film by ID"> <br>
		<button>Get Film</button>
	</form>
	
	
	<form action="addFilm.do" method="POST">
		<input type="text" name="title" placeholder="Title of film"> <br>
		<input type="text" name="description" placeholder="Film Description"> <br>
		<input type="number" name="releaseYear" placeholder="Release Year"><br>
		<h3>Languages:</h3>
		<input type="number" name="languageId" min="1" max="6" ><br>
		<h3>1: English</h3>
		<h3>2: Italian</h3>
		<h3>3: Japanese</h3>
		<h3>4: Mandarin</h3>
		<h3>5: French</h3>
		<h3>6: German</h3>
		<input type="number" name="length" placeholder="Length of movie(In minutes)"><br>
		<input type="rating" name="" placeholder=""><br>
		<button>Add film</button>

	</form>
	<c:choose>
		<c:when test="${not empty film }">
		
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
			
		</c:when>
		<c:otherwise>
		</c:otherwise>
	</c:choose>
</body>
</html>