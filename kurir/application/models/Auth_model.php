<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Auth_model extends CI_Model {

    public function verify_user($user, $pass, $table) {
        $query = $this->db->select('password')->where('email', $user)->get($table);
        if ($query->num_rows() == 1) {
            $result = $query->row_array();
            $query->free_result();
            return password_verify($pass, $result['password']);
        } else {
            return FALSE;
        }
    }
    
    public function verify_user_password($user, $pass, $table) {
        $query = $this->db->select('password')->where('id', $user)->get($table);
        if ($query->num_rows() == 1) {
            $result = $query->row_array();
            $query->free_result();
            return password_verify($pass, $result['password']);
        } else {
            return FALSE;
        }
    }

}
