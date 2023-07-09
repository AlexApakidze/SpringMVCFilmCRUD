<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Details</title>
</head>
<body>
    <c:forEach var="film" items="${film}">
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
        <h3>Actors: ${film.getActorsFullName()}</h3> 

<<<<<<< HEAD
     <c:forEach var="film" items="${film}">
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
	<h3>Actors: ${film.getActorsFullName()}</h3> 
	 </c:forEach>
	
<%-- 	<form action="deleteFilm.do" method="POST">
=======
	<form action="deleteFilm.do" method="POST">
>>>>>>> 3afd91c13869940a480b16b767fbfc580efcbb13
		<input type="hidden" name="filmId" value="${film.filmId}">
		<button>Delete Film</button>
	</form>
 --%>
 
	<a href="home.do">Back to Home</a>
=======
        <%-- <form action="deleteFilm.do" method="POST">
            <input type="hidden" name="filmId" value="${film.filmId}">
            <button>Delete Film</button>
        </form> --%>

        <form action="editFilm.do" method="GET">
            <input type="hidden" name="filmId" value="${film.filmId}">
            <button>Edit Film</button>
        </form>
    </c:forEach>

    <a href="home.do">Back to Home</a>
>>>>>>> 1b71aa6af8878598463ec7dbc0d6972382f259cd
</body>
</html>
