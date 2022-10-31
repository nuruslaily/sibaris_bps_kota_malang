<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

class Data_kendaraan extends CI_Controller {
    public function __construct()
    {
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
    public function index(){
        $data['kendaraan'] = $this->Model_kendaraan->tampil_data()->result();
        if ($this->input->post('keyword')){
            $data['kendaraan']=$this->Model_kendaraan->search();
        }
        $this->load->view('templates_admin/header');
        $this->load->view('templates_admin/sidebar');
        $this->load->view('Admin/Data_kendaraan', $data);
        $this->load->view('templates_admin/footer');
    }
    

    public function tambah_aksi(){
        
        $kode_kendaraan=$this->input->post('kode_kendaraan');
        $merk_kendaraan=$this->input->post('merk_kendaraan');
        $tipe_kendaraan=$this->input->post('tipe_kendaraan');
        $kategori_kendaraan=$this->input->post('kategori_kendaraan');
        $nopol=$this->input->post('nopol');
        $pj_kendaraan=$this->input->post('pj_kendaraan');
        $no_bpkb=$this->input->post('no_bpkb');
        $tanggal_peroleh=$this->input->post('tanggal_peroleh');
        $foto=$_FILES['foto']['name'];
        if ($foto=''){}else{
            $config ['upload_path'] = './uploads';
            $config ['allowed_types']='jpg|jpeg|png|gif';

            $this->load->library('upload', $config);
            if(!$this->upload->do_upload('foto')){
                echo "Gambar Gagal Diupload! (Format Gambar:jpg/jpeg/png/gif)";
            }else{
                $foto=$this->upload->data('file_name');
            }
        }
        $keterangan=$this->input->post('keterangan');
        

        $data = array(
            'kode_kendaraan'=>$kode_kendaraan,
            'merk_kendaraan'=>$merk_kendaraan,
            'tipe_kendaraan'=>$tipe_kendaraan,
            'kategori_kendaraan'=>$kategori_kendaraan,
            'nopol'=>$nopol,
            'pj_kendaraan'=>$pj_kendaraan,
            'no_bpkb'=>$no_bpkb,
            'tanggal_peroleh'=>$tanggal_peroleh,
            'foto'=>$foto,
            'keterangan'=>$keterangan

        );

        $this->Model_kendaraan->tambah_kendaraan($data, 'tb_kendaraan');
        $this->session->set_flashdata('msg', 'Data Berhasil Di Tambahkan');
        redirect('Admin/Data_kendaraan/index');
        

    }

    public function edit($id){
        $where = array('id_kendaraan' =>$id);
        $data['kendaraan'] = $this->Model_kendaraan->tampil_data_kendaraan_by_id($id);
        $data['kendaraan'] = $this->Model_kendaraan->edit_kendaraan($where, 'tb_kendaraan')->result();
        $this->load->view('templates_admin/header');
        $this->load->view('templates_admin/sidebar');
        $this->load->view('Admin/edit_kendaraan', $data);
        $this->load->view('templates_admin/footer');
    }

    public function update(){
        $id = $this->input->post('id_kendaraan');
        $foto = '';
        if (empty($_FILES['foto']['name'])){
            $data = [
            "id_kendaraan" => $this->input->post('id_kendaraan'),
            "kode_kendaraan" => $this->input->post('kode_kendaraan'),
            "merk_kendaraan" => $this->input->post('merk_kendaraan'),
            "tipe_kendaraan" => $this->input->post('tipe_kendaraan'),
            "kategori_kendaraan" => $this->input->post('kategori_kendaraan'),
            "nopol" => $this->input->post('nopol'),
            "pj_kendaraan" => $this->input->post('pj_kendaraan'),
            "no_bpkb" => $this->input->post('no_bpkb'),
            "tanggal_peroleh"=>$this->input->post('tanggal_peroleh')
            ];
            $where = array(
                    'id_kendaraan' => $id
                );
            
            $this->Model_kendaraan->update_data($where,$data, 'tb_kendaraan');
        }else{
            $file_name = $_FILES['foto']['name'];
            $newfile_name = str_replace(' ', '', $file_name);
            $config ['upload_path'] = './uploads';
            $config ['allowed_types']='jpg|jpeg|png|gif';

            
            $newName = date('dmYHis') . $newfile_name;
            $config['file_name']         = $newName;
            $config['max_size']             = 5100;
            $this->load->library('upload', $config);
            $this->upload->initialize($config);
            if($this->upload->do_upload('foto')){
                if ($foto != "Tidak Ada Gambar") {
                echo "Gambar Gagal Diupload! (Format Gambar:jpg/jpeg/png/gif)";
                }
                $this->upload->data('file_name');
                $data = [
                    "id_kendaraan" => $this->input->post('id_kendaraan'),
                    "kode_kendaraan" => $this->input->post('kode_kendaraan'),
                    "merk_kendaraan" => $this->input->post('merk_kendaraan'),
                    "tipe_kendaraan" => $this->input->post('tipe_kendaraan'),
                    "kategori_kendaraan" => $this->input->post('kategori_kendaraan'),
                    "nopol" => $this->input->post('nopol'),
                    "pj_kendaraan" => $this->input->post('pj_kendaraan'),
                    "no_bpkb" => $this->input->post('no_bpkb'),
                    "tanggal_peroleh"=>$this->input->post('tanggal_peroleh'),
                    "foto"=>$newName,
                    "keterangan"=>$this->input->post('keterangan'),
                    ];

                    $where = array(
                            'id_kendaraan' => $id
                        );
                $this->Model_kendaraan->update_data($where,$data, 'tb_kendaraan');
            }else {
                $error = array('error' => $this->upload->display_errors());
                return $this->session->set_flashdata('error', $error['error']);
            }
            
        }
        
        $keterangan = $this->input->post('keterangan');
        
        $this->session->set_flashdata('msg', 'Data Berhasil Di Update');
        redirect('Admin/Data_kendaraan/index');
        

    }

    public function detail_kendaraan($id_kendaraan)
    {
        $data['kendaraan'] = $this->Model_kendaraan->detail_kendaraan($id_kendaraan);
        $this->load->view('templates_admin/header');
        $this->load->view('templates_admin/sidebar');
        $this->load->view('Admin/detail_kendaraan', $data);
        $this->load->view('templates_admin/footer');
    }

    public function hapus(){
        $id = $this->input->post('id_kendaraan');
        echo $id;
        $where = array('id_kendaraan' => $id);
        $this->Model_kendaraan->hapus_data($where, 'tb_kendaraan');

        $this->session->set_flashdata('msg', 'Data Berhasil Di Hapus');
        redirect('Admin/Data_kendaraan/index');
    }

    public function export() {
        $kendaraan = $this->Model_kendaraan->tampil_data();

 
        $pdf = new \TCPDF('P', 'mm','A4', true, 'UTF-8', false);
        $pdf->SetHeaderMargin(5);
        $pdf->SetTopMargin(10);
        $pdf->SetDisplayMode('real', 'default');     
        $pdf->SetAutoPageBreak(true, 10);
        $pdf->SetMargins(3,20,3);
        $pdf->AddPage();
        $pdf->Image('assets/img/logo.jpeg',3,3,40);
        $pdf->SetFont('Times','B',11);
        $pdf->SetX(4);            
        $pdf->MultiCell(70,0,'BADAN PUSAT STATISTIK',0,'L');
        $pdf->SetX(4);   
        $pdf->MultiCell(70,0,'BADAN PUSAT STATISTIK',0,'L');
        $pdf->SetX(4);   
        $pdf->MultiCell(70,0,'BPS PROVINSI JAWA TIMUR',0,'L');
        $pdf->ln(10);
        $pdf->SetFont('', 'B', 20);
        $pdf->Cell(210, 10, "REKAP DAFTAR KENDARAAN", 0, 1, 'C');
        $pdf->SetAutoPageBreak(true, 0);
        $pdf->ln(10);
        $pdf->SetFont('Times','B',11);
        $pdf->SetX(4);            
        $pdf->MultiCell(70,0,'NAMA UPB : BPS KOTA MALANG',0,'L');
        $pdf->SetX(4);
        $pdf->MultiCell(70,0,'KODE UPB : 054.01.05.019501.000.KD',0,'L');    
        $pdf->SetAutoPageBreak(true, 0);
 
        // Add Header
        $pdf->SetFont('Times','B',11);
        $pdf->Cell(10, 10, "No", 1, 0, 'C');
        $pdf->Cell(35, 10, "Kode Kendaraan", 1, 0, 'C');
        $pdf->Cell(35, 10, "Merk Kendaraan", 1, 0, 'C');
        $pdf->Cell(35, 10, "Tipe Kendaraan", 1, 0, 'C');
        $pdf->Cell(25, 10, "Kategori", 1, 0, 'C');
        $pdf->Cell(25, 10, "Nopol", 1, 0, 'C');
        $pdf->Cell(40, 10, "PJ Kendaraan", 1, 1, 'C');
        $pdf->SetFont('', '', 11);
        foreach($kendaraan->result_array() as $k => $kn) {
            $this->addRow($pdf, $k, $kn);
        }

        $pdf->SetAutoPageBreak(true, 0);
        $pdf->Ln(10);
        $pdf->SetFont('Times','B',10);
        $pdf->SetX(28); 
        $pdf->Cell(103,0,'Penanggung Jawab UAKPB,',0,'R');//jgn diubah        
        $pdf->Cell(50,0,'Penanggung Jawab Kendaraan,',0,'R'); 
        $pdf->Ln(4);
        $pdf->SetX(30);
        $pdf->Cell(35,0,'Kepala BPS Kota Malang',0,'L','',FALSE);//jgn diubah
        $pdf->Ln(25);
        $pdf->SetX(35);   
        $pdf->Cell(105,0,'Drs. Sunaryo, M. Si,',0,'R');//jgn diubah
        $pdf->Cell(54,0,'Rony Mugiartono',0,'R');
        $pdf->Ln(4);
        $pdf->SetX(30); 
        $pdf->Cell(108,0,'NIP. 1961004 199102 1 001,',0,'R');//jgn diubah 
        $pdf->Cell(54,0,'196510051988031002',0,'R');

        $pdf->Output('Data Kendaraan.pdf'); 
    }

    private function addRow($pdf, $no, $k) {
        $pdf->Cell(10, 13, $no+1, 1, 0, '');
        $pdf->Cell(35, 13, $k['kode_kendaraan'], 1, 0, 'L');
        $pdf->Cell(35, 13, $k['merk_kendaraan'], 1, 0, 'L');
        $pdf->MultiCell(35, 13, $k['tipe_kendaraan'], 1, 'L','', FALSE);
        $pdf->Cell(25, 13, $k['kategori_kendaraan'], 1, 0, 'L');
        $pdf->Cell(25, 13, $k['nopol'], 1, 0, 'L');
        $pdf->MultiCell(40, 13, $k['pj_kendaraan'], 1, 'L', FALSE);
    }
}

/* End of file Data_kendaraan.php */

?>