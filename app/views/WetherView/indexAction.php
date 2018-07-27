<!DOCTYPE html>
<html>
<head>
	<title><?php echo $title; ?></title>
</head>
<body>
	<div class="wrapper">
		<div class="title">Wether</div>
		<p>Wind speed: <?php echo $wether->wind; ?></p>
		<p>Temperature: <?php echo $wether->temp; ?></p>
		<p>Pressure: <?php echo $wether->press; ?></p>
		<p>Humidity: <?php echo $wether->hum; ?></p>
		<p>Water: <?php echo $wether->water; ?></p>
</body>
</html>