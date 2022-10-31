<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="Dashboard_akhir">
            <div class="sidebar-brand-icon">
                <i class="fas fa-database"></i>
            </div>
            <div class="sidebar-brand-text mx-3">SIBARIS BPS KOTA MALANG</div>
        </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">

        <a class="nav-link" href="<?php echo base_url('Dashboard_akhir') ?>">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Beranda</span></a>

      </li>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Data Barang Milik Negara
      </div>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                aria-expanded="true" aria-controls="collapseTwo">
                <i class="fas fa-box-open"></i>
                <span>Data Barang</span>
            </a>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Daftar Ruangan</h6>
                    <a class="collapse-item" href="<?php echo base_url('Ruangan/Lobby')?>">Ruang Lobby</a>
                    <a class="collapse-item" href="<?php echo base_url('Ruangan/Perpustakaan')?>">Ruang Perpustakaan</a>
                    <a class="collapse-item" href="<?php echo base_url('Ruangan/Ipds')?>">Ruang IPDS</a>
                    <a class="collapse-item" href="<?php echo base_url('Ruangan/Tu')?>">Ruang TU</a>
                    <a class="collapse-item" href="<?php echo base_url('Ruangan/Tehnis')?>">Ruang Tehnis</a>
                    <a class="collapse-item" href="<?php echo base_url('Ruangan/Kepala')?>">Ruang Kepala</a>
                    <a class="collapse-item" href="<?php echo base_url('Ruangan/Rapat')?>">Ruang Rapat</a>
                    <a class="collapse-item" href="<?php echo base_url('Ruangan/Ksk')?>">Ruang KSK</a>
                    <a class="collapse-item" href="<?php echo base_url('Ruangan/Gudang')?>">Ruang Gudang</a>
                    <a class="collapse-item" href="<?php echo base_url('Ruangan/Gardu')?>">Ruang Gardu Genset</a>
                    <a class="collapse-item" href="<?php echo base_url('Ruangan/Halaman')?>">Halaman</a>
                </div>
            </div>
        </li>

      


      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url('Kendaraan')?>">
        <i class="fas fa-car"></i>
          <span>Data Kendaraan</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">
       <!-- Heading -->
       <div class="sidebar-heading">
        Data Ruangan 
      </div>


      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url('Ruangan/Info')?>">
        <i class="far fa-building"></i>
          <span>Info Ruangan</span></a>
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

            <div class="navbar">
            <div class="topbar-divider d-none d-sm-block"></div>

            <ul class="na navbar-nav navbar-right">
              <?php if($this->session->userdata('username')) { ?>
              
              <li class="ml-2"><?php echo anchor('Auth/logout','Keluar'); ?></li>
              <?php } else {?>
              <li> <?php echo anchor('Auth/login','Masuk'); ?></li>
              <?php } ?>
            </ul>
            </div>

            <div class="navbar">
              <ul class="nav navbar-nav navbar-right">
                <li>

                </li>
              </ul>
            </div>
          </ul>

        </nav>
             <!-- End of Topbar -->