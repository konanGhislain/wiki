<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.perou.wiki.controleurs.Action"%>
<!-- <!DOCTYPE html> -->
<!-- <html lang="en"> -->
<!-- <head> -->
<!-- <title>Bootstrap Example</title> -->
<!-- <meta charset="utf-8"> -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!-- <link rel="stylesheet" -->
<!-- 	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<!-- <script -->
<!-- 	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
<!-- <script -->
<!-- 	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<!-- </head> -->
<!-- <body> -->

<!-- 	<nav class="navbar navbar-inverse"> -->
<!-- 		<div class="container-fluid"> -->
<!-- 			<div class="navbar-header"></div> -->
<!-- 			<h2>Modal Example</h2> -->
<!-- 			<!-- Trigger the modal with a button --> -->
<!-- 			<button type="button" class="btn btn-info btn-lg" data-toggle="modal" -->
<!-- 				data-target="#myModal1">Home</button> -->
<!-- 			<button type="button" class="btn btn-info btn-lg" data-toggle="modal" -->
<!-- 				data-target="#myModal2">Administatuer</button> -->
<!-- 			<button type="button" class="btn btn-info btn-lg" data-toggle="modal" -->
<!-- 				data-target="#myModal3">Open Modal</button> -->
<!-- 			<button type="button" class="btn btn-info btn-lg" data-toggle="modal" -->
<!-- 				data-target="#myModal4">Open Modal</button> -->
<!-- 			<button type="button" class="btn btn-info btn-lg" data-toggle="modal" -->
<!-- 				data-target="#myModal5">Open Modal</button> -->
<!-- 			<button type="button" class="btn btn-info btn-lg" data-toggle="modal" -->
<!-- 				data-target="#myModal6">Listes</button> -->
<!-- 			<button type="button" class="btn btn-info btn-lg" data-toggle="modal" -->
<!-- 				data-target="#myModal7">Connexion</button> -->

<!-- 			<!-- Modal --> -->
<!-- 			<div class="modal fade" id="myModal1" role="dialog"> -->
<!-- 				<div class="modal-dialog"> -->

<!-- 					Modal content -->
<!-- 					<div class="modal-content"> -->
<!-- 						<div class="modal-header"> -->
<!-- 							<button type="button" class="close" data-dismiss="modal">&times;</button> -->
<!-- 							<h4 class="modal-title">Modal Header</h4> -->
<!-- 						</div> -->
<!-- 						<div class="modal-body"> -->
<!-- 							<p>Some text in the modal.</p> -->
<!-- 						</div> -->
<!-- 						<div class="modal-footer"> -->
<!-- 							<button type="button" class="btn btn-default" -->
<!-- 								data-dismiss="modal">Close</button> -->
<!-- 						</div> -->
<!-- 					</div> -->

<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="modal fade" id="myModal2" role="dialog"> -->
<!-- 				<div class="modal-dialog"> -->

<!-- 					Modal content -->
<!-- 					<div class="modal-content"> -->
<!-- 						<div class="modal-header"> -->
<!-- 							<button type="button" class="close" data-dismiss="modal">&times;</button> -->
<!-- 							<h4 class="modal-title">Modal Header</h4> -->
<!-- 						</div> -->
<!-- 						<div class="modal-body"> -->
<!-- 							<p>Some text in the modal.</p> -->
<!-- 						</div> -->
<!-- 						<div class="modal-footer"> -->
<!-- 							<button type="button" class="btn btn-default" -->
<!-- 								data-dismiss="modal">Close</button> -->
<!-- 						</div> -->
<!-- 					</div> -->

<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="modal fade" id="myModal3" role="dialog"> -->
<!-- 				<div class="modal-dialog"> -->

<!-- 					Modal content -->
<!-- 					<div class="modal-content"> -->
<!-- 						<div class="modal-header"> -->
<!-- 							<button type="button" class="close" data-dismiss="modal">&times;</button> -->
<!-- 							<h4 class="modal-title">Modal Header</h4> -->
<!-- 						</div> -->
<!-- 						<div class="modal-body"> -->
<!-- 							<p>Some text in the modal.</p> -->
<!-- 						</div> -->
<!-- 						<div class="modal-footer"> -->
<!-- 							<button type="button" class="btn btn-default" -->
<!-- 								data-dismiss="modal">Close</button> -->
<!-- 						</div> -->
<!-- 					</div> -->

