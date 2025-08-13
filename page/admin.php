<?php
	//model 
	include '../model/homeModel.php';
	include '../model/adminModel.php';
	
	//global variable
	$page['page'] = 'Admin';
	$page['subpage'] = isset($_GET['subpage'])? $_GET['subpage']:'dashboard' ;
	
	//check for an action
	if (isset($_GET['function'])){
		//instanciate
		new ActiveAdmin($page);
	}else{
		//instanciate
		new Admin($page);
	}
	
	#--------------------------------------------------------------#
	#--- CLASSES
	#--------------------------------------------------------------#
	//the default class
	class Admin{
		//encapsulation
		private $page = '';
		private $subpage = '';
		protected $adminModel = '';
		protected $homeModel = '';
		
		//constructor
		function __construct ($page){
			$this->page = $page['page']; //assigned the property value
			$this->subpage = $page['subpage']; //assigned the property value
			
			$this->adminModel = new adminModel(); //instance/object
			$this->homeModel = new homeModel(); //instance/object
			
			//run the method/behaviour
			$this->{$page['subpage']}();
		}
		
		function dashboard(){
			
			//$carousel = $this->homeModel->homeCarousel();
			//$hero = $this->homeModel->homeHero();
			
			//get all the message
			$notSeenMsg = $this->adminModel->getNotSeenMsg();
			$seenMsg = $this->adminModel->getSeenMsg();
			
			include '../views/dashboard.php'; //get the views
		}
		
		function inquiry(){
			
			//$carousel = $this->homeModel->homeCarousel();
			//$hero = $this->homeModel->homeHero();
			
			//get all the message
			$notSeenMsg = $this->adminModel->getNotSeenMsg();
			$seenMsg = $this->adminModel->getSeenMsg();
			
			include '../views/inquiry.php'; //get the views
		}
		
	}
	
	
	//if there is an action
	class ActiveAdmin{
		//encapsulation
		private $page = '';
		private $subpage = '';
		protected $adminModel = '';
		protected $homeModel = '';
		
		//constructor
		function __construct ($page){
			$this->page = $page['page']; //assigned the property value
			$this->subpage = $page['subpage']; //assigned the property value
			
			$this->adminModel = new adminModel(); //instance/object
			$this->homeModel = new homeModel(); //instance/object
			
			//run the method/behaviour
			$this->{$_GET['function']}();
		}
		
		function viewmsg(){
			//get all the message
			$notSeenMsg = $this->adminModel->getNotSeenMsg();
			$seenMsg = $this->adminModel->getSeenMsg();
			
			//get the specified message
			$getMsg = $this->adminModel->viewmsg($_GET['msg_id']);
			
			include '../views/inquiry.php';
		}
		
		function deletemsg(){
			//get all the message
			$deletemsg = $this->adminModel->deletemsg($_GET['delete_id']);
			
			include '../views/inquiry.php';
			echo '<script>alert("Message has been deleted!");</script>';
		}
		
	}
?>