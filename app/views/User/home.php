<html>
	<head>

		<?php include_once('app/views/Default/stylesheet_links.php') ?>
		<title>iTutorU - Home</title>
	</head>
	<body>
		<?php include_once('app/views/Default/header.php') ?>

			<div class="content_block">				
				<?php
				if(isset($data['message'])){

					$message = $data['message'];
				
					if($message != ''){
						print("<div class='alert alert-success' role='alert'><strong>$message</strong></div>");
					}
				}
				?>
				<div>					
					<?php date_default_timezone_set('America/Toronto');
						  if(isset($_GET['ym'])){
						  	$ym = $_GET['ym'];
						  }
						  else{						  	
						  	 $ym = date('Y-m', time());
						  }

						  $timestamp = strtotime($ym, "-01");
						  if($timestamp ===false){
						  	$timestamp = time();
						  }

						  $today = date('Y-m-d', time());

						  $html_title = date('F Y', $timestamp);

						  $prevMonth = date('Y-m', mktime(0, 0, 0, date('m', $timestamp) - 1, 1, date('Y', $timestamp)));
						  $nextMonth = date('Y-m', mktime(0, 0, 0, date('m', $timestamp) + 1, 1, date('Y', $timestamp)));

						  //Number of days in month
						  $day_count = date('t', $timestamp);

						  $str = date('w', mktime(0, 0, 0, date('m', $timestamp), 1, date('Y', $timestamp)));

						  //Creates calendar
						  $weeks = array();
						  $week = '';

						  //Adds empty cell
						  $week .= str_repeat('<td></td>', $str);

						  for($day = 1; $day < $day_count; $day++, $str++){
						  	
						  	$day_formatted = $day;
						  	if($day_formatted < 10){
						  		$day_formatted = '0'.$day_formatted;
						  	}
						  	$date = $ym.'-'.$day_formatted;
						  
						  	if($today == $date){
						  		$week .= '<td class="today">'.$day;
						  	}
						  	else{
						  		$week .= '<td>'.$day;
						  	}
						  	
						  	//add dots here
						  	$tutor_sessions = $data['tutor_sessions'];

						  	foreach($tutor_sessions as $session){
						  		$date_formatted = date_create($session->session_date);
						  		$session_date = date_format($date_formatted, 'Y-m-d');
						  		if($session_date == $date){
						  			$week .= '<span class="ts_dot"></span>';
						  		}
						  	}

						  	$user_sessions = $data['user_sessions'];
						  	foreach($user_sessions as $session){
						  		$date_formatted = date_create($session->session_date);
						  		$session_date = date_format($date_formatted, 'Y-m-d');
						  		if($session_date == $date){
						  			$week .= '<span class="us_dot"></span>';
						  		}
						  	}
						  	$week .= '</td>';

						  	if($str % 7 == 6 || $day == $day_count){
						  		if($day == $day_count){
						  			//Adds empty cell
						  			$week .= str_repeat('<td></td>', 6 - ($str % 7));
						  		}

						  		$weeks[] = '<tr>'.$week.'</tr>';
						  		$week = '';

						  	}

						  }

					?>
					<?php $user = $data['user']; ?>
	    <div style="background-color: white; padding-bottom: 3%">
			<div id="profileImageHeader" ></div>
	        <div id="profileImageIndex" style="background-image: url('/images/<?php echo $user->profileImagePath?>')">
	        	<h3 style="bottom: -70;position: absolute;text-align:  center;margin: auto;width: 100%;">
		        	<p><?php print("$user->firstName $user->lastName");?></p>
		        	<a class='btn btn-primary' href="/Profile/edit">Edit profile</a>					
		        </h3>

			        


	         </div>

	                
	    </div>
					<div class="container">
						<h3><a href="?ym=<?php echo $prevMonth; ?>">&lt; </a><?php echo $html_title; ?><a href="?ym=<?php echo $nextMonth; ?>"> &gt;</a></h3>
						<br/>
						<table class="table table-bordered">
							<tr>
								<th>S</th>
								<th>M</th>
								<th>T</th>
								<th>W</th>
								<th>T</th>
								<th>F</th>
								<th>S</th>
							</tr>
							
							<?php 
								foreach($weeks as $week){
									echo $week;
								}
							?>
						</table>
					</div>

					<div id="sessions_list">


					</div>
					
					<?php
						$sessions = $data['sessions'];
						
						foreach($sessions as $session){
							if($session->tutorId == $_SESSION['userId']){
								print("<p><span class='ts_dot'></span> 
										$session->session_date - You are tutoring $session->firstName $session->lastName 
										&nbsp;&nbsp;&nbsp;
										<a href='/Session/edit/$session->sessionId'><span class='glyphicon glyphicon-pencil' aria-hidden='true'></a></span>&nbsp;&nbsp;
										<a href='/Session/delete/$session->sessionId'><span class='glyphicon glyphicon-trash' aria-hidden='true'></span></a>
										</p>");
							}
							else{
								print("<p><span class='us_dot'></span> 
										$session->session_date - You are being tutored by $session->firstName $session->lastName   
										&nbsp;&nbsp;&nbsp;
										<a href='/Session/edit/$session->sessionId'><span class='glyphicon glyphicon-pencil' aria-hidden='true'></span></a>&nbsp;&nbsp;
										<a href='/Session/delete/$session->sessionId'><span class='glyphicon glyphicon-trash' aria-hidden='true'></span></a>
										</p>");
							}
						}
					?>

					
				</div>
			</div>
	</body>
</html>