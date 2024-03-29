<?php
class TutorController extends Controller {


	public function index(){	
		header('location:/User/home');			
	}
	
	public function create() {
		if(isset($_SESSION['userId'])){
			$user = $this->model('User');
			$user->userId = $_SESSION['userId'];
			if(!$user->isTutor()){
				$this->view('Tutor/create');
			}
			else
				header('location:/Tutor/edit');
		}
		else
			header('location:/');
	}

	public function _create() {
		if(isset($_SESSION['userId'])){
			if(isset($_POST['description']) && isset($_POST['about']) && isset($_POST['pay'])){
				$tutor = $this->model('Tutor');
				$tutor->userId = $_SESSION['userId'];
				$tutor->description = $_POST['description'];
				$tutor->pay = $_POST['pay'];
				$tutor->about = $_POST['about'];
				$tutor->insert();
				$this->view('Default/status', ['message'=>"Your tutor profile was created successfully! Congratulations!"]);
			}
		}
		else
			header('location:/');
	}


	
	public function edit() {
		if(isset($_SESSION['userId'])){
			$tutor = $this->model('Tutor');
			$selected_tutor = $tutor->getTutorById($_SESSION['userId']);

			$this->view('Tutor/edit', ['tutor'=>$selected_tutor]);
		}
		else
			header('location:/');

	}

	public function _edit() {
		if(isset($_SESSION['userId'])){
			if(isset($_POST['description']) && isset($_POST['about']) && isset($_POST['pay'])){
				$tutor = $this->model('Tutor');
				$tutor->userId = $_SESSION['userId'];
				$tutor->description = $_POST['description'];
				$tutor->pay = $_POST['pay'];
				$tutor->about = $_POST['about'];
				$tutor->update();
				$this->view('Default/status', ['message'=>"Your tutor profile has been updated"]);
			}
		}
		else
			header('location:/');
	}

	public function search() {
		if($_SESSION['userId'] != null)
		{		
			$subject = $_GET['search'];
			$tutor = $this->model('Tutor');
		
			$tutors = $tutor->getTutors($subject);		
			$program = $this->model('Program');
			$programs = $program->getPrograms();	
		
			$this->view('Tutor/search', ['tutors'=>$tutors, 'programs'=>$programs]);
		}
		else
			header('location:/');
		
	}

	public function advancedSearch() {
		if($_SESSION['userId'] != null)
		{		
			$subject = $_GET['subject'];
			$program = $_GET['program'];
			$price_lower = $_GET['price'];
			$price_upper = $_GET['price_upper'];
			

			$tutor = $this->model('Tutor');
			
			$tutors = $tutor->getTutors($subject, $program, $price_lower, $price_upper);	

			$program = $this->model('Program');
			$programs = $program->getPrograms();			
			
			$this->view('Tutor/search', ['tutors'=>$tutors, 'programs'=>$programs]);
		}
		else
			header('location:/');
		
	}
}
?>