<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Base_model extends CI_Model {

    public function get_item($search_type, $table, $select = NULL, $where = NULL, $order = NULL, $limit = NULL, $offset = NULL) {
        if (isset($select)) {
            $this->db->select($select);
        }
        if (isset($order)) {
            $this->db->order_by($order);
        }
        if (!empty($where)) {
            $this->db->where($where);
        }
        $query = $this->db->get($table, $limit, $offset);
        if ($query->num_rows() > 0) {
             if($search_type == 'result'){
                $result = $query->result_array();
            } else {
                $result = $query->row_array();
            }
            $query->free_result();
            return $result;
        } else {
            return FALSE;
        }
    }

    public function get_join_item($search_type, $select, $order = NULL, $table1, $table_join, $relation, $option = NULL, $where = NULL, $limit = NULL, $offset = NULL) {
        if (!empty($where)) {
            $this->db->where($where);
        }
        if (isset($order)) {
            $this->db->order_by($order);
        }
        
        $this->db->select($select);
        for($i=0; $i < count($table_join); $i++){
            $this->db->join($table_join[$i], $relation[$i], $option[$i]);
        }
        
        $query = $this->db->get($table1, $limit, $offset);

        if ($query->num_rows() > 0) {
            if($search_type == 'result'){
                $result = $query->result_array();
            } else {
                $result = $query->row_array();
            }
            $query->free_result();
            return $result;
        } else {
            return FALSE;
        }
    }

    function insert_item($table, $data, $return = NULL) {
        $query = $this->db->insert($table, $data);
        if($return == 'id' && $query){
            return $this->db->insert_id();
        }
        return $query;
    }

    function update_item($table, $set = array(), $where = array()) {
        $query = $this->db->update($table, $set, $where);
        return $this->db->affected_rows();
    }

    function delete_item($table, $where = array()) {
        $query = $this->db->delete($table, $where);
        return $query;
    }

}
