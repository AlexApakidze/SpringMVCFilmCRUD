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
	<form action="showFilmById.do" method="POST">

		<input type="number" name="filmId" placeholder="Get film by ID"> <br>
		<button>Get Film</button>
	</form>
	
	<form action="showFilmsBySearchTerm.do" method="POST">

		<input type="text" name="keyword" placeholder="Get film by keyword"> <br>
		<button>Get Film</button>
	</form>
	
	
	<form action="addFilm.do" method="POST">
		<input type="text" name="title" placeholder="Title of film"> <br>
		<input type="text" name="description" placeholder="Film Description"> <br>
		<input type="number" name="releaseYear" placeholder="Release Year"><br>
		<h3>Languages:</h3>
		<input type="number" name="languageId" min="1" max="6" >
		<h4>1: English<br>2: Italian<br>3: Japanese <br>4: Mandarin<br>5: French<br>6: German</h4>
		<input type="number" name="length" placeholder="Length of movie(In minutes)"><br>
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
			<h3>Actors: ${film.getActorsFullName()}</h3>
			
		</c:when>
		<c:otherwise>
		</c:otherwise>
	</c:choose>
</body>
</html>