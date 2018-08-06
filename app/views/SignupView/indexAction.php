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
            <a class="navbar-brand" href="/">MF</a>
          </div>
          <div id="navbar" class="navbar-default">
            <ul class="nav navbar-nav">
              <li><a href="/">Main</a></li>
              <li><a href="/weather">Weather</a></li>
              <li><a href="/contacts">Contacts</a></li>
              <li><a href="/review">Review</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li><a href="/signin">Signin<span class="sr-only"></span></a></li>
              <li><a href="/signup">Signup<span class="sr-only"></span></a></li>
            </ul>
          </div>
        </div>
      </nav>
      <div class="page-header">
  		  <h2>Signup</h2>
	  </div>
	  <div class="well">
        <form method="post" action="/signup/add">
    	  	<div class="input-group">
            <span class="input-group-addon"> <span class="glyphicon glyphicon glyphicon-user" aria-hidden="true"></span></span>
            <input class="form-control" placeholder="Name" type="text" name="name">
          </div><br>
          <div class="input-group">
            <span class="input-group-addon"> <span class="glyphicon glyphicon glyphicon-user" aria-hidden="true"></span></span>
            <input class="form-control" placeholder="Last name" type="text" name="last_name">
          </div><br>
          <div class="input-group">
            <span class="input-group-addon">@</span>
            <input class="form-control" placeholder="Email" type="email" name="email">
          </div><br>
          <div class="input-group">
            <span class="input-group-addon">G</span>
            <input class="form-control" placeholder="Gender" type="text" name="gender">
          </div><br>
          <div class="input-group">
            <span class="input-group-addon">B</span>
            <input class="form-control" placeholder="Birthday" type="text" name="email">
          </div><br>
          <button type="submit" class="btn btn-default">Send</button>
        </form>
	  </div>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="static/js/jquery-3.3.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="static/js/bootstrap.min.js"></script>
</body>
</html>