<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Nasabah_model extends CI_Model
{
  public function getAllData()
  {
    return $this->db->get('tb_nasabah')->result();
  }

  public function deleteNasabah($id)
  {
    $this->db->delete('tb_nasabah', ['id' => $id]);
    return $this->db->affected_rows();
  }

  public function tambahNasabah($data)
  {
    try {
      $this->db->insert('tb_nasabah', $data);
      $error = $this->db->error();
      if (!empty($error['code'])) {
        throw new Exception('Terjadi kesalahan: ' . $error['message']);
        return false;
      }
      return ['status' => true, 'data' => $this->db->affected_rows()];
    } catch (Exception $ex) {
      return ['status' => false, 'msg' => $ex->getMessage()];
    }
  }

  public function updateNasabah($data, $id)
  {
    try {
      $this->db->where('id', $id);
      $this->db->update('tb_nasabah', $data);

      $error = $this->db->error();
      if (!empty($error['code'])) {
        throw new Exception('Terjadi kesalahan: ' . $error['message']);
        return false;
      }
      return ['status' => true, 'data' => $this->db->affected_rows()];
    } catch (Exception $ex) {
      return ['status' => false, 'msg' => $ex->getMessage()];
    }
  }

}