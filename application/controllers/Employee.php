<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Employee extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
    $this->load->model('Employee_model');
    $this->load->database();
  }
  public function index() {
    $data = [
      'images' => $this->Employee_model->all()
    ];
    $this->load->view('employee/index', $data);
  }
  public function add() {
    $rules = [
                [
                  'field' => 'nombre',
                  'label'=> 'nombre',
                  'rules' => 'required'
                ],
                [
                  'field' => 'division',
                  'label'=> 'division',
                  'rules' => 'required'
                ],
                [
                  'field' => 'unidad',
                  'label'=> 'unidad',
                  'rules' => 'required'
                ],
                [
                  'field' => 'email',
                  'label'=> 'email',
                  'rules' => 'required'
                ],
                [
                  'field' => 'fono',
                  'label'=> 'fono',
                  'rules' => 'required'
                ]
    ];
  $this->form_validation->set_rules($rules);

  if ($this->form_validation->run() == FALSE) {
    $this->load->view('employee/add_image');
  }else {
    $config = [
      'upload_path' => './uploads/',
      'allowed_types' => 'gif|jpg|png',
      'max_size' => 100,
      'max_width' => 1024,
      'max_height' => 768
    ];
    $this->load->library('upload', $config);

    if(! $this->upload->do_upload()) {
      $error = array('error' => $this->upload->display_errors());
      $this->load->view('employee/add_image', $error);
    } else {
      $file = $this->upload->data();
      $data = [
                'nombre' => set_value('nombre'),
                'file' => 'uploads/' . $file['file_name'],
                'division' => set_value('division'),
                'unidad' => set_value('unidad'),
                'email' => set_value('email'),
                'fono' => set_value('fono')
              ];
      $this->Employee_model->create($data);
    $this->session->set_flashdata('message', 'Nueva imagen agregada');
    redirect('employee');
    }
  }
  }
  public function edit($id) {
    $rules = [
                [
                  'field' => 'nombre',
                  'label'=> 'nombre',
                  'rules' => 'required'
                ],
                [
                  'field' => 'division',
                  'label'=> 'division',
                  'rules' => 'required'
                ],
                [
                  'field' => 'unidad',
                  'label'=> 'unidad',
                  'rules' => 'required'
                ],
                [
                  'field' => 'email',
                  'label'=> 'email',
                  'rules' => 'required'
                ],
                [
                  'field' => 'fono',
                  'label'=> 'fono',
                  'rules' => 'required'
                ]
    ];
    $this->form_validation->set_rules($rules);
    $image = $this->Employee_model->find($id)->row();

    if($this->form_validation->run() == FALSE) {
      $this->load->view('employee/edit_image', ['image' => $image]);
    } else {
      if(isset($_FILES["userfile"]["name"])) {
        $config = [
                    'upload_path' => './uploads/',
                    'allowed_types' => 'gif|jpg|png|jpeg|JPG',
                    'max_size' => 100,
                    'max_width' => 1024,
                    'max_height' => 768
                  ];
        $this->load->library('upload', $config);
        if (! $this->upload->do_upload()) {
          $error = array('error' => $this->upload->display_errors());
          $this->load->view('employee/edit_image', ['image' => $image, 'error' => $error]);
        } else {
          $file = $this->upload->data();
          $data['file'] = 'uploads/' . $file['file_name'];
          unlink($image->file);
        }
      }
      $data['nombre'] = set_value('nombre');
      $data['division'] = set_value('division');
      $data['unidad'] = set_value('unidad');
      $data['email'] = set_value('email');
      $data['fono'] = set_value('fono');
      $this->Employee_model->update($id, $data);
      $this->session->set_flashdata('message', 'El funcionario ha sido actualizado');
      redirect('employee');
    }
  }
  public function delete($id) {
    $this->Employee_model->delete($id);
    $this->session->set_flashdata('message', 'Funcionario ha sido eliminado');
    redirect('employee');
  }
}
