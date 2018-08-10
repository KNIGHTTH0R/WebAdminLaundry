<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';

class Kurir extends Restserver\Libraries\REST_Controller {

    function __construct() {
        parent::__construct();

        $this->load->model('auth_model', 'auth');
        $this->load->model('base_model');
    }

    public function index_get() {
        
    }
    
     public function slider_get() {
        $data['item'] = $this->base_model->get_item('result', 'slider');
        if ($data['item']) {
            $this->response(array('status' => true, 'data' => $data['item'], 'message' => ''));
        } else {
            $this->response(array('status' => false, 'data' => array(), 'message' => 'Belum ada slider'));
        }
    }
    
    public function profile_get() {
        $user_id = $this->query('kurir_id');
        $data['item'] = $this->base_model->get_item('row', 'kurir', 'nama, email, telp, alamat', array('id' => $user_id));
        if ($data['item']) {
            $this->response(array('status' => true, 'data' => $data['item'], 'message' => ''));
        } else {
            $this->response(array('status' => false, 'data' => array(), 'message' => 'Not found'));
        }
    }

    public function order_get() {
        $kurir_id = $this->query('kurir_id');
        $data['item'] = $this->base_model->get_join_item('result', 'order.*, user.nama', NULL, 'order', array('kurir','user'), array('kurir.id=order.kurir_id', 'user.id=order.user_id'), array('inner','inner'), array('kurir.id' => $kurir_id));
        if ($data['item']) {
            $this->response(array('status' => true, 'data' => $data['item'], 'message' => ''));
        } else {
            $this->response(array('status' => false, 'data' => array(), 'message' => 'Order Kosong'));
        }
    }
    
    //Detail order ditambahkan 28-03-2018
    public function detail_order_get() {
        $order_id = $this->query('order_id');
        $user_id = $this->query('user_id');
        $data['item'] = $this->base_model->get_join_item('row', 'order.*, user.nama, user.telp', NULL, 'order', array('user'), array('user.id=order.user_id'), array('inner'), array('user.id' => $user_id, 'order.id' => $order_id));
        if ($data['item']) {
            $this->response(array('status' => true, 'data' => $data['item'], 'message' => ''));
        } else {
            $this->response(array('status' => false, 'data' => array(), 'message' => 'Order yang dipilih tidak tersedia'));
        }
    }

    public function order_put() {
        if($this->query('paket_hemat') == '' || $this->query('paket_hemat') == NULL){
            $this->response(array('status' => false, 'data' => array(), 'message' => 'Masukkan berat'));
        } else {
        $param = array(
            'pengerjaan_harga' => $this->query('pengerjaan_harga'),
            'paket_hemat' => $this->query('paket_hemat'),
            'pembayaran' => $this->query('pembayaran'),
            'status' => $this->query('status'),
            'id' => $this->query('id')
        );

        $data['item'] = $this->base_model->update_item('order', $param, array('id' => $this->query('id')));
        if ($data['item']) {
            $this->response(array('status' => true, 'data' => $data['item'], 'message' => ''));
        } else {
            $this->response(array('status' => false, 'data' => array(), 'message' => 'Update order gagal/Tidak ada data yang diubah'));
        }
        }
    }

    public function register_post() {
        
        $auth = $this->session->userdata('is_logged_in');
        if (isset($auth) && $auth == TRUE) {
            $this->response(array('status' => false, 'data' => array('message' => 'Logged in')));
        } else {
            if($this->base_model->get_item('row', 'kurir', 'email', array('email'=>$this->query('email')))){
            $this->response(array('status' => false, 'data' => array(), 'message' => 'Email telah digunakan'));
            }else{
            $param = array(
                'nama' => $this->query('nama'),
                'email' => $this->query('email'),
                'password' => password_hash($this->query('password'), PASSWORD_BCRYPT),
                'telp' => $this->query('telp'),
                'alamat' => $this->query('alamat'),
            );
            $act = $this->base_model->insert_item('kurir', $param, 'id');
            if ($act) {
                $param['id'] = $act;
                $this->response(array('status' => true, 'data' => $param, 'message' => 'Pendaftaran berhasil'));
            } else {
                $this->response(array('status' => false, 'data' => $param, 'message' => 'Pendaftaran gagal'));
            }
            }
        }
    }
    
    public function ubah_password_put() {
        
            if (!$this->auth->verify_user_password($this->query('id'), $this->query('old_password'), 'kurir')) {
                $this->response(array('status' => false, 'data' => array(), 'message' => 'Password lama tidak sesuai'));
            } else {
                if($this->query('new_password') === $this->query('conf_password')){
                    
                     $params = array(
                    'password' => password_hash($this->query('conf_password'), PASSWORD_BCRYPT),
                );
                $act = $this->base_model->update_item('kurir', $params, array('id' => $this->query('id')));
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
            if (!$this->auth->verify_user($email, $password, 'kurir')) {
                $this->response(array('status' => false, 'data' => array(), 'message' => 'Login Failed'));
            } else {
                $kurir = $this->base_model->get_item('row', 'kurir', 'id, nama, email, telp, alamat, aktif', array('email' => $email));
                if($kurir['aktif'] != 1){
                    $this->response(array('status' => false, 'data' => array(), 'message' => 'Login Failed. Kurir status non-aktif'));
                } else {
                $params = array(
                    'email' => $email,
                    'id'=> $kurir['id'],
                    'is_logged_in' => TRUE
                );
                $this->session->set_userdata($params);
                $this->response(array('status' => true, 'data' => $kurir, 'message' => ''));
                }
            }
        }
    }

    public function logout_get() {
        $this->session->unset_userdata(array('email', 'is_logged_in'));
        $this->response(array('status' => true, 'data' => array(), 'message' => 'Logout Successfull'));
    }

//
//    public function set_kurir_put($order_id, $kurir_id) {
//
//        $act = $this->base_model->update_item('order', array('kurir_id' => $kurir_id), array('id' => $order_id));
//        if ($act) {
//            $this->response(array('status' => true, 'data' => array('order_id' => $order_id, 'kurir' => $kurir_id)));
//        } else {
//            $this->response(array('status' => false, 'data' => array('order_id' => $order_id, 'kurir' => $kurir_id)));
//        }
//    }

    function _is_logged_in() {
        $auth = $this->session->userdata('is_logged_in');
        if (isset($auth) && $auth == TRUE) {
            $this->response(array('status' => false, 'data' => array()));
        }
    }
    
    public function tesregister_post() {
        $this->load->library('email');
        
        $auth = $this->session->userdata('is_logged_in');
        if (isset($auth) && $auth == TRUE) {
            $this->response(array('status' => false, 'data' => array('message' => 'Logged in')));
        } else {
            if($this->base_model->get_item('row', 'kurir', 'email', array('email'=>$this->query('email')))){
            $this->response(array('status' => false, 'data' => array(), 'message' => 'Email telah digunakan'));
            }else{
            $param = array(
                'nama' => $this->query('nama'),
                'email' => $this->query('email'),
                'password' => password_hash($this->query('password'), PASSWORD_BCRYPT),
                'telp' => $this->query('telp'),
                'alamat' => $this->query('alamat'),
                'kode_aktivasi' => sha1(md5(microtime())),
            );
            //$act = $this->base_model->insert_item('kurir', $param, 'id');
            $act = 3;
            if ($act) {
                $param['id'] = $act;
                $this->email->clear();
                $this->email->to($this->query('email'));
                $this->email->from('noreply@laundry-in.com', 'Laundry-in');
                $this->email->subject('Link Aktivasi Kurir');
                $this->email->message($this->load->view('email/kurir_activate.tpl.php', $param, true));
                $this->email->send();
                $this->response(array('status' => true, 'data' => $param, 'message' => 'Pendaftaran berhasil'));
            } else {
                $this->response(array('status' => false, 'data' => $param, 'message' => 'Pendaftaran gagal'));
            }
            }
        }
    }

}
