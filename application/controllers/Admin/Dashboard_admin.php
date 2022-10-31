<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_admin extends CI_Controller {
    public function __construct()
    {
        //login admin
        parent::__construct();
        if ($this->session->userdata('username') != 'admin') {
            $this->session->set_flashdata('pesan' ,'<div class="alert alert-danger alert-dismissible fade show" role="alert">
            Anda Belum Login
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>');
        
        redirect('Auth/login');
        
        }
    }
    //dashboard (tampilan awal) admin
    public function index(){
        $data['admin'] = $this->Model_auth->tampil_data()->result();
        $this->load->view('templates_admin/header');
        $this->load->view('templates_admin/sidebar');
        $this->load->view('Admin/Dashboard', $data);
        $this->load->view('templates_admin/footer');
    }
    //edit profile admin menuju form edit admin
    public function edit_profil($id){
        $where = array('id' =>$id);
        $data['user'] = $this->Model_auth->tampil_data_user_by_id($id);
        $data['user'] = $this->Model_auth->edit_user($where, 'tb_user')->result();
        $this->load->view('templates_admin/header');
        $this->load->view('templates_admin/sidebar');
        $this->load->view('Admin/edit_profil', $data);
        $this->load->view('templates_admin/footer');
    }
    //update profile admin, setelah mengedit form edit kita akan menyimpan data tersebut melalui button simpan
    public function update(){
        $id = $this->input->post('id');
        $foto_admin = '';
        if (empty($_FILES['foto_admin']['name'])){
            $data = [
            "id" => $this->input->post('id'),
            "nama" => $this->input->post('nama'),
            "nip" => $this->input->post('nip'),
            "username" => $this->input->post('username')
            ];
            $where = array(
                    'id' => $id
                );
            
            $this->Model_auth->update_data($where,$data, 'tb_user');
        }else{
            $file_name = $_FILES['foto_admin']['name'];
            $newfile_name = str_replace(' ', '', $file_name);
            $config ['upload_path'] = './uploads';
            $config ['allowed_types']='jpg|jpeg|png|gif';
            $newName = date('dmYHis') . $newfile_name;
            $config['file_name']         = $newName;
            $config['max_size']             = 5100;
            $this->load->library('upload', $config);
            $this->upload->initialize($config);
            if($this->upload->do_upload('foto_admin')){
                if ($foto_admin != "Tidak Ada Gambar") {
                echo "Gambar Gagal Diupload! (Format Gambar:jpg/jpeg/png/gif)";
                }
                $this->upload->data('file_name');
                $data = [
                    "id" => $this->input->post('id'),
                    "nama" => $this->input->post('nama'),
                    "nip" => $this->input->post('nip'),
                    "foto_admin"=>$newName,
                    "username" => $this->input->post('username')
                    ];
                    $where = array(
                            'id' => $id
                        );
                    
                    $this->Model_auth->update_data($where,$data, 'tb_user');
            }else {
                $error = array('error' => $this->upload->display_errors());
                return $this->session->set_flashdata('error', $error['error']);
            }
            
        }
        $this->session->set_flashdata('msg', 'Data Berhasil Di Update');
        redirect('Admin/Dashboard_admin/index');
    }
    //change password untuk mengubah password
    public function changePassword()
    {
        $this->form_validation->set_rules('password', 'Password', 'required|trim|min_length[6]|matches[passwordConf]', [
            'matches' => 'Password Doesn"t match!',
            'min_length' => 'Password minimum 6 character'
        ]);
        $this->form_validation->set_rules('passwordConf', 'passwordConf', 'required|trim|min_length[6]');
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('templates_admin/header');
            $this->load->view('templates_admin/sidebar');
            $this->load->view('Admin/Ubah_password');
            $this->load->view('templates_admin/footer');
        } else {

            $pass = $this->input->post('password');
            $id = $this->session->userdata('id');
            $data = array(
                'password' => $pass
            );

            $where = array(
                'id' => $id
            );
            
            $this->Model_auth->changePassword($data, $where);
            $this->session->set_flashdata('msg', '<div class="alert alert-success" role="alert">
            	Password Berhasil Diganti
		  	</div>');
            redirect('Admin/Dashboard_admin');
        }
    }

}

/* End of file Dashboard_admin.php */

?>