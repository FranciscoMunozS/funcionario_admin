<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Employee_model extends CI_Model{

  public function create($data) {
    try {
      $this->db->insert('employee', $data);
      return true;
    } catch(Exception $e) {
      echo $e->getMessage();
    }
  }
  public function all() {
    $result =  $this->db->get('employee');
    return $result;
  }
  public function find($id) {
    $row = $this->db->where('id', $id)->limit(1)->get('employee');
    return $row;
  }
  public function update($id, $data) {
    try {
      $this->db->where('id', $id) -> limit(1)->update('employee', $data);
      return true;
    }catch(Exception $e) {
      echo $e->getMessage();
    }
  }
  public function delete($id) {
    try {
      $this->db->where('id', $id)->delete('employee');
      return true;
    }catch(Exception $e) {
      echo $e->getMessage();
    }
  }
}
