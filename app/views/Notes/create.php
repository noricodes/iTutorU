<html>
	<head>

		<?php include_once('app/views/Default/stylesheet_links.php') ?>
		<title>iTutorU - Add note</title>
	</head>
	<body>
		<?php include_once('app/views/Default/header.php') ?>

			<div class="note_block">			
				<h3><b>Edit note</b></h3>
				
				<form method="post" action="_create">					
					
					<div id="" class="form-group">
					
					<label for="noteText">
						
						<textarea rows="10" cols="50" name="noteText" required="required" type="text" class="form-control form-control-sm"></textarea>
					</label>
					<br/>

					<input type="submit" value="Save" class="btn btn-primary"/>
					<a href="index" class="btn btn-primary">Cancel</a>
				</form>
				
			</div>

	</body>
</html>
