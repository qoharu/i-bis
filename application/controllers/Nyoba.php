<?php

	class Nyoba extends CI_CONTROLLER {
		function index() {
			$this->load->view('navbar');
			$this->load->view('sidebar');
			$this->load->view('content');
		}
	}