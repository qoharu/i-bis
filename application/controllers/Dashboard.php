<?php

	class Dashboard extends CI_CONTROLLER {
		function index() {
			$this->load->view('navbar');
			$this->load->view('sidebar');
			$this->load->view('content');
			$this->load->view('footer');
		}

		function input() {
			$this->load->view('navbar');
			$this->load->view('sidebar');
			$this->load->view('input');
			$this->load->view('footer');
		}

		function lihat() {
			$this->load->view('navbar');
			$this->load->view('sidebar');
			$this->load->view('lihat');
			$this->load->view('footer');
		}

	}