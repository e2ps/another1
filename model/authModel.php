<?php
	//import database
	require_once 'db_connection.php';
	
	//class
	class authModel extends Connector{
		function __construct(){
			parent::__construct();
		}
		
		#--------------------------------------------------------------#
		#--                                    						 --#
		#--------------------------------------------------------------#
		function getUsername($username){
			//getl the carousel featured destination
			$sql = "SELECT user_uname, user_password FROM `user_tb` WHERE user_uname = ?";
			
			$query = $this->conn->prepare($sql); //prepare the query
			//bind parameter
			$query->bindParam(1, $username);
			$query->execute(); //run the query
			
			return $query->fetchall(PDO::FETCH_ASSOC); //get all the data and return
			
		}
	}
	
	
	
?>