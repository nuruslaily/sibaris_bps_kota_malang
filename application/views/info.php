<div class="container-fluid">
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="<?php echo base_url('assets/img/INFORUANGAN.png') ?>" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="<?php echo base_url('assets/img/bpsmlg.jpg') ?>" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="<?php echo base_url('assets/img/fotobersama.jpg') ?>" class="d-block w-100" alt="...">
      </div>

    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  <a href="<?= base_url('Ruangan/export') ?>" class="btn btn-sm btn-secondary mb-3 mt-3" target="_blank"><i class="fas fa-print fa-sm"></i>Cetak</a>
  <table id="table_info" class="table table-bordered">
  <thead>
    <tr>
      <td>No</td>
      <th>Kode Ruang</th>
      <th>Uraian Ruang</th>
      <th>Lantai Ruang</th>
      <th>Penanggung Jawab Ruang</th>
      <th>No Telepon/Whatsapp</th>
      <th>Alamat</th>
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
        <td><?php echo $rg->no_tlp ?></td>
        <td><?php echo $rg->alamat ?></td>

      </tr>

    <?php endforeach; ?>
    </tbody>
  </table>
</div>

<script>
  $(document).ready(function() {
    $('#table_info').DataTable();
  });
</script>