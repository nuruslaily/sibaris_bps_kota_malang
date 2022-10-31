<div class="container-fluid">
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="<?php echo base_url('assets/img/INFORUANGAN.png') ?>" class="d-block w-100" alt="...">
      </div>
    </div>
  </div>
  <br>
  <!-- sweet alert -->
  <?php

  if (!empty($this->session->flashdata('msg'))) {
  ?>
    <script>
      swal("Success!", "<?= $this->session->flashdata('msg') ?>", "success");
    </script>
  <?php
  }
  ?>
  <!--  -->

  <a href="<?= base_url('Admin/Data_ruang/export') ?>" class="btn btn-sm btn-secondary mb-3 mt-3" target="_blank"><i class="fas fa-print fa-sm"></i>Cetak</a>
  <table id="data_ruang" class="table table-bordered">
    <thead>
      <tr>
        <td>No</td>
        <th>Kode Ruang</th>
        <th>Uraian Ruang</th>
        <th>Lantai Ruang</th>
        <th>Penanggung Jawab Ruang</th>
        <th>NIP</th>
        <th>No Telepon/Whatsapp</th>
        <th>Alamat</th>
        <th>Aksi</th>
      </tr>
    </thead>
    <tbody>

      <?php
      $no = 1;
      foreach ($ruang as $rg) : ?>
        <tr>
          <td><?php echo $no++ ?></td>
          <td><?php echo $rg->kode_ruang ?></td>
          <td><?php echo $rg->uraian_ruang ?></td>
          <td><?php echo $rg->lantai ?></td>
          <td><?php echo $rg->pj_ruang ?></td>
          <td><?php echo $rg->nip ?></td>
          <td><?php echo $rg->no_tlp ?></td>
          <td><?php echo $rg->alamat ?></td>

          <td><?php echo anchor('Admin/Data_ruang/edit/' . $rg->id_ruang, '<div class="btn btn-success btn-sm"></i><i class="fa fa-edit"></i></div>') ?></td>
        </tr>

      <?php endforeach; ?>
    </tbody>
  </table>
</div>

<script>
  $(document).ready(function() {
    $('#data_ruang').DataTable();
  });
</script>