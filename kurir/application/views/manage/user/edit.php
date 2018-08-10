<div class="container-fluid">
    <div class="row">
        <?php if ($this->session->flashdata('msg')) { ?>
            <div class="alert <?php echo $this->session->flashdata('alert') ?>  alert-dismissible" style="margin-bottom: 0; margin-top: 20px" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <strong><?php echo $this->session->flashdata('msg') ?></strong>
            </div>
        <?php } ?>
        <div class="col-lg-12">
            <h2 class="page-header"><i class="fa fa-fw fa-edit"></i>Edit Kurir
            </h2>
        </div><br>
        <div class="col-sm-12">
            <?php echo form_open('manage/kurir/edit/' . $id_item, 'class="form-horizontal" style="margin-bottom:50px;"'); ?>

            <div class="form-group">
                <label class="col-sm-2 text-align-left">ID Kurir</label>
                <div class="col-sm-4">: 
                    <?php echo $item['id'] ?>
                </div>
            </div>
             <div class="form-group">
                <label class="col-sm-2 text-align-left">Nama </label>
                <div class="col-sm-4">: 
                    <?php echo $item['nama'] ?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 text-align-left">Email</label>
                <div class="col-sm-4">: 
                    <?php echo $item['email'] ?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 text-align-left">Telp</label>
                <div class="col-sm-4">: 
                    <?php echo $item['telp'] ?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 text-align-left">Alamat</label>
                <div class="col-sm-4">: 
                    <?php echo $item['alamat'] ?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label text-align-left">Status</label>
                <div class="col-sm-4">
                    <select class="form-control" name="status">
                    <option value="1" <?php echo ($item['aktif'] == 1) ? 'selected' : '' ?>>aktif</option>
                              <option value="2" <?php echo ($item['aktif'] == 2) ? 'selected' : '' ?>>non-aktif</option>

                    </select>
                </div>
            </div>
           
            <input type="hidden" name="act" value="u"/>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-4"><br>
                    <button type="submit" class="btn btn-primary">Simpan</button>
                    <a href="<?php echo site_url('manage/kurir/index')?>" class="btn btn-default">Kembali</a>
                </div>
            </div>

            <?php echo form_close(); ?>
        </div>
    </div>
</div>
</div>