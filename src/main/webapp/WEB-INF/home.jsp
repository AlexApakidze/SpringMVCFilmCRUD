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
	Get Film by ID
	<form action="showFilmById.do" method="POST">
		<input type="number" name="filmId" placeholder="Get film by ID"> <br>
		<button>Get Film</button>
	</form>
	<br>
	Get Film by Search Term
	<form action="showFilmsBySearchTerm.do" method="POST">
		<input type="text" name="keyword" placeholder="Get film by keyword"> <br>
		<button>Get Film</button>
	</form>
	<br>
	<br>
	<br>
	<div>
	<h2>Create a Film!</h2>
		<form action="createFilm.do" method="POST">
		<input type="text" name="title" placeholder="Title of film"> <br>
		<input type="text" name="description" placeholder="Film Description"> <br>
		<input type="number" name="releaseYear" placeholder="Release Year"><br>
		<div>
		<h3>Language:</h3>
		<input type="number" name="languageId" min="1" max="6" >
		
		<h4>1: English<br>2: Italian<br>3: Japanese <br>4: Mandarin<br>5: French<br>6: German</h4>
		</div>
		<input type="number" name="length" placeholder="Length of movie(In minutes)"><br>
	
	<button type="submit">Create a Film</button>
	</form>
</div>
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
		
			
			     <form action="deleteFilm.do" method="POST">
            <input type="hidden" name="filmId" value="${film.filmId}">
            <button>Delete Film</button>
        </form> 

    <form action="editFilm.do" method="POST">
        <input type="hidden" name="filmId" value="${film.filmId}">
        
       
        <h2>Update Film:</h2>
        
		
		<input type="text" name="title" value="${film.title}" placeholder="Edit Title"><br>
		<label for="title">Title:</label>
		<label for="description">Description:</label>
		<input type="text" name="description" value="${film.description}" placeholder="Edit Description"><br>
		<label for="releaseYear">Release Year:</label>
		<input type="text" name="releaseYear" value="${film.releaseYear}" placeholder="Edit Release Year"><br>
		<label for="languageId">Language ID:</label>
		<input type="text" name="languageId" value="${film.languageId}" placeholder="Edit Language ID"><br>
		<label for="rentalDuration">Rental Duration:</label>
		<input type="text" name="rentalDuration" value="${film.rentalDuration}" placeholder="Edit Rental Duration"><br>
		<label for="rentalRate">Rental Rate:</label>
		<input type="text" name="rentalRate" value="${film.rentalRate}" placeholder="Edit Rental Rate"><br>
		<label for="length">Length:</label>
		<input type="text" name="length" value="${film.length}" placeholder="Edit Length"><br>
		<label for="replacementCost">Replacement Cost:</label>
		<input type="text" name="replacementCost" value="${film.replacementCost}" placeholder="Edit Replacement Cost"><br>
		<label for="rating">Rating:</label>
		<input type="text" name="rating" value="${film.rating}" placeholder="Edit Rating"><br>
        <label for="specialFeatures">Special Features:</label>
		<input type="text" name="specialFeatures" value="${film.specialFeatures}" placeholder="Edit special features"><br>

        
        <input type="submit" value="Update">
    </form>
		</c:when>
		<c:otherwise>
		</c:otherwise>
	</c:choose>
</body>
</html>