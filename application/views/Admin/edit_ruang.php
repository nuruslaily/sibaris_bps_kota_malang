<div class="container-fluid">
    <h3>Edit Data Ruang</h3>

    <?php foreach($ruang as $rg) : ?>
        <form method="post" action="<?= base_url()?>Admin/Data_ruang/update">

        <div class="form-group">
        <input type="hidden" name="id_ruang" class="form-control" value="<?php echo $rg->id_ruang ?>">
            <label>Kode Ruang</label>
            <input type="text" name="kode_ruang" class="form-control" value="<?php echo $rg->kode_ruang?>"disabled>
            <small class="form-text text-muted">Kode ruang tidak bisa diubah !</small>
        </div>

        <div class="form-group">
            <label>Uraian Ruang</label>
            <input type="text" name="uraian_ruang" class="form-control" value="<?php echo $rg->uraian_ruang?>"disabled>
            <small class="form-text text-muted">Uraian ruang tidak bisa diubah !</small>
        </div>

        <div class="form-group">
            <label>Lantai Ruang</label>
            <input type="text" name="lantai" class="form-control" value="<?php echo $rg->lantai?>">
            
        </div>

        
        <div class="form-group">
            <label>Penanggung Jawab Ruang</label>
            <input type="text" name="pj_ruang" class="form-control" value="<?php echo $rg->pj_ruang?>">
        </div>

        <div class="form-group">
            <label>NIP Penanggung Jawab</label>
            <input type="text" name="nip" class="form-control" value="<?php echo $rg->nip?>">
        </div>

        <div class="form-group">
            <label>No Telepon/Whatsapp Penanggung Jawab Ruang</label>
            <input type="text" name="no_tlp" class="form-control" value="<?php echo $rg->no_tlp?>">
        </div>

        <div class="form-group">
            <label>Alamat Penanggung Jawab Ruang</label>
            <input type="text" name="alamat" class="form-control" value="<?php echo $rg->alamat?>">
        </div>
        
        <a href="<?= base_url() ?>Admin/Data_ruang" class="btn btn-danger btn-sm">Batalkan</a>
        <button type="submit" class="btn btn-primary btn-sm">Simpan</button>
        </form>
    <?php endforeach; ?> 
</div>