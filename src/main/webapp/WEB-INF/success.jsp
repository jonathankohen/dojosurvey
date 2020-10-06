<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="webjars/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<title>Submitted Info</title>
</head>
<body>
	<div class="container">
		<div class="row my-5">
			<div class="col-sm-7 offset-3">
				<h1 class="display-1">Submitted Info:</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-7 offset-3">
				<table class="table table-hover">
					<tr>
						<td><strong>Name:</strong></td>
						<td>${name}</td>
					</tr>
					<tr>
						<td><strong>Dojo Location:</strong></td>
						<td>${dojo}</td>
					</tr>
					<tr>
						<td><strong>Favorite Language:</strong></td>
						<td>${faveLan}</td>
					</tr>
					<tr>
						<td><strong>Comments:</strong></td>
						<td>${comments}</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>