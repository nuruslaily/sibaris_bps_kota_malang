<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Data_barang extends CI_Controller
{
    public function __construct()
    {
        //login admin
        parent::__construct();
        if ($this->session->userdata('username') != 'admin') {
            $this->session->set_flashdata('pesan', '<div class="alert alert-danger alert-dismissible fade show" role="alert">
            Anda Belum Login
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>');

            redirect('Auth/login');
        }
    }
    //tampilan awal data barang pada admin
    public function index()
    {
        $data['barang'] = $this->Model_barang->tampil_data_barang();
        $data['ruang'] = $this->Model_ruang->tampil_data_ruangan();
        if ($this->input->post('keyword')) {
            $data['barang'] = $this->Model_barang->search();
        }

        $this->load->view('templates_admin/header');
        $this->load->view('templates_admin/sidebar');
        $this->load->view('Admin/Data_barang', $data);
        $this->load->view('templates_admin/footer');
    }

    //tambah barang
    public function tambah_aksi()
    {
        $kode_barang = $this->input->post('kode_barang');
        $nama_barang = $this->input->post('nama_barang');
        $merk = $this->input->post('merk');
        $tahun_peroleh = $this->input->post('tahun_peroleh');
        $jumlah = $this->input->post('jumlah');
        $satuan = $this->input->post('satuan');
        $penguasaan = $this->input->post('penguasaan');
        $id_ruang = $this->input->post('id_ruang');
        $keadaan = $this->input->post('keadaan');
        $keterangan = $this->input->post('keterangan');

        $data = array(
            'kode_barang' => $kode_barang,
            'nama_barang' => $nama_barang,
            'merk' => $merk,
            'tahun_peroleh' => $tahun_peroleh,
            'jumlah' => $jumlah,
            'satuan' => $satuan,
            'penguasaan' => $penguasaan,
            'id_ruang' => $id_ruang,
            'keadaan' => $keadaan,
            'keterangan' => $keterangan

        );

        $this->Model_barang->tambah_barang($data, 'tb_barang');
        $this->session->set_flashdata('msg', 'Data Berhasil Di Tambah');
        redirect('Admin/Data_barang/index');
    }
    //edit barang menuju form edit barang
    public function edit($id)
    {
        $data['barang'] = $this->Model_barang->tampil_data_barang_by_id($id);
        $data['ruang'] = $this->Model_ruang->tampil_data_ruangan();
        $this->load->view('templates_admin/header');
        $this->load->view('templates_admin/sidebar');
        $this->load->view('Admin/edit_barang', $data);
        $this->load->view('templates_admin/footer');
    }
    //detail barang
    public function detail_barang($id_barang)
    {
        $data['barang'] = $this->Model_barang->detail_barang($id_barang);
        $this->load->view('templates_admin/header');
        $this->load->view('templates_admin/sidebar');
        $this->load->view('Admin/detail_barang', $data);
        $this->load->view('templates_admin/footer');
    }

    public function update()
    {
        $id = $this->input->post('id_barang');
        $kode_barang = $this->input->post('kode_barang');
        $nama_barang = $this->input->post('nama_barang');
        $merk = $this->input->post('merk');
        $tahun_peroleh = $this->input->post('tahun_peroleh');
        $jumlah = $this->input->post('jumlah');
        $satuan = $this->input->post('satuan');
        $penguasaan = $this->input->post('penguasaan');
        $id_ruang = $this->input->post('id_ruang');
        $keadaan = $this->input->post('keadaan');
        $keterangan = $this->input->post('keterangan');

        $data = array(
            'kode_barang' => $kode_barang,
            'nama_barang' => $nama_barang,
            'merk' => $merk,
            'tahun_peroleh' => $tahun_peroleh,
            'jumlah' => $jumlah,
            'satuan' => $satuan,
            'penguasaan' => $penguasaan,
            'id_ruang' => $id_ruang,
            'keadaan' => $keadaan,
            'keterangan' => $keterangan
        );
        $where = array(
            'id_barang' => $id
        );
        $this->Model_barang->update_data($where, $data, 'tb_barang');

        $this->session->set_flashdata('msg', 'Data Berhasil Di Update');
        redirect('Admin/Data_barang/index');
    }

    public function hapus()
    {
        $id = $this->input->post('id_barang');
        echo $id;
        $where = array('id_barang' => $id);
        $this->Model_barang->hapus_data($where, 'tb_barang');

        $this->session->set_flashdata('msg', 'Data Berhasil Di Hapus');
        redirect('Admin/Data_barang/index');
    }

    public function export()
    {
        $barang = $this->Model_barang->tampil_data();
        $idRuang;
        // foreach ($barang as $row) {
        //     $idRuang = $row['id_ruang'];
        // }

        $ruang = $this->Model_ruang->getData_id();

        $pdf = new \TCPDF('P', 'mm', 'Letter', true, 'UTF-8', false);
        $pdf->SetHeaderMargin(5);
        $pdf->SetTopMargin(10);
        $pdf->SetDisplayMode('real', 'default');
        $pdf->SetMargins(3, 20, 3);
        $pdf->AddPage();
        $pdf->Image('assets/img/logo.jpeg', 3, 3, 40);
        $pdf->SetFont('Times', 'B', 10);
        $pdf->SetX(4);
        $pdf->MultiCell(60, 0, 'BADAN PUSAT STATISTIK', 0, 'L');
        $pdf->SetX(4);
        $pdf->MultiCell(60, 0, 'BADAN PUSAT STATISTIK', 0, 'L');
        $pdf->SetX(4);
        $pdf->MultiCell(60, 0, 'BPS PROVINSI JAWA TIMUR', 0, 'L');
        $pdf->ln(10);
        $pdf->SetFont('', 'B', 15);
        $pdf->Cell(200, 10, "DAFTAR BARANG RUANGAN", 0, 1, 'C');
        $pdf->SetAutoPageBreak(true, 0);
        $pdf->ln(10);
        $pdf->SetFont('Times', 'B', 10);
        $pdf->SetX(4);
        $pdf->MultiCell(70, 0, 'NAMA UPB : BPS KOTA MALANG', 0, 'L');
        $pdf->SetX(4);
        $pdf->MultiCell(70, 0, 'KODE UPB : 054.01.05.019501.000.KD', 0, 'L');
        $pdf->SetAutoPageBreak(true, 0);

        // Add Header
        $pdf->SetFont('Times', 'B', 10);
        $pdf->Cell(8, 10, "No", 1, 0, 'C');
        $pdf->Cell(30, 10, "Nama Barang", 1, 0, 'C');
        $pdf->Cell(30, 10, "Merk/Type", 1, 0, 'C');
        $pdf->Cell(23, 10, "Kd Barang", 1, 0, 'C');
        $pdf->Cell(18, 10, "Th Peroleh", 1, 0, 'C');
        $pdf->Cell(19, 10, "Jml Barang", 1, 0, 'C');
        $pdf->Cell(21, 10, "Penguasaan", 1, 0, 'C');
        $pdf->Cell(21, 10, "Nama Ruang", 1, 0, 'C');
        $pdf->Cell(34, 10, "Keterangan", 1, 1, 'C');
        $pdf->SetFont('', '', 10);
        foreach ($ruang as $b => $brg) {
            $this->addRow($pdf, $b, $brg);
        }

        $pdf->Output('Data Barang.pdf');
    }

    private function addRow($pdf, $no, $b)
    {
        $ruang = $this->Model_ruang->tampil_data_ruangan();
        $pdf->Cell(8, 20, $no + 1, 1, 0, '');
        $pdf->MultiCell(30, 20, $b['nama_barang'],  1, 'L', '', FALSE);
        $pdf->MultiCell(30, 20, $b['merk'], 1, 'L', '', FALSE);
        $pdf->Cell(23, 20, $b['kode_barang'], 1, 0, 'L', FALSE);
        $pdf->Cell(18, 20, $b['tahun_peroleh'], 1, 0, 'L', FALSE);
        $pdf->Cell(19, 20, $b['jumlah'] . " " . $b['satuan'], 1, 0, 'L', FALSE);
        $pdf->Cell(21, 20, $b['penguasaan'], 1, 0, 'L', FALSE);
        // foreach($ruang as $r){
        $pdf->MultiCell(21, 20, $b['uraian_ruang'], 1, 'L', '', FALSE);
        // }
        $pdf->MultiCell(34, 20, $b['keterangan'], 1, 'L', FALSE);
    }
}

/* End of file Data_barang.php */
