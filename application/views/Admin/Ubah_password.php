<div class="container" style="padding: 0px; margin: 0 px auto; margin-left: 0px; margin-right: auto;margin-top:50px;">
  <div class="row">
    <div class="col-md-6" style="margin: 0 auto;background-color: whitesmoke;box-shadow: 10px 10px 5px grey;">
      <br>
            <p class="h4" style="text-align: center">Ubah Password</p>
            <div class="card-body">
                <style>
                    label {
                        margin-top: 10px;
                    }
                </style>
                <?php
                if (!empty(validation_errors())) {
                ?>
                    <div class="alert alert-danger" role="alert">
                        <?= validation_errors() ?>
                    </div>
                <?php
                }
                ?>
                <form method="POST" enctype="multipart/form-data" action="<?= base_url() ?>Admin/Dashboard_admin/changePassword">
                    <div class="form-group">
                        <label>Password Baru</label>
                        <input type="password" id="password" name="password" class="form-control">
                        <input type="checkbox" onclick="passwordShowUnshow()">  Tampilkan/Sembunyikan Password
                        <br>
                        <label>Konfirmasi Password</label>
                        <input type="password" id="passwordConf" name="passwordConf" class="form-control">
                        <br>
                    </div>
                    <a href="<?= base_url(); ?>Admin/Dashboard_admin" class="btn btn-primary">Kembali</a>
                    <button type="submit" class="btn btn-warning" name="submit">Ubah Password</button><br>
                </form>
            </div>
        </div>
    </div>
  </div>
</div>

<script type="text/javascript">
  $('#btn-submit').on('click', function(e) {
    e.preventDefault();
    var form = $(this).parents('form');
    swal({
      title: "Are you sure?",
      text: "The password will changed!",
      type: "warning",
      showCancelButton: true,
      confirmButtonColor: "#DD6B55",
      confirmButtonText: "Yes, change password!",
      closeOnConfirm: false
    }, function(isConfirm) {
      if (isConfirm) form.submit();
    });
  });
</script>
<script>
  function passwordShowUnshow() {
    var x = document.getElementById("password");
    if (x.type === "password") {
      x.type = "text";
    } else {
      x.type = "password";
    }
  }

  function confirmPassword() {
    var ID = $(this).data('id');
    console.log(ID);
    $('#ya').data('id', ID);
    $('#id').val(ID);
    $('#confPassModal').modal();
  }
</script>