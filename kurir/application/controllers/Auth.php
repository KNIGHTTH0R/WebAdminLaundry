<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('auth_model', 'auth');
    }
    
    public function index() {
        $auth = $this->session->userdata('is_logged_in');
        if (isset($auth) && $auth == TRUE) {
            redirect('manage/order/index');
        }
        $this->load->view('welcome_message');
    }
    
    public function login() {
        $email = $this->input->post('email');
        $password = $this->input->post('password');
        $auth = $this->session->userdata('is_logged_in');
        if (isset($auth) && $auth == TRUE) {
            redirect('manage/order/index');
        } else {
            if (!$this->auth->verify_user($email, $password, 'admin')) {
                $this->session->set_flashdata('message', 'Email / password salah');
                redirect('auth');
            } else {
                //$kurir = $this->base_model->get_item('row', 'kurir', 'nama, email, telp, alamat, aktif', array('email' => $email));
                $params = array(
                    'email' => $email,
                    'is_logged_in' => TRUE
                );
                $this->session->set_userdata($params);
                redirect('manage/order/index');
            }
        }
    }
    public function logout() {
        $this->session->unset_userdata(array('email', 'is_logged_in'));
        redirect('auth');
    }

}
