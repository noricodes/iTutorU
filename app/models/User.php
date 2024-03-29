<?php
class User extends Model 
{
	var $userId;
	var $username;
	var $password;

	public function __construct() {
		parent::__construct();
	}

	public function insert(){
		$sql= "INSERT INTO User (username, password) VALUES (:username, :password)";
			$stmt = self::$_connection->prepare($sql);
			$stmt->execute(['username'=>$this->username, 'password'=>$this->password]);			
	}

	public function find($username) {
		$sql = "SELECT * FROM User WHERE username LIKE ':username'";
		$stmt = self::$_connection->prepare($sql);
		$stmt->execute(['username'=>$username]);

		$stmt->setFetchMode(PDO::FETCH_CLASS, "User");
		return $stmt->fetch();
	}

	public function getUserByUsername($username){
		$sql = "SELECT * FROM User WHERE username=:username";
        $stmt = self::$_connection->prepare($sql);
        $stmt->execute(['username'=>$username]);

        $stmt->setFetchMode(PDO::FETCH_CLASS, "User");
		return $stmt->fetch();

	}

	public function getUserById($userId){
		//$sql = "SELECT * FROM User WHERE userId=:userId";
		$sql = "SELECT u.userId, p.firstName, p.lastName, p.profileImagePath, pg.programName, s.schoolName
				FROM User u, Profile p, School s, Program pg
				WHERE s.schoolId = p.schoolId
                AND pg.programId = p.programId
				AND u.userId = p.userId AND u.userId= :userId";
        $stmt = self::$_connection->prepare($sql);
        $stmt->execute(['userId'=>$userId]);

        $stmt->setFetchMode(PDO::FETCH_CLASS, "User");
		return $stmt->fetch();

	}

	public function isTutor() {		
		$tutor = $this->model('Tutor');
		$current_tutor = $tutor->getTutorById($this->userId);
		return $current_tutor != NULL;

	}

	public function hasProfile() {
		$sql = "SELECT firstName FROM profile p, user u
				WHERE p.userId = u.userId
				AND u.userId = :userId";
		$stmt = self::$_connection->prepare($sql);
		$stmt->execute(['userId'=>$this->userId]);
		$stmt->setFetchMode(PDO::FETCH_CLASS, "User");
		return $stmt->fetch() != NULL;
	}

}


?>