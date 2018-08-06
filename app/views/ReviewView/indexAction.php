<!DOCTYPE html>
<html>
<head>
	<title>Review</title>
	 <!-- Bootstrap -->
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" href="/">BWT</a>
          </div>
          <div id="navbar" class="navbar-default">
            <ul class="nav navbar-nav">
              <li><a href="/">Главная</a></li>
              <li><a href="/weather">Погода</a></li>
              <li><a href="/contacts">Добавить отзыв</a></li>
              <li class="active"><a href="/review">Список отзывов</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li><a href="/signin">Войти<span class="sr-only"></span></a></li>
              <li><a href="/signup">Регистрация<span class="sr-only"></span></a></li>
            </ul>
          </div>
        </div>
      </nav>
      <div class="page-header">
  		  <h2>Отзывы</h2>
	    </div>
      <?php foreach ( $reviews as $value ) : ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h3 class="panel-title"><?php echo $value->name; ?></h3><small><?php echo $value->email; ?></small>
          </div>
          <div class="panel-body">
            <?php echo $value->message; ?>
          </div>
        </div>
      <?php endforeach; ?>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="static/js/jquery-3.3.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="static/js/bootstrap.min.js"></script>
</body>
</html>