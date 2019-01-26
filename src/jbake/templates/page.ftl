<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<title><#escape x as x?xml>${content.title}</#escape></title>
		<link rel="stylesheet" href="res/layout.css" type="text/css" />
		<link rel="stylesheet" href="res/style.css" type="text/css" />
	</head>
	<body>
		<div id="main">

			<img class="profile" src="res/profile.png" alt="[photo of Steven]" />
			<h1><#escape x as x?xml>${content.title}</#escape></h1>

			${content.body}
			
			<p class="footer">&copy; Steven Eddies, 2014-2019</p>

		</div>
		
	</body>
</html>