<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="modal fade" id="myModal4" role="dialog"> -->
<!-- 				<div class="modal-dialog"> -->

<!-- 					Modal content -->
<!-- 					<div class="modal-content"> -->
<!-- 						<div class="modal-header"> -->
<!-- 							<button type="button" class="close" data-dismiss="modal">&times;</button> -->
<!-- 							<h4 class="modal-title">Modal Header</h4> -->
<!-- 						</div> -->
<!-- 						<div class="modal-body"> -->
<!-- 							<p>Some text in the modal.</p> -->
<!-- 						</div> -->
<!-- 						<div class="modal-footer"> -->
<!-- 							<button type="button" class="btn btn-default" -->
<!-- 								data-dismiss="modal">Close</button> -->
<!-- 						</div> -->
<!-- 					</div> -->

<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="modal fade" id="myModal5" role="dialog"> -->
<!-- 				<div class="modal-dialog"> -->

<!-- 					Modal content -->
<!-- 					<div class="modal-content"> -->
<!-- 						<div class="modal-header"> -->
<!-- 							<button type="button" class="close" data-dismiss="modal">&times;</button> -->
<!-- 							<h4 class="modal-title">Modal Header</h4> -->
<!-- 						</div> -->
<!-- 						<div class="modal-body"> -->
<!-- 							<p>Some text in the modal.</p> -->
<!-- 						</div> -->
<!-- 						<div class="modal-footer"> -->
<!-- 							<button type="button" class="btn btn-default" -->
<!-- 								data-dismiss="modal">Close</button> -->
<!-- 						</div> -->
<!-- 					</div> -->

<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="modal fade" id="myModal6" role="dialog"> -->
<!-- 				<div class="modal-dialog"> -->

<!-- 					Modal content -->
<!-- 					<div class="modal-content"> -->
<!-- 						<div class="modal-header"> -->
<!-- 							<button type="button" class="close" data-dismiss="modal">&times;</button> -->
<!-- 							<h4 class="modal-title">Modal Header</h4> -->
<!-- 						</div> -->
<!-- 						<div class="modal-body"> -->
<!-- 							<p>Some text in the modal.</p> -->
<!-- 						</div> -->
<!-- 						<div class="modal-footer"> -->
<!-- 							<button type="button" class="btn btn-default" -->
<!-- 								data-dismiss="modal">Close</button> -->
<!-- 						</div> -->
<!-- 					</div> -->

<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="modal fade" id="myModal7" role="dialog"> -->
<!-- 				<div class="modal-dialog"> -->

<!-- 					Modal content -->
<!-- 					<div class="modal-content"> -->
<!-- 						<div class="modal-header"> -->
<!-- 							<button type="button" class="close" data-dismiss="modal">&times;</button> -->
<!-- 							<h4 class="modal-title">Modal Header</h4> -->
<!-- 						</div> -->
<!-- 						<div class="modal-body"> -->
<!-- 							<p>Some text in the modal.</p> -->
<!-- 						</div> -->
<!-- 						<div class="modal-footer"> -->
<!-- 							<button type="button" class="btn btn-default" -->
<!-- 								data-dismiss="modal">Close</button> -->
<!-- 						</div> -->
<!-- 					</div> -->

<!-- 				</div> -->
<!-- 			</div> -->

<!-- 		</div> -->
<!-- 		</div> -->
<!-- 	</nav> -->

<!-- </body> -->
<!-- </html> -->


<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Wiki</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="#"><a
				href="/wiki/UserController?action=${Action.HOME}">home</a></li>
			<li><a href="#">Administration</a></li>
			<li><a href="#">Reporting</a></li>
			<li><a href="/wiki/UserController?action=${Action.LIST}">Gestion
					de profil</a></li>
			<li><a href="/wiki/UserController?action=${Action.CREATE}">Inscription</a></li>
			<li><a href="#">Carte Google</a></li>
			<li><a href="/wiki/UserController?action=${Action.CONNEXION}">Connexion</a></li>
			<li>
				<button type="button" class="btn btn-default">
					<span class="glyphicon glyphicon-search"></span> <a href="#">rechercher</a>
				</button>
			</li>
		</ul>
	</div>
</nav>
