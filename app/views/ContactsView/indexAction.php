<!DOCTYPE html>
<html>
<head>
	<title><?php echo $title; ?></title>
</head>
<body>
	<form action="/contacts/add" method="post">
		<p><input type="text" name="name" value="" placeholder="Name"></p>
		<p><input type="text" name="email" value="" placeholder="Email"></p>
		<p><textarea name="message" placeholder="Message"></textarea></p>
		<button type="submit">Send</button>
	</form>
</body>
</html>