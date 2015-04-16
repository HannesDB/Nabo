<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>nabo</title>
		<link href="../Stylesheets/style.css" rel="stylesheet" type="text/css">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	</head>


	<div id="wrapper">

	<header>
		<div id="logga">
			<a href="home.html">
			<img src="../Bilder/vitlogga.png" alt="Nabo logga" style="width:260px;height:82px;border:0"></a>
		</div>

		<div id="loggaUt"
			<a href="index.html">Logga ut</a>
		</div>
	</header>

	<nav>
		<nav id="profile">
			<ul>
				<li><a href="myProfile.html" class="nav">Min profil</a>
				<li><a href="editProfile.html" class="nav">Redigera min profil</a>
			</ul>
		</nav>

		<nav id="board">
			<ul>
				<li><a href="board.html" class="nav">Anslagstavlan</a>
			</ul>
		</nav>

		<nav id="messages">
			<ul>
				<li><a href="inbox.html" class="nav">Mina meddelanden</a>
				<li><a href="write.html" class="nav">Skriv nytt meddelande</a>
			</ul>
		</nav>

		<nav id="nabos">
			<ul>
				<li><a href="nabos.html" class="nav">Nabos</a>
			</ul>
		</nav>
	</nav>

	<div id="content">
		%for name in name_list:	
			<div id="naboRuta">
				<img src="../Bilder/avatar.png" alt="Bild på en Nabo" style="width:60px;height:60px;padding:5px">
				<a href="#">{{name}}</a>
				<p>Hej</p>
				<p>BLAH</p>
			</div>
		%end
	</div>
	

	

	</div>
</html>