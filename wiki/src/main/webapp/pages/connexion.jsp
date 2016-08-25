<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
 <jsp:include page="menu.jsp"></jsp:include>
	<h1>CONNEXION !</h1>
	<div>
		<form method="get" action="/wiki/UserController">
			<div class="form-group">
				<label for="id">speudo:</label> <input type="text"
					class="form-control" id="id" name="id"
					placeholder="pseudo">
			</div>
			<div class="form-group">
				<label for="mdp">Password:</label> <input type="password"
					class="form-control" id="mdp" name="mdp"
					placeholder="Enter password">
			</div>
			<div class="checkbox">
				<label><input type="checkbox"> Remember me</label>
			</div>
			<input type="hidden" name="action" value="<c:out value= '${Action.EDIT}'></c:out>">
			<button type="submit" class="btn btn-default">Submit</button>
		</form>
	</div>

</body>
</html>

