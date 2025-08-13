<?php
	//import database
	require_once 'db_connection.php';
	
	//class
	class adminModel extends Connector{
		function __construct(){
			parent::__construct();
		}
		
		function getNotSeenMsg(){
			//getl the carousel featured destination
			$sql = "SELECT * FROM inquiry_tb WHERE inq_isSeen = '0' ORDER BY inq_id DESC";
			
			$query = $this->conn->prepare($sql); //prepare the query
			$query->execute(); //run the query
			
			return $query->fetchall(PDO::FETCH_ASSOC); //get all the data and return
			
		}
		
		function getSeenMsg(){
			//getl the carousel featured destination
			$sql = "SELECT * FROM inquiry_tb WHERE inq_isSeen = '1' ORDER BY inq_id DESC";
			
			$query = $this->conn->prepare($sql); //prepare the query
			$query->execute(); //run the query
			
			return $query->fetchall(PDO::FETCH_ASSOC); //get all the data and return
			
		}
		
		function viewmsg($msg_id){
			//get hero featured destination sql
			$sql = "SELECT * FROM inquiry_tb WHERE inq_id = ?";
			
			$query = $this->conn->prepare($sql); //prepare the query
			$query->bindParam(1, $msg_id);
			$query->execute(); //run the query
			
			return $query->fetch(PDO::FETCH_ASSOC); //get all the data and return
		}
		
		function deletemsg($id){
			//get hero featured destination sql
			$sql = "DELETE FROM inquiry_tb WHERE inq_id = ?";
			
			$query = $this->conn->prepare($sql); //prepare the query
			$query->bindParam(1, $id);
			$query->execute(); //run the query
			
			return $this->conn->lastInsertId(); //return
		}
		
	}
	
?>