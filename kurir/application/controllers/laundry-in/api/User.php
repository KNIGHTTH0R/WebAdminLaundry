<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

class User extends Restserver\Libraries\REST_Controller {

    function __construct() {
        parent::__construct();

        $this->load->model('auth_model', 'auth');
        $this->load->model('base_model');
    }

    public function index_get() {
        
    }
    
    //slider
    public function slider_get() {
        $data['item'] = $this->base_model->get_item('result', 'slider');
        if ($data['item']) {
            $this->response(array('status' => true, 'data' => $data['item'], 'message' => ''));
        } else {
            $this->response(array('status' => false, 'data' => array(), 'message' => 'Belum ada slider'));
        }
    }
    
    public function premium_get() {
        $data['item'] = $this->base_model->get_item('result', 'premium');
        if ($data['item']) {
            $this->response(array('status' => true, 'data' => $data['item'], 'message' => ''));
        } else {
            $this->response(array('status' => false, 'data' => array(), 'message' => 'Belum ada slider'));
        }
    }
    
    public function premiumsolo_get() {
        $data['item'] = $this->base_model->get_item('result', 'premium_solo');
        if ($data['item']) {
            $this->response(array('status' => true, 'data' => $data['item'], 'message' => ''));
        } else {
            $this->response(array('status' => false, 'data' => array(), 'message' => 'Belum ada slider'));
        }
    }
    
    public function profile_get() {
        $user_id = $this->query('user_id');
        $data['item'] = $this->base_model->get_item('row', 'user', 'nama, email, telp, alamat', array('id' => $user_id));
        if ($data['item']) {
            $this->response(array('status' => true, 'data' => $data['item'], 'message' => ''));
        } else {
            $this->response(array('status' => false, 'data' => array(), 'message' => 'Not found'));
        }
    }

    public function order_get() {
        $user_id = $this->query('user_id');
        $data['item'] = $this->base_model->get_join_item('result', 'order.*, user.nama', NULL, 'order', array('user'), array('user.id=order.user_id'), array('inner'), array('user.id' => $user_id));
        if ($data['item']) {
            $this->response(array('status' => true, 'data' => $data['item'], 'message' => ''));
        } else {
            $this->response(array('status' => false, 'data' => array(), 'message' => 'Order Kosong'));
        }
    }
    
    //Detail order ditambahkan 28-03-2018
     public function detail_order_get() {
        $order_id = $this->query('order_id');
        $kurir_id = $this->query('kurir_id');
        $data['item'] = $this->base_model->get_join_item('row', 'order.*, kurir.nama, kurir.telp', NULL, 'order', array('kurir'), array('kurir.id=order.kurir_id'), array('inner'), array('kurir.id' => $kurir_id, 'order.id' => $order_id));
        if ($data['item']) {
            $this->response(array('status' => true, 'data' => $data['item'], 'message' => ''));
        } else {
            $this->response(array('status' => false, 'data' => array(), 'message' => 'Order yang dipilih tidak tersedia'));
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
            $this->response(array('status' => true, 'data' => $param, 'message' => ''));
        } else {
            $this->response(array('status' => false, 'data' => array(), 'message' => 'Order gagal'));
        }
    }

    public function register_post() {
        $auth = $this->session->userdata('is_logged_in');
        if (isset($auth) && $auth == TRUE) {
            $this->response(array('status' => false, 'data' => array('message' => 'Logged in')));
        } else {
            $param = array(
                'nama' => $this->query('nama'),
                'email' => $this->query('email'),
                'password' => password_hash($this->query('password'), PASSWORD_BCRYPT),
                'telp' => $this->query('telp'),
                'alamat' => $this->query('alamat'),
            );
            $act = $this->base_model->insert_item('user', $param, 'id');
            if ($act) {
                $param['id'] = $act;
                $this->response(array('status' => true, 'data' => $param, 'message' => 'Pendaftaran berhasil'));
            } else {
                $this->response(array('status' => false, 'data' => $param, 'message' => 'Pendaftaran gagal'));
            }
        }
    }
    
     public function ubah_password_put() {
        
            if (!$this->auth->verify_user_password($this->query('id'), $this->query('old_password'), 'user')) {
                $this->response(array('status' => false, 'data' => array(), 'message' => 'Password lama tidak sesuai'));
            } else {
                if($this->query('new_password') === $this->query('conf_password')){
                    
                     $params = array(
                    'password' => password_hash($this->query('conf_password'), PASSWORD_BCRYPT),
                );
                $act = $this->base_model->update_item('user', $params, array('id' => $this->query('id')));
                if (!$act) {
                    $this->response(array('status' => false, 'data' => array(), 'message' => 'Tidak ada data yang berubah'));
                } else {
                    $this->response(array('status' => true, 'data' => array(), 'message' => 'Password berhasil diubah'));
                }
                    
                } else {
                    $this->response(array('status' => false, 'data' => array(), 'message' => 'Konfirmasi password tidak sesuai dengan password baru'));
                }
               
            }
    }

    public function login_get() {
        $email = $this->query('email');
        $password = $this->query('password');
        $auth = $this->session->userdata('is_logged_in');
        if (isset($auth) && $auth == TRUE) {
            $this->response(array('status' => true, 'data' => $this->session->userdata()));
        } else {
            if (!$this->auth->verify_user($email, $password, 'user')) {
                $this->response(array('status' => false, 'data' => array(), 'message' => 'Login Failed'));
            } else {
                $user = $this->base_model->get_item('row', 'user', 'id, nama, email, telp, alamat, aktif', array('email' => $email));
                $params = array(
                    'email' => $email,
                    'id'=> $user['id'],
                    'is_logged_in' => TRUE
                );
                $this->session->set_userdata($params);
                $this->response(array('status' => true, 'data' => $user, 'message' => ''));
            }
        }
    }

    public function logout_get() {
        $this->session->unset_userdata(array('email', 'is_logged_in'));
        $this->response(array('status' => true, 'data' => array(), 'message' => 'Logout Successfull'));
    }

    function _is_logged_in() {
        $auth = $this->session->userdata('is_logged_in');
        if (isset($auth) && $auth == TRUE) {
            $this->response(array('status' => false, 'data' => array()));
        }
    }

}
