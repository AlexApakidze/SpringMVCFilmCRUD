<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Film</title>
</head>
<body>
    <h1>Edit Film</h1>
    <form action="editFilm.do" method="POST">
        <input type="hidden" name="filmId" value="${film.filmId}">
        
        <h2>Current Values:</h2>
<<<<<<< HEAD
        <p><strong>ID:</strong> ${film.filmId}</p>
=======
        <p><strong>ID</strong> ${film.filmId}</p>
>>>>>>> 00e9a28c5fc7d25edde219d00997501cc697c2d8
        <p><strong>Title:</strong> ${film.title}</p>
        <p><strong>Description:</strong> ${film.description}</p>
        <p><strong>Release Year:</strong> ${film.releaseYear}</p>
        <p><strong>Language ID:</strong> ${film.languageId}</p>
        <p><strong>Rental Duration:</strong> ${film.rentalDuration}</p>
        <p><strong>Rental Rate:</strong> ${film.rentalRate}</p>
        <p><strong>Length:</strong> ${film.length}</p>
        <p><strong>Replacement Cost:</strong> ${film.replacementCost}</p>
        <p><strong>Rating:</strong> ${film.rating}</p>
        
        <h2>Update Film:</h2>
        
<<<<<<< HEAD
        <label for="title">Title:</label>
        <input type="text" name="title" value="${film.title}" placeholder="Edit Title"><br>
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
        <input type="text" name="specialFeatures" value="${film.specialFeatures}" placeholder="Edit Special Features"><br>
=======
        <input type="hidden" name="filmId" value=" ${film.id}">  
		
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
>>>>>>> 00e9a28c5fc7d25edde219d00997501cc697c2d8

        <input type="submit" value="Update">
    </form>
    <a href="home.do">Back to Home</a>
</body>
</html>
