<?php
defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';

class Nasabah extends REST_Controller
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model('nasabah_model');
  }

  public function index_get()
  {

    $nasabah = $this->nasabah_model->getAllData();

    $data = [
      'status' => true,
      'data' => $nasabah
    ];

    $this->response($data, REST_Controller::HTTP_OK);
  }

  public function index_delete()
  {
    $id = $this->delete('id');
    if ($id === null) {
      $this->response([
        'status' => false,
        'msg' => 'Tidak ada id yang dipilih'
      ], REST_Controller::HTTP_BAD_REQUEST);
    } else {
      if ($this->nasabah_model->deleteNasabah($id) > 0) {
        $this->response([
          'status' => true,
          'id' => $id,
          'msg' => 'Data berhasil dihapus'
        ], REST_Controller::HTTP_OK);
      } else {
        $this->response([
          'status' => false,
          'msg' => 'Id tidak ditemukan'
        ], REST_Controller::HTTP_BAD_REQUEST);
      }
    }
  }

  public function index_post()
  {
    $data = [
      'id' => $this->post('id'),
      'nama_depan' => $this->post('nama_depan'),
      'nama_belakang' => $this->post('nama_belakang'),
      'alamat' => $this->post('alamat'),
      'kecamatan' => $this->post('kecamatan'),
      'pekerjaan' => $this->post('pekerjaan'),
      'status' => $this->post('status'),
    ];

    $simpan = $this->nasabah_model->tambahNasabah($data);
    
    if ($simpan['status']) {
      $this->response(['status' => true, 'msg' => 'Data telah ditambahkan'], REST_Controller::HTTP_OK);
    } else {
      $this->response(['status' => false, 'msg' => $simpan['msg']], REST_Controller::HTTP_INTERNAL_SERVER_ERROR);
    }
  }

  public function index_put()
  {
    $data = [
      'nama_depan' => $this->put('nama_depan'),
      'nama_belakang' => $this->put('nama_belakang'),
      'alamat' => $this->put('alamat'),
      'kecamatan' => $this->put('kecamatan'),
      'pekerjaan' => $this->put('pekerjaan'),
      'status' => $this->put('status'),
    ];

    $id = $this->put('id');
    
    $simpan = $this->nasabah_model->updateNasabah($data, $id);

    if ($simpan['status']) {
      $status = (int) $simpan['data'];
      if ($status > 0) {
        $this->response(['status' => true, 'msg' => 'Data telah diupdate'], REST_Controller::HTTP_OK);
      } else {
        $this->response(['status' => false, 'msg' => 'Tidak ada data yang dirubah'], REST_Controller::HTTP_BAD_REQUEST);
      }
    } else {
      $this->response(['status' => false, 'msg' => $simpan['msg']], REST_Controller::HTTP_INTERNAL_SERVER_ERROR);
    }
  }
  

 
}
