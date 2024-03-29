<html>
	<head>

		<?php include_once('app/views/Default/stylesheet_links.php') ?>
		
		<title>iTutorU - Messages</title>
	</head>
	<body>
		<?php include_once('app/views/Default/header.php');
			$messages = $data['messages'];			
		?>

			<div class="content_block">				
				<div>
					<h4>Message from <?php if(isset($messages[0])){echo $messages[0]->firstName;} ?></h4>	
					<div class="messages">
						<?php 
							foreach($messages as $message){											
								if($message->senderId == $_SESSION['userId']){
									print("
										<div class='alert alert-success usermessage' style='text-align: right'>	    
											<p>$message->messageText</p>	
											<small>$message->timestamp</small>
										</div><br/><br/><br/><br/><br/>
									");
								}
								else{
									print("
										<div class='alert alert-info contactmessage' style='text-align: left'>	    
											<p>$message->messageText</p>	
											<small>$message->timestamp</small>
										</div><br/><br/><br/><br/><br/>
									");
								}
							}
						?>
					</div>
					<!--<form id="messageForm" class="row">
						<input id="messageInput" class="" type="text" placeholder="Enter a message..." />
						<input type="submit" value="Send"   />
					</form>-->
					<?php $threadId = $data['threadId'] ?>
					<form action="/Message/_create/<?php echo $threadId ?>" method="post"  id="messageForm" class="input-group">
					   <input type="text" name="message" class="form-control" autocomplete="off">
					   <span class="input-group-btn">
					        <input class="btn btn-info" type="submit" value="Send" />
					   </span>					   
					</form>
				</div>

			</div>

	</body>
	
</html>