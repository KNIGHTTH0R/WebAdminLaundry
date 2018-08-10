<?php

defined('BASEPATH') OR exit('No direct script access allowed');
require_once 'application/controllers/manage/Base.php';

class Kurir extends AppBase {

    public function __construct() {
        parent::__construct();
        $this->_is_logged_in();
    }

    public function index() {
        $data['item'] = $this->base_model->get_item('result', 'kurir');
        $this->admindisplay('manage/kurir/index', $data);
    }

    public function edit($id = "") {
        $data['item'] = $this->base_model->get_item('row', 'kurir', '*', array('id' => $id));
        if (!$data['item']) {
            show_404();
        }
        $data['kurir'] = $this->base_model->get_item('result', 'kurir');
        $data['id_item'] = $id;
        if ($this->input->post('act', TRUE)) {
            $this->form_validation->set_rules('status', 'Status', 'trim|required');

            if ($this->form_validation->run() === FALSE) {
                $this->admindisplay('manage/kurir/edit_f', $data);
            } else {
                $params = array(
                    'aktif' => $this->input->post('status', TRUE),
                );
                $act = $this->base_model->update_item('kurir', $params, array('id' => $id));
                if (!$act) {
                    $this->_result_msg('danger', 'Tidak ada data yang berubah');
                } else {
                    $this->_result_msg('success', 'Data berhasil diubah');
                }
                redirect('manage/kurir/edit/' . $id);
            }
        } else {
            $this->admindisplay('manage/kurir/edit', $data);
        }
    }

    public function delete($id) {
        if (!$this->base_model->get_item('row', 'kurir', 'id', array('id' => $id))) {
            $this->_result_msg('danger', 'Gagal menghapus data');
        } else {
            $result = $this->base_model->delete_item('kurir', array('id' => $id));
            if ($result) {
                $this->_result_msg('success', 'Data telah dihapus');
            } else {
                $this->_result_msg('danger', 'Gagal menghapus data');
            }
        }
        redirect('manage/kurir/index');
    }

    public function delete_all() {
        $data = $this->input->post('pcheck');
        if (!empty($data)) {
            foreach ($data as $value) {
                if (!$this->base_model->get_item('row', 'kurir', 'id', array('id' => $value))) {
                    $this->_result_msg('danger', 'Gagal menghapus data');
                    redirect('manage/kurir/index');
                } else {
                    $result = $this->base_model->delete_item('kurir', array('id' => $value));
                    if ($result) {
                        $this->_result_msg('success', 'Data telah dihapus');
                    } else {
                        $this->_result_msg('danger', 'Gagal menghapus data');
                    }
                }
            }
        } else {
            $this->_result_msg('danger', 'Tidak ada data yang dipilih');
        }
        redirect('manage/kurir/index');
    }
    
     function _is_logged_in() {
        $auth = $this->session->userdata('is_logged_in');
        if (!isset($auth)) {
            redirect('auth');
        }
    }

}
