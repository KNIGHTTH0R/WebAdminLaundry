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
            <h2 class="page-header"><i class="fa fa-fw fa-edit"></i>Edit Order
            </h2>
        </div><br>
        <div class="col-sm-12">
            <?php echo form_open('manage/order/edit/' . $id_item, 'class="form-horizontal" style="margin-bottom:50px;"'); ?>

            <div class="form-group">
                <label class="col-sm-2 control-label text-align-left">id:</label>
                <div class="col-sm-4">
                    <?php echo $item['id'] ?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label text-align-left">tgl order:</label>
                <div class="col-sm-4">
                    <?php echo $item['tanggal_order'] ?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label text-align-left">kurir:</label>
                <div class="col-sm-4">
                    <select class="form-control" name="kurir">
                        <option value="">Pilih kurir...</option>
                        <?php
                        if (!empty($kurir)) {
                            foreach ($kurir as $i) {
                                ?>
                        <option value="<?php echo $i['id'] ?>" <?php echo (set_value('kurir') == $i['id']) ? 'selected' : '' ?>><?php echo $i['nama'] ?></option>
                                <?php
                            }
                        }
                        ?>
                    </select>
                </div>
            </div>
            <input type="hidden" name="act" value="u"/>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-4"><br>
                    <button type="submit" class="btn btn-primary">Simpan</button>
                    <a href="<?php echo site_url('manage/order/index')?>" class="btn btn-default">Kembali</a>
                </div>
            </div>

            <?php echo form_close(); ?>
        </div>
    </div>
</div>
</div>