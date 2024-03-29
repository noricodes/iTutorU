<?php
class Request extends Model 
{
	var $requestId;
	var $tutorId;
	var $userId;
	var $request_date;
	var $request_time;
	var $status;
	var $details;

	public function __construct() {
		parent::__construct();
	}

	public function insert(){
		$sql = "INSERT INTO Request(tutorId, userId, details, request_date, request_time) 
				VALUES (:tutorId, :userId, :details, :request_date, :request_time)";
		$stmt = self::$_connection->prepare($sql);
		$stmt->execute(['tutorId'=>$this->tutorId, 'userId'=>$this->userId, 'details'=>$this->details, 'request_date'=>$this->request_date, 'request_time'=>$this->request_time]);
	}

	public function getRequest(){
		$sql = "SELECT * FROM request WHERE requestId = :requestId";
		$stmt = self::$_connection->prepare($sql);
		$stmt->execute(['requestId'=>$this->requestId]);
		$stmt->setFetchMode(PDO::FETCH_CLASS, "Request");
		return $stmt->fetch();
	}

	public function getReceivedRequests() {
		$sql = "SELECT * FROM request, profile WHERE request.userId = profile.userId
				AND tutorId = :tutorId AND (status = 'pending' OR status = 'cancelled')";
		$stmt = self::$_connection->prepare($sql);
		$stmt->execute(['tutorId'=>$this->tutorId]);
		$stmt->setFetchMode(PDO::FETCH_CLASS, 'Request');
		return $stmt->fetchAll();
	}

	public function getSentRequests() {
		$sql = "SELECT * FROM request r, profile p WHERE r.tutorId = p.userId
				AND r.userId = :userId AND (status = 'pending' OR status = 'declined')";
		$stmt = self::$_connection->prepare($sql);
		$stmt->execute(['userId'=>$this->userId]);
		$stmt->setFetchMode(PDO::FETCH_CLASS, 'Request');
		return $stmt->fetchAll();
	}

	public function delete() {
		$sql = "DELETE FROM request WHERE requestId = :requestId";
		$stmt = self::$_connection->prepare($sql);
		$stmt->execute(['requestId'=>$this->requestId]);
	}

	public function updateStatus() {
		$sql = "UPDATE request SET status = :status WHERE requestId = :requestId";
		$stmt = self::$_connection->prepare($sql);
		$stmt->execute(['requestId'=>$this->requestId, 'status'=>$this->status]);

	}


}

?>