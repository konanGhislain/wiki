<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
import="com.perou.wiki.controleurs.Action"
import="com.perou.wiki.domaine.Civilite"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>

<div class="container">
  <h1>Incription</h1>
  <form class="form-horizontal" method="post" action="UserController">
  	<div class="form-group">
				<label class="control-label col-sm-2" for="civilite">Civilite :</label>
				<div class="col-sm-10">
					<c:set var="civilite" value="<%= Civilite.values() %>"></c:set>
					<select class="form-control" name="civilite">
						<c:forEach items="${civilite }" var="civilite">
							<option value="${civilite }">${civilite }</option>
						</c:forEach>
					</select>
				</div>
			</div>
  	<div class="form-group">
      <label class="control-label col-sm-2" for="nom">Nom:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" name="nom" id="nom" placeholder="Enter votre nom">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="prenom">prenom:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" name="prenom" placeholder="Enter votre prenom">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" name="mail" placeholder="Enter email">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="login">Login:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" name="login" placeholder="Enter votre login">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Mot de passe:</label>
      <div class="col-sm-10">
        <input type="password" class="form-control" name="pwd" placeholder="Enter password">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd2">Confirmation:</label>
      <div class="col-sm-10">
        <input type="password" class="form-control" name="pwd2" placeholder="Confirmez vous mot de passe">
      </div>
    </div>
    
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default" >Enregistrer</button>
      </div>
    </div>
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
      <input type="hidden" name="action" value="<c:out value= '${Action.SAVE}'></c:out>">
        <button type="reset" class="btn btn-default">Annuler</button>
      </div>
    </div>
    
  </form>
</div>

</body>
</html>

