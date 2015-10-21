<?php

	class Dashboard extends CI_CONTROLLER {
		function index() {
			$this->load->view('navbar');
			$this->load->view('sidebar');
			$this->load->view('content');
		}

		function input() {
			$this->load->view('navbar');
			$this->load->view('sidebar');
			$this->load->view('input');
			$this->load->view('footer');
		}

	}