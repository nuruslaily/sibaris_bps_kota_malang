<div class="container-fluid">
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="<?php echo base_url('assets/img/RUANGPERPUSTAKAAN.png') ?>" class="d-block w-100" alt="...">
    </div>
  </div>
</div>
<a href="<?php echo base_url();?>Dashboard_akhir/export/<?php echo '2';?>" class="btn btn-sm btn-secondary mb-3 mt-3" target="_blank"><i class="fas fa-print fa-sm"></i>Cetak</a>
    <table id="data_perpustakaan" class="table table-bordered">
    <thead>
    <tr>
      <td>No</td>
      <th>Kode Barang</th>
      <th>Nama Barang</th>
      <th>Merk / Type</th>
      <th>Tahun Peroleh</th>
      <th>Jumlah</th>
      <th>Penguasaan</th>
      <th>Keterangan</th>
    </tr>
    </thead>
    <tbody>

    <?php
    $no = 1;
    foreach ($barang as $brg) : ?>
      <tr>
        <td><?php echo $no++ ?></td>
        <td><?php echo $brg->kode_barang ?></td>
        <td><?php echo $brg->nama_barang ?></td>
        <td><?php echo $brg->merk ?></td>
        <td><?php echo $brg->tahun_peroleh ?></td>
        <td><?php echo $brg->jumlah ?> <?php echo $brg->satuan ?></td>
        <td><?php echo $brg->penguasaan ?></td>
        <td><?php echo $brg->keterangan ?></td>
      </tr>

    <?php endforeach; ?>
    </tbody>
  </table>
</div>
</div>
<script>
    $(document).ready(function() {
      $('#data_perpustakaan').DataTable();
    });
  </script>

