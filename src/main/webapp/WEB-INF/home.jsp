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
	
	<form action="createFilm.jsp">
	<button type="submit">Create a Film</button>
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
        
            
                 <form action="deleteFilm.do" method="POST">
            <input type="hidden" name="filmId" value="${film.filmId}">
            <button>Delete Film</button>
        </form> 

        <a href="editFilm.jsp" >
<%--             <input type="hidden" name="filmId" value="${film.filmId}">
 --%>            <button>Edit Film</button>
        </a>
        </c:when>
        <c:otherwise>
        </c:otherwise>
    </c:choose>
</body>
</html>