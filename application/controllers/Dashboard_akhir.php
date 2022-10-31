<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_akhir extends CI_Controller {

    public function index()
    {
        $data['barang'] = $this->Model_barang->tampil_data()->result();
        if ($this->input->post('keyword')){
            $data['barang']=$this->Model_barang->search();
        }
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('Dashboard', $data);
        $this->load->view('templates/footer');
    }
    

    public function detail($id_brg)
    {
        $data['barang'] = $this->Model_barang->detail_barang($id_brg);
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('detail_barang', $data);
        $this->load->view('templates/footer');
    }

    public function export($id) {
        // $barang = $this->Model_barang->tampil_data_barang_by_id($id);
        $barang = $this->Model_barang->get_data($id);
        $ruang = $this->Model_barang->getData_Ruang($id);
        $nama; $kode; $pj; $nomor_induk;

        foreach($ruang->result_array() as $row ) {
            $nama = $row['uraian_ruang'];
            $kode = $row['kode_ruang'];
            $pj = $row['pj_ruang'];
            $nomor_induk = $row['nip'];
        }
 
        $pdf = new \TCPDF('P', 'mm','A4', true, 'UTF-8', false);
        $pdf->SetHeaderMargin(10);
        $pdf->SetMargins(3,20,3);
        $pdf->AddPage();
        $pdf->Image('assets/img/logo.jpeg',3,3,40);
        $pdf->SetFont('Times','B',10);
        $pdf->SetX(4);            
        $pdf->MultiCell(60,0,'BADAN PUSAT STATISTIK',0,'L');
        $pdf->SetX(4);   
        $pdf->MultiCell(60,0,'BADAN PUSAT STATISTIK',0,'L');
        $pdf->SetX(4);   
        $pdf->MultiCell(60,0,'BPS PROVINSI JAWA TIMUR',0,'L');
        $pdf->SetFont('', 'B', 15);
        $pdf->ln(10);
        $pdf->Cell(200, 5, "DAFTAR BARANG RUANGAN", 0, 1, 'C');
        $pdf->SetAutoPageBreak(true, 0);
        $pdf->ln(10);
        $pdf->SetFont('Times','B',10);
        $pdf->SetX(4);            
        $pdf->Cell(100,0,'NAMA UPB : BPS KOTA MALANG',0,'L');
        $pdf->Cell(70,0,'NAMA RUANGAN : '.$nama,0,'L');
        $pdf->ln(5);
        $pdf->SetX(4);
        $pdf->Cell(100,0,'KODE UPB : 054.01.05.019501.000.KD',0,'L');
        $pdf->Cell(70,0,'KODE RUANGAN : '.$kode,0,'L');
        $pdf->SetAutoPageBreak(true, 0);
 
        // Add Header
        $pdf->ln(6);
        $pdf->SetFont('Times','B',10);
        $pdf->Cell(8, 10, "No", 1, 0, 'C');
        $pdf->Cell(35, 10, "Nama Barang", 1, 0, 'C');
        $pdf->Cell(35, 10, "Merk/Type", 1, 0, 'C');
        $pdf->Cell(25, 10, "Kd Barang", 1, 0, 'C');
        $pdf->Cell(20, 10, "Th Peroleh", 1, 0, 'C');
        $pdf->Cell(20, 10, "Jml Barang", 1, 0, 'C');
        $pdf->Cell(25, 10, "Penguasaan", 1, 0, 'C');
        $pdf->Cell(35, 10, "Keterangan", 1, 1, 'C');
        $pdf->SetFont('', '', 10);
        foreach($barang->result_array() as $b => $brg) {
            $this->addRow($pdf, $b, $brg);
        }

        $pdf->SetAutoPageBreak(true, 0);
        $pdf->Ln(10);
        $pdf->SetFont('Times','B',10);
        $pdf->SetX(28); 
        $pdf->Cell(103,0,'Penanggung Jawab UAKPB,',0,'R');//jgn diubah        
        $pdf->Cell(50,0,'Penanggung Jawab Ruangan,',0,'R'); 
        $pdf->Ln(4);
        $pdf->SetX(30);
        $pdf->Cell(35,0,'Kepala BPS Kota Malang',0,'L','',FALSE);//jgn diubah
        $pdf->Ln(25);
        $pdf->SetX(35);   
        $pdf->Cell(54,0,'Drs. Sunaryo, M. Si,',0,'C',FALSE);//jgn diubah
        $pdf->SetX(140); 
        $pdf->Cell(65,0,$pj,0,'C');
        $pdf->Ln(4);
        $pdf->SetX(30); 
        $pdf->Cell(108,0,'NIP. 1961004 199102 1 001,',0,'R');//jgn diubah 
        $pdf->Cell(54,0,$nomor_induk,0,'R');

        $pdf->Output('Data Barang '.$nama.'.pdf');
    }

    private function addRow($pdf, $no, $b) {
        $pdf->Cell(8, 15, $no+1, 1, 0, 'C',FALSE);
        $pdf->MultiCell(35, 15, $b['nama_barang'],  1, 'L', '', FALSE);
        $pdf->MultiCell(35, 15, $b['merk'], 1, 'L', '', FALSE);
        $pdf->Cell(25, 15, $b['kode_barang'], 1, 0, 'L', FALSE);
        $pdf->Cell(20, 15, $b['tahun_peroleh'], 1, 0,'L', FALSE);
        $pdf->Cell(20, 15, $b['jumlah'], 1, 0, 'L', FALSE);
        $pdf->Cell(25, 15, $b['penguasaan'], 1, 0, 'L', FALSE);
        $pdf->MultiCell(35, 15, $b['keterangan'], 1, 'L', FALSE);
    }

}

/* End of file Dashboard_akhir.php */

?>