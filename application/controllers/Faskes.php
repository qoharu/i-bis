<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Faskes extends CI_Controller {
	public function __construct()
    {
    	parent::__construct();

	}

	public function index()
	{
		$this->load->view('home');
	}

	public function cekstatus()
	{
		$this->load->view('home');
	}

	public function transaksi(){

	}

	public function rekammedis(){

	}
	




}
