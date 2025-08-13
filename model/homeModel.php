<?php
	//import database
	require_once 'db_connection.php';
	
	//class
	class homeModel extends Connector{
		function __construct(){
			parent::__construct();
		}
		
		#--------------------------------------------------------------#
		#-- Carousel Featured destination							 --#
		#--------------------------------------------------------------#
		function homeCarousel(){
			//getl the carousel featured destination
			$sql = "SELECT * FROM `carousel_ft_tb`";
			
			$query = $this->conn->prepare($sql); //prepare the query
			$query->execute(); //run the query
			
			return $query->fetchall(PDO::FETCH_ASSOC); //get all the data and return
			
		}
		
		#--------------------------------------------------------------#
		#-- Hero Featured destination								 --#
		#--------------------------------------------------------------#
		function homeHero(){
			//get hero featured destination sql
			$sql = "SELECT * FROM hero_ft_tb";
			
			$query = $this->conn->prepare($sql); //prepare the query
			$query->execute(); //run the query
			
			return $query->fetchall(PDO::FETCH_ASSOC); //get all the data and return
		}
		
	}
	
	
	
?>