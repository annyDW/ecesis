<?php
class IndexController{

	public function __construct(){}
	
	public function indexAction(){
		ob_start(); 
		header('Location:../application/views/scripts/index.phtml', false);
		ob_end_flush();
	}
}