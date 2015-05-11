<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>nabo</title>
		<link rel="stylesheet" href="/static/style.css">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	</head>


	<div id="wrapper">

		<header>
			<div id="logga">
				<a href="/home/">
				<img src="/static/Bilder/logotypnabo.jpg" alt="Nabologga" style="width:260px;height:82px;border:0"></a>
			</div>
			<div id="loggaUt">
				<p id="user">
				<a href="/myProfile/">{{username}}</a>
				<a href="/">Logga ut</a>
			</div>
		</header>

		<nav>
			<nav class="profile">
				<ul>
					<li><p id="user"><a href="/myProfile/">{{username}}</a></p></li>
					<li><a href="/editProfile/" class="nav">Redigera min profil</a></li>
				</ul>
			</nav>

			<nav class="board">
				<ul>
					<li><a href="/home/" class="nav">Anslagstavlan</a></li>
				</ul>
			</nav>

			<nav class="messagesClick">
				<ul>
					<li><a href="/inbox/" class="nav">Mina meddelanden</a></li>
					<li><a href="/write/" class="nav">Skriv nytt meddelande</a></li>
				</ul>
			</nav>

			<nav class="nabos">
				<ul>
					<li><a href="/nabos/" class="nav">Nabos</a></li>
				</ul>
			</nav>
		</nav>

		<div id="content">
			<div id="bodySquare">
				<div id="writeAPost">
					<p id="picWhenPosting">
					<img src="{{profile_pic}}" alt="Bild på en Nabo" style="width:60px;height:60px;padding:5px">
					</p>

					<form action="/board/" method="POST" class="form">

					<p class="publishAPost">
						<input required type="text" name="writtenPost" id="writtenPost" placeholder="Lämna ett meddelande på husets anslagstavla">			
					</p>

					<p class="submitPost">
						<input name="submitPost" id="submitPost" type="submit" value="Sätt upp anslaget!">
					</p>
				</div>
			%for namn, picture, content, time in zip(namn_list, pict_list, content_list, time_list):
				<div class="publishedPosts">
					<img src="{{picture}}" alt="Bild på en Nabo" style="width:60px;height:60px;padding:5px">
					<p id="publishedDate">Postat: {{time[:-4]}}</p>
					<p id="publishedName">{{namn}}</p>
					<p id="publishedText">{{content}}</p>

					<p id="replyToPost">
						Svara på anslaget
					</p>
				</div>
			%end
			</div>
		</div>
		

		

	</div>
</html>