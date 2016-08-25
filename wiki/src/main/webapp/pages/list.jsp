<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.perou.wiki.controleurs.Action" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>

	<div class="container">
		<h2>Liste de utilisateur</h2>
		<table class="table table-condensed">
			<c:forEach items="${userList}" var="entry">
				<thead>
					<tr>
						<th>Nom</th>
						<th>Prenom</th>
						<th>Email</th>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</thead>
				<tbody>
					<tr>

						<td>${entry.value.nom}</td>
						<td>${entry.value.prenom}</td>
						<td>${entry.key}</td>
						<td>statut</td>
						<td><a>Modifier</a></td>
						<td><a>Supprimer</a></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>Supprimer</td>
					</tr>
				</tbody>
			</c:forEach>
		</table>
	</div>
	<div class="container">
		<h2>Modal Example</h2>
		<!-- Trigger the modal with a button -->
		<button type="button" class="btn btn-info btn-lg" data-toggle="modal"
			data-target="#myModal">Creer un article</button>

		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Modal Header</h4>
					</div>
					<div class="modal-body">
						<div >
							<h2>Form control: input</h2>
							<p>The form below contains two input elements; one of type
								text and one of type password:</p>
							<form>
								<div class="form-group">
									<label for="usr">Titre:</label> <input type="text"
										class="form-control" id="usr">
								</div>
								<div class="form-group">
									<label for="comment">Article:</label>
									<textarea class="form-control" rows="5" id="comment"></textarea>
								</div>
							</form>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>

	</div>

</body>
</html>