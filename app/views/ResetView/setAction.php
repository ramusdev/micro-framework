<!DOCTYPE html>
<html>
<head>
  <title>Review</title>
   <!-- Bootstrap -->
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">
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
              <li><a href="/review">Список отзывов</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <?php if ( ! $_SESSION[ 'auth' ] ) : ?>
                <li><a href="/signin">Войти<span class="sr-only"></span></a></li>
                <li><a href="/signup">Регистрация<span class="sr-only"></span></a></li>
              <?php else : ?>
                <li><a href=""><?php echo $_SESSION[ 'auth' ][ 'user_name' ]; ?><span class="sr-only"></span></a></li>
                <li><a href="/signin/logout">Выйти<span class="sr-only"></span></a></li>
              <?php endif; ?>
            </ul>
          </div>
        </div>
      </nav>
      <div class="page-header">
        <h2>Введите новый пароль</h2>
    </div>
    <div class="well">
        <form method="post" action="/reset/password">
          <div class="input-group">
            <span class="input-group-addon"> <span class="glyphicon glyphicon glyphicon-lock" aria-hidden="true"></span></span>
            <input class="form-control" placeholder="Пароль" type="text" name="password">
          </div><br>
          <button type="submit" class="btn btn-default">Обновить пароль</button>
          <input type="hidden" name="token" value="<?php echo $token; ?>">
        </form>
    </div>
  </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/static/js/jquery-3.3.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/static/js/bootstrap.min.js"></script>
</body>
</html>