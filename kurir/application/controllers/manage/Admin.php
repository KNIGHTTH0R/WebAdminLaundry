<?php

defined('BASEPATH') OR exit('No direct script access allowed');
require_once 'application/controllers/manage/Base.php';

class Admin extends AppBase {

    public function __construct() {
        parent::__construct();
        $this->load->model('auth_model', 'auth');
        $this->_is_logged_in();
    }

    public function ubah_password() {
        
        if ($this->input->post('act', TRUE)) {
            $this->form_validation->set_rules('old_password', 'Password lama', 'required');
            $this->form_validation->set_rules('password', 'Password baru', 'required|min_length[6]');
            $this->form_validation->set_rules('password_conf', 'Konfirmasi password', 'required|matches[password]');
            
            if (!$this->auth->verify_user($this->session->userdata('email'), $this->input->post('old_password', TRUE), 'admin')) {
                $this->_result_msg('danger', 'Password lama tidak sesuai');
                redirect('manage/admin/ubah_password/');
            }
            
            if ($this->form_validation->run() === FALSE) {
                $this->admindisplay('manage/admin/password_edit');
            } else {
                $params = array(
                    'password' => password_hash($this->input->post('password_conf', TRUE), PASSWORD_BCRYPT),
                );
                $act = $this->base_model->update_item('admin', $params, array('email' => $this->session->userdata('email')));
                if (!$act) {
                    $this->_result_msg('danger', 'Tidak ada data yang berubah');
                } else {
                    $this->_result_msg('success', 'Data berhasil diubah');
                }
                redirect('manage/admin/ubah_password/');
            }
        } else {
            $this->admindisplay('manage/admin/password_edit');
        }
    }
    
     function _is_logged_in() {
        $auth = $this->session->userdata('is_logged_in');
        if (!isset($auth)) {
            redirect('auth');
        }
    }

}
