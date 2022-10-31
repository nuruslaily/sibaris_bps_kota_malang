<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

class Kendaraan extends CI_Controller {

    public function index(){
        $data['kendaraan'] = $this->Model_kendaraan->tampil_data()->result();
        if ($this->input->post('keyword')){
            $data['kendaraan']=$this->Model_kendaraan->search();
        }
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('Kendaraan', $data);
        $this->load->view('templates/footer');
    }

    public function detail_kendaraan($id_kendaraan)
    {
        $data['kendaraan'] = $this->Model_kendaraan->detail_kendaraan($id_kendaraan);
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('Detail_kendaraan', $data);
        $this->load->view('templates/footer');
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
        $pdf->SetFont('Times','B',10);
        $pdf->Cell(10, 10, "No", 1, 0, 'C');
        $pdf->Cell(24, 10, "Kode", 1, 0, 'C');
        $pdf->Cell(28, 10, "Merk Kendaraan", 1, 0, 'C');
        $pdf->Cell(28, 10, "Tipe Kendaraan", 1, 0, 'C');
        $pdf->Cell(18, 10, "Nopol", 1, 0, 'C');
        $pdf->Cell(24, 10, "No BPKB", 1, 0, 'C');
        $pdf->Cell(20, 10, "Tgl Peroleh", 1, 0, 'C');
        $pdf->Cell(24, 10, "PJ Kendaraan", 1, 0, 'C');
        $pdf->Cell(28, 10, "Keterangan", 1, 1, 'C');
        $pdf->SetFont('', '', 10);
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
        $pdf->Cell(10, 20, $no+1, 1, 0, '');
        $pdf->Cell(24, 20, $k['kode_kendaraan'], 1, 0, 'L');
        $pdf->MultiCell(28, 20, $k['merk_kendaraan'],1, 'L','', FALSE);
        $pdf->MultiCell(28, 20, $k['tipe_kendaraan'], 1, 'L','', FALSE);
        $pdf->Cell(18, 20, $k['nopol'], 1, 0, 'L');
        $pdf->Cell(24, 20, $k['no_bpkb'], 1, 0, 'L');
        $pdf->Cell(20, 20, $k['tanggal_peroleh'], 1, 0, 'L');
        $pdf->MultiCell(24, 20, $k['pj_kendaraan'], 1, 'L','', FALSE);
        $pdf->MultiCell(28, 20, $k['keterangan'], 1, 'L', FALSE);
    }


}

/* End of file Kendaraan.php */

?>