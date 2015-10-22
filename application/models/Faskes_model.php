<?php 
/**
* 
*/
class Faskes_model extends CI_Model
{
	
	function getFaskes(){
		return $this->db->query("SELECT * FROM faskes, tipefaskes 
			WHERE tipe_faskes = id_tipefaskes ")->result();
	}

	function getFaskesDetail($idfaskes){
		return $this->db->query("SELECT * FROM faskes, tipefaskes, 
			WHERE tipe_faskes = id_tipefaskes
			AND id_faskes = '$idfaskes' ")->result();
	}

	function getStok($idfaskes){
		return $this->db->query("SELECT * FROM stok,tipestok 
			WHERE stok.id_tipeStok = tipestok.id_tipeStok
			AND id_faskes = '$idfaskes' ")->result();
	}

	function getLayanan($idfaskes){
		return $this->db->query("SELECT * FROM layanan,tipelayanan 
			WHERE layanan.id_tipeLayanan = tipelayanan.id_tipeLayanan
			AND id_faskes = '$idfaskes' ")->result();
	}

	function getLayanan($idfaskes){
		return $this->db->query("SELECT * FROM stok,tipestok 
			WHERE stok.id_tipeStok = tipestok.id_tipeStok
			AND id_faskes = '$idfaskes' ")->result();
	}

	function getLayanan($idfaskes){
		return $this->db->query("SELECT * FROM stok,tipestok 
			WHERE stok.id_tipeStok = tipestok.id_tipeStok
			AND id_faskes = '$idfaskes' ")->result();
	}
		
	function getLayanan($idfaskes){
		return $this->db->query("SELECT * FROM stok,tipestok 
			WHERE stok.id_tipeStok = tipestok.id_tipeStok
			AND id_faskes = '$idfaskes' ")->result();
	}
}



?>