<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Details</title>
</head>
<body>
    <c:forEach var="film" items="${film}"> 
  	
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
	</c:forEach>
<br>
    <a href="home.do">Back to Home</a>

</body>
</html>