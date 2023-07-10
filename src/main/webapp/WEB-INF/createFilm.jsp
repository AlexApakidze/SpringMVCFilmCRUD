	<!DOCTYPE html>
<html>
<head>
<head>
<title>Make your own movie!</title>
</head>
<body>
	<form action="createFilm.do" method="POST">
		<input type="text" name="title" placeholder="Title of film"> <br>
		<input type="text" name="description" placeholder="Film Description"> <br>
		<input type="number" name="releaseYear" placeholder="Release Year"><br>
		<h3>Languages:</h3>
		<input type="number" name="languageId" min="1" max="6" >
		<h4>1: English<br>2: Italian<br>3: Japanese <br>4: Mandarin<br>5: French<br>6: German</h4>
		<input type="number" name="length" placeholder="Length of movie(In minutes)"><br>
		<button>Add film</button>
	</form>
	</body>
	</html>