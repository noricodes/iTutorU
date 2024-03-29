<?php
class Tutor extends Model 
{
	var $userId;
	var $description;
	var $pay;
	var $rating;
	var $timesTutored;
	var $about;

	public function __construct() {
		parent::__construct();
	}

	public function insert(){
		$sql= "INSERT INTO Tutor (userId, description, pay, about) VALUES (:userId, :description, :pay, :about)";
			$stmt = self::$_connection->prepare($sql);
			$stmt->execute(['userId'=>$this->userId, 'description'=>$this->description, 'pay'=>$this->pay, 'about'=>$this->about]);			
	}

	public function update(){
		$sql= "UPDATE tutor SET description = :description, pay = :pay, about = :about
				WHERE userId = :userId";
			$stmt = self::$_connection->prepare($sql);
			$stmt->execute(['userId'=>$this->userId, 'description'=>$this->description, 'pay'=>$this->pay, 'about'=>$this->about]);			
	}


	public function getTutorById($userId){
		$sql = "SELECT t.userId, t.about, p.firstName, p.lastName, p.profileImagePath, t.description, t.pay, t.timesTutored, t.rating, s.schoolName, pg.programName
				FROM Tutor t, Profile p, School s, Program pg
				WHERE p.schoolId = s.schoolId
				AND p.programId = pg.programId
				AND t.userId = p.userId AND t.userId=:userId";
        $stmt = self::$_connection->prepare($sql);
        $stmt->execute(['userId'=>$userId]);

        $stmt->setFetchMode(PDO::FETCH_CLASS, "Tutor");
		return $stmt->fetch();

	}


	public function getTutors($subject = '', $programId='', $price_lower = 0, $price_upper = 0){
		$subjectSql = "";
		$programSql = "";
		$priceSql = "";

		$execute_array = [];
		$execute_array['userId'] = $_SESSION['userId'];

		if($subject != ''){
			$subjectSql = " AND t.description LIKE :subject";
			$subject = "%$subject%";
			$execute_array['subject'] = $subject;
		}

		if($programId != '') {
			$programSql = " AND p.programId = :programId";		
			$execute_array['programId'] = $programId;
		}

		if($price_lower != 0 && $price_upper != 0){
			$priceSql = " AND t.pay BETWEEN :price_lower AND :price_upper";
			$execute_array['price_lower'] = $price_lower;
			$execute_array['price_upper'] = $price_upper;
		}	

		$sql = "SELECT t.userId, p.firstName, p.lastName, p.profileImagePath, t.pay, t.description, t.timesTutored, t.rating FROM Tutor t, Profile p 
				WHERE t.userId=p.userId AND t.userId != :userId".$subjectSql.$programSql.$priceSql;

		$stmt = self::$_connection->prepare($sql);
    
		$stmt->execute($execute_array);
		
        $stmt->setFetchMode(PDO::FETCH_CLASS, "Tutor");
		return $stmt->fetchAll();

	}

}


?>