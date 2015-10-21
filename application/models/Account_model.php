<?php 
/**
* 
*/
class Account_model extends CI_Model
{
	

	function validate($data){
		$password=md5($data['password']);
		$query="select * from user where email='$data[email]' and password='$password' ";
		$db=$this->db->query($query);
		if($db->num_rows()==1){
			$data=$db->row();
			$admin = false;
			$this->setsession($data);
			return true;
		}else{
			return false;
		}
	}


	function setsession($data){
		switch ($data['level']) {
			case '1':
				$data['level'] = 'superadmin';
				break;
			case '1':
				$data['level'] = 'superadmin';
				break;
			default:
				# code...
				break;
		}
	}

	
}



?>