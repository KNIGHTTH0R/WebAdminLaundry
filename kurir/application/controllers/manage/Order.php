<?php

defined('BASEPATH') OR exit('No direct script access allowed');
require_once 'application/controllers/manage/Base.php';

class Order extends AppBase {

    public function __construct() {
        parent::__construct();
        $this->_is_logged_in();
    }

    public function index() {
        $data['item'] = $this->base_model->get_join_item('result', 'order.*, kurir.nama as nama_kurir, user.nama as nama_user', NULL, 'order', array('kurir', 'user'), array('order.kurir_id=kurir.id', 'order.user_id=user.id'), array('left', 'left'));
        $this->admindisplay('manage/order/index', $data);
    }

    public function edit($id = "") {
        $data['item'] = $this->base_model->get_join_item('row', 'order.*, user.telp, user.nama', NULL, 'order', array('user'), array('order.user_id=user.id'), array('inner'), array('order.id' => $id));
        if (!$data['item']) {
            show_404();
        }
        $data['kurir'] = $this->base_model->get_item('result', 'kurir');
        $data['id_item'] = $id;
        if ($this->input->post('act', TRUE)) {
            $this->form_validation->set_rules('kurir', 'Kurir', 'trim|required');

            if ($this->form_validation->run() === FALSE) {
                $this->admindisplay('manage/order/edit', $data);
            } else {
                $params = array(
                    'kurir_id' => $this->input->post('kurir', TRUE),
                );
                $act = $this->base_model->update_item('order', $params, array('id' => $id));
                if (!$act) {
                    $this->_result_msg('danger', 'Tidak ada data yang berubah');
                } else {
                    $this->_result_msg('success', 'Data berhasil diubah');
                }
                redirect('manage/order/edit/' . $id);
            }
        } else {
            $this->admindisplay('manage/order/edit', $data);
        }
    }
    /*24-3-2018 ubah status diterima oleh admin*/
    public function edit_diterima($id = "") {
        $data['item'] = $this->base_model->get_join_item('row', 'order.*, user.telp, user.nama', NULL, 'order', array('user'), array('order.user_id=user.id'), array('inner'), array('order.id' => $id));
        if (!$data['item']) {
            show_404();
        }
        if ($data['item']['status'] == 4) {
                $params = array(
                    'status' => 5,
                );
                $act = $this->base_model->update_item('order', $params, array('id' => $id));
                if (!$act) {
                    $this->_result_msg('danger', 'Tidak ada data yang berubah');
                } else {
                    $this->_result_msg('success', 'Data berhasil diubah');
                }
                redirect('manage/order/edit/' . $id);
        } else {
            $this->_result_msg('danger', 'Pastikan status adalah Pengantaran sebelum mengubah menjadi Diterima');
             redirect('manage/order/edit/' . $id);
        }
    }
    
    public function delete($id) {
        if (!$this->base_model->get_item('row', 'order', 'id', array('id' => $id))) {
            $this->_result_msg('danger', 'Gagal menghapus data');
        } else {
            $result = $this->base_model->delete_item('order', array('id' => $id));
            if ($result) {
                $this->_result_msg('success', 'Data telah dihapus');
            } else {
                $this->_result_msg('danger', 'Gagal menghapus data');
            }
        }
        redirect('manage/order/index');
    }

    public function delete_all() {
        $data = $this->input->post('pcheck');
        if (!empty($data)) {
            foreach ($data as $value) {
                if (!$this->base_model->get_item('row', 'order', 'id', array('id' => $value))) {
                    $this->_result_msg('danger', 'Gagal menghapus data');
                    redirect('manage/order/index');
                } else {
                    $result = $this->base_model->delete_item('order', array('id' => $value));
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
        redirect('manage/order/index');
    }
    
     function _is_logged_in() {
        $auth = $this->session->userdata('is_logged_in');
        if (!isset($auth)) {
            redirect('auth');
        }
    }

}
