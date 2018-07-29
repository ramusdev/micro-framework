<!DOCTYPE html>
<html>
<head>
	<title>Погода</title>
	 <!-- Bootstrap -->
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" href="/">MF</a>
          </div>
          <div id="navbar" class="navbar-default">
            <ul class="nav navbar-nav">
              <li><a href="/">Главная</a></li>
              <li class="active"><a href="/wether">Погода</a></li>
              <li><a href="/contacts">Добавить отзыв</a></li>
              <li><a href="/review">Список отзывов</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li><a href="/">Авторизация<span class="sr-only">(current)</span></a></li>
            </ul>
          </div>
        </div>
      </nav>
      <div class="page-header">
  		  <h2>Погода - Запорожье</h2>
	  </div>
	  <div class="alert alert-success" role="alert">
		Последнее обновление данных о погоды: <?php echo $date; ?>
	  </div>
	  <div class="well">
	  	<p>Температура воздуха: <?php echo $wether->temp; ?> °C</p>
		<p>Температура воды: <?php echo $wether->water; ?> °C</p>
		<p>Скорость ветра: <?php echo $wether->wind; ?> м/с</p>
		<p>Давление: <?php echo $wether->press; ?> мм рт. ст.</p>
		<p>Влажность: <?php echo $wether->hum; ?> %</p>
	  </div>
		
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="static/js/jquery-3.3.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="static/js/bootstrap.min.js"></script>
</body>
</html>