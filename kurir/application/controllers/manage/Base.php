<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class AppBase extends CI_Controller {

    public function __construct() {
        
        parent::__construct();
        $this->load->model('base_model');
    }

    public function admindisplay($child_view = "", $data = array()) {
        $data['child_template'] = $child_view;
        $this->load->view('manage/base_admin.php', $data);
    }

    public function _result_msg($alert, $msg) {
        return $this->session->set_flashdata(array(
                    'msg' => $msg,
                    'alert' => 'alert-' . $alert
        ));
    }

  

}
