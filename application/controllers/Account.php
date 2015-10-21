<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Account extends CI_Controller {

	public function index(){
		$this->load->view('home');
	}

	public function login(){
		$this->load->view('login');
	}

	public function post_login(){

	}

	public function register(){

	}

	public function post_register(){

	}

	public function profile(){

	}

	public function post_editprofile(){

	}

}
