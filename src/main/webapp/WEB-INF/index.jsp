<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="webjars/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<title>Welcome</title>
</head>
<body>
	<div class="container">
		<div class="row my-5">
			<div class="col-sm-8 offset-4">
				<h1 class="display-1">Welcome</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-8 offset-2">
				<form action="/submitInfo" method="post">
					<div class="form-group row">
						<label for="name" class="col-sm-2 col-form-label">Your
							Name:</label>
						<div class="col-sm-10">
							<input name="name" type="text" class="form-control" id="name"
								placeholder="Name" />
						</div>
					</div>

					<div class="form-group row">
						<label for="dojo" class="col-sm-2 col-form-label">Dojo
							Location:</label>
						<div class="col-sm-10">
							<select name="dojo" id="dojo" class="custom-select">
								<option defaultValue>San Jose</option>
								<option value="Burbank">Burbank</option>
								<option value="Chicago">Chicago</option>
							</select>
						</div>
					</div>

					<div class="form-group row">
						<label for="faveLan" class="col-sm-2 col-form-label">Favorite
							Language:</label>
						<div class="col-sm-10">
							<select name="faveLan" id="faveLan" class="custom-select">
								<option defaultValue>Python</option>
								<option value="San Jose">JavaScript</option>
								<option value="Burbank">Java</option>
							</select>
						</div>
					</div>
					
					<div class="form-group row">
						<label for="comments" class="col-sm-2 col-form-label">Comments (optional):</label>
						<div class="col-sm-10">
							<textarea name="comments" id="comments" class="form-control" rows="3"></textarea>
						</div>
					</div>

					<div class="form-group row">
						<div class="col-sm-10 offset-sm-2">
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>