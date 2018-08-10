<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

class Order extends Restserver\Libraries\REST_Controller {

    function __construct() {
        parent::__construct();
        //$this->_is_logged_in();
        $this->load->model('base_model');
    }

    public function index_get() {
        
    }

    public function order_get() {
        $data['item'] = $this->base_model->get_join_item('result', 'order.*', NULL, 'order', 'user', 'user.id=order.user_id', 'inner', array('user.email' => $this->session->userdata('email')));
         if ($data['item']) {
            $this->response(array('status' => true, 'data' => $data['item'], 'message' => ''));
        } else {
            $this->response(array('status' => false, 'data' => array(), 'message' => 'Order Kosong'));
        }
    }

    public function order_post() {
        $param = array(
            'user_id' => $this->query('user_id'),
            'tanggal_order' => $this->query('tanggal_order'),
            'penjemputan_lokasi' => $this->query('penjemputan_lokasi'),
            'penjemputan_note' => $this->query('penjemputan_note'),
            'penjemputan_tanggal' => $this->query('penjemputan_tanggal'),
            'penjemputan_waktu' => $this->query('penjemputan_waktu'),
            'pengerjaan_jenis' => $this->query('pengerjaan_jenis'),
            'pengerjaan_jam' => $this->query('pengerjaan_jam'),
            'pengerjaan_harga' => $this->query('pengerjaan_harga'),
            'premium' => $this->query('premium'),
            'paket_hemat' => $this->query('paket_hemat'),
            'pembayaran' => $this->query('pembayaran'),
            'status' => $this->query('status'),
        );

        $data['item'] = $this->base_model->insert_item('order', $param, array('id' => $this->query('id')));
         if ($data['item']) {
            $this->response(array('status' => true, 'data' => $data['item'], 'message' => ''));
        } else {
            $this->response(array('status' => false, 'data' => array(), 'message' => 'Order gagal'));
        }
    }

//    public function set_kurir_put($order_id, $kurir_id) {
//
//        $act = $this->base_model->update_item('order', array('kurir_id' => $kurir_id), array('id' => $order_id));
//        if ($act == 1) {
//            $this->response(array('status' => true, 'data' => array('order_id' => $order_id, 'kurir' => $kurir_id)));
//        } else {
//            $this->response(array('status' => false, 'data' => array('order_id' => $order_id, 'kurir' => $kurir_id)));
//        }
//    }

    function _is_logged_in() {
        $auth = $this->session->userdata('is_logged_in');
        if (isset($auth) && $auth == TRUE) {
            $this->response(array('status' => true, 'data' => array()));
        }
    }

}
