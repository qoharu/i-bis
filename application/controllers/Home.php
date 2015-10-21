<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
	public function __construct(){
    	parent::__construct();

	}

	public function index(){
		$this->load->view('navbar');
		$this->load->view('home');
		$this->load->view('footer');
	}

	public function layanan(){

	}

	public function stok(){

	}
}
