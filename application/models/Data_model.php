<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Data_model extends CI_Model
{

    //menampilkan semua mobil
    public function get_all_data_training()
    {
        $this->db->select('*');
        $this->db->from('data_training');
        $query = $this->db->get();
        return $query->result_array();
    }

    public function get_all_data_testing()
    {
        $this->db->select('*');
        $this->db->from('data_testing');
        $query = $this->db->get();
        return $query->result_array();
    }
}
    
    /* End of file ModelName.php */
