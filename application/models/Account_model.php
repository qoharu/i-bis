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
			if ($data->email=='admin@smartid.com') $admin = true;
			$this->setsession($data,$admin);
			return true;
		}else{
			return false;
		}
}

	
}



?>