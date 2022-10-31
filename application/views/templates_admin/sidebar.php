<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="Dashboard_admin">
        <div class="sidebar-brand-icon">
        <i class="fas fa-user"></i>
        </div>
        <div class="sidebar-brand-text mx-3">ADMIN</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="<?php echo base_url('Admin/Dashboard_admin') ?>">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Beranda</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">



      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url('Admin/Data_barang') ?>">
          <i class="fas fa-fw fa-database"></i>
          <span>Data Barang </span></a>
      </li>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url('Admin/Data_ruang') ?>">
          <i class="fas fa-fw fa-file-invoice"></i>
          <span>Data Ruang</span></a>
      </li>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url('Admin/Data_kendaraan') ?>">
        <i class="fas fa-fw fa-blog"></i>
          <span>Data Kendaraan</span></a>
      </li>


      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Navbar -->
          
          <ul class="navbar-nav ml-auto">
            <div class="topbar-divider d-none d-sm-block"></div>

            <ul class="na navbar-nav navbar-right">
              <?php if($this->session->userdata('username')) { ?>
              
              <li><div  class="btn btn-danger btn-sm" data-toggle="modal" data-target="#logoutModal">Keluar</div></li>
              <?php } else {?>
              <li><?php echo anchor('Auth/login','Login'); ?></li>
              <?php } ?>
            </ul>
          </ul>
          
          
        
        
        </nav>
             <!-- End of Topbar -->


<!-- konfirmasi logout -->

<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Konfirmasi Keluar Akun</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          Apakah anda yakin ingin keluar dari halaman Admin?
        </div>
        <div class="modal-footer">
          <form action="<?php echo base_url() . 'Auth/logout' ?>" method="post">
            <input type="hidden" name="id" id="id">
            <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">Batal</button>
            <button type="submit" class="btn btn-danger" id="keluarAja">Keluar</button>
          </form>
        </div>
      </div>
    </div>
  </div>

<script>
  $(document).ready(function() {

    $('.logoutData').click(function() {
      var ID = $(this).data('id');
      console.log(ID);
      $('#keluarAja').data('id', ID);
      $('#id').val(ID);
    });
  });
</script> 