<div class="container-fluid">
    <div class="row">
        <?php if ($this->session->flashdata('msg')) { ?>
            <div class="alert <?php echo $this->session->flashdata('alert') ?>  alert-dismissible" style="margin-bottom: 0; margin-top: 20px" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <strong><?php echo $this->session->flashdata('msg') ?></strong>
            </div>
        <?php } ?>
        <?php if (validation_errors()) { ?>
            <div class="alert alert-danger alert-dismissible" style="margin-bottom: 0; margin-top: 20px" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <strong><?php echo validation_errors() ?></strong>
            </div>
        <?php } ?>
        <div class="col-lg-12">
            <h2 class="page-header"><i class="fa fa-fw fa-key"></i>Ubah Password
            </h2>
        </div><br>
        <div class="col-sm-12">
            <?php echo form_open('manage/admin/ubah_password/', 'class="form-horizontal" style="margin-bottom:50px;"'); ?>

            <div class="form-group">
                <label class="col-sm-2 control-label text-align-left">Password lama</label>
                <div class="col-sm-4">
                    <input type="password" class="form-control" name="old_password">
                </div>
            </div><br>
            <div class="form-group">
                <label class="col-sm-2 control-label text-align-left">Password baru</label>
                <div class="col-sm-4">
                    <input type="password" class="form-control" name="password">
                </div>
            </div>
             <div class="form-group">
                <label class="col-sm-2 control-label text-align-left">Konfirmasi password</label>
                <div class="col-sm-4">
                    <input type="password" class="form-control" name="password_conf">
                </div>
            </div>
            <input type="hidden" name="act" value="u"/>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-4"><br>
                    <button type="submit" class="btn btn-primary">Ubah</button>
                </div>
            </div>

            <?php echo form_close(); ?>
        </div>
    </div>
</div>
</div>