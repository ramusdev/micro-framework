<!DOCTYPE html>
<html>
<head>
	<title>Отзыв</title>
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
              <li><a href="/wether">Погода</a></li>
              <li class="active"><a href="/contacts">Добавить отзыв</a></li>
              <li><a href="/review">Список отзывов</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li><a href="/">Авторизация<span class="sr-only">(current)</span></a></li>
            </ul>
          </div>
        </div>
      </nav>
      <div class="page-header">
  		  <h2>Отзыв</h2>
	  </div>
	  <div class="well">
        <form method="post" action="/contacts/add">
    	  	<div class="input-group">
            <span class="input-group-addon"> <span class="glyphicon glyphicon glyphicon-user" aria-hidden="true"></span></span>
            <input class="form-control" placeholder="Имя" type="text" name="name">
          </div><br>
          <div class="input-group">
            <span class="input-group-addon">@</span>
            <input class="form-control" placeholder="Email" type="text" name="email">
          </div><br>
          <div class="form-group">
            <textarea class="form-control" placeholder="Сообщение" name="message"></textarea>
          </div>
          <button type="submit" class="btn btn-default">Добавить</button>
        </form>
	  </div>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="static/js/jquery-3.3.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="static/js/bootstrap.min.js"></script>
</body>
</html>