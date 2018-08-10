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
            <p>(*) Jika kurir tidak menyertakan nota bercap maka pembelian anda gratis</p>
            <div class="form-group">
                <label class="col-sm-2 text-align-left">ID Order</label>
                <div class="col-sm-4">: 
                    <?php echo $item['id'] ?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 text-align-left">Jenis Order</label>
                <div class="col-sm-4">: 
                    <?php echo (!empty($item['premium'])) ? 'Premium' : 'Paket hemat'?>
                </div>
            </div>
             <div class="form-group">
                <label class="col-sm-2 text-align-left">ID User </label>
                <div class="col-sm-4">: 
                    <?php echo $item['user_id'] ?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 text-align-left">Nama User </label>
                <div class="col-sm-4">: 
                    <?php echo $item['nama'] ?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 text-align-left">Lokasi Penjemputan </label>
                <div class="col-sm-4">: 
                    <?php 
                    $loc = json_decode($item['penjemputan_lokasi'], true);
                    echo $loc['nama'].'<br>&nbspAlamat : '. $loc['alamat'];
                    echo '<br>&nbsp;Latitude : '.$loc['lat'];
                    echo '<br>&nbsp;Longitude : '.$loc['long'];
                    ?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 text-align-left">No. Telp User </label>
                <div class="col-sm-4">: 
                    <?php echo $item['telp'] ?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 text-align-left">Tanggal Order</label>
                <div class="col-sm-4">: 
                    <?php echo $item['tanggal_order'] ?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 text-align-left">Penjemputan Note</label>
                <div class="col-sm-4">: 
                    <?php echo $item['penjemputan_note'] ?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 text-align-left">Penjemputan Tanggal</label>
                <div class="col-sm-4">: 
                    <?php echo $item['penjemputan_tanggal'] ?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 text-align-left">Penjemputan Waktu</label>
                <div class="col-sm-4">: 
                    <?php echo $item['penjemputan_waktu'] ?>
                </div>
            </div>
            <?php if(empty($item['premium'])){?>
            <div class="form-group">
                <label class="col-sm-2 text-align-left">Pengerjaan Jenis</label>
                <div class="col-sm-4">: 
                    <?php 
                    if($item['pengerjaan_jenis'] == 1){
                        echo 'Cuci';
                    } elseif($item['pengerjaan_jenis'] == 2){
                        echo 'Setrika';
                    } else{
                        echo 'Cuci dan Setrika';
                    }
                    
                    ?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 text-align-left">Pengerjaan Jam</label>
                <div class="col-sm-4">: 
                   <?php 
                    if($item['pengerjaan_jam'] == 1440){
                        echo '1x 24 jam';
                    } elseif($item['pengerjaan_jam'] == 2880){
                        echo '2x24 Jam';
                    } else{
                        echo '3x24 Jam';
                    }
                    
                    ?>
                </div>
            </div>
             <div class="form-group">
                <label class="col-sm-2 text-align-left">Pengerjaan Harga</label>
                <div class="col-sm-4"> :
                    <?php echo 'Rp. '.$item['pengerjaan_harga'] ?>
                </div>
            </div>
             <div class="form-group">
                <label class="col-sm-2 text-align-left">Paket hemat</label>
                <div class="col-sm-4">: 
                    <?php echo $item['paket_hemat'] ?> gram
                </div>
            </div>
            <?php } else {?>
             <div class="form-group">
                <label class="col-sm-2 text-align-left">Premium</label>
                <div class="col-sm-4">
                    <?php 
                    if(!empty($item['premium'])){?>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th class="">No</th>
                                    <th class="text-center">Nama</th>
                                    <th class="text-center">Harga(Rp)</th>
                                    <th class="text-center">Qty</th>
                                </tr>
                            </thead>
                            <tbody>
                    <?php
                    $premium_data = json_decode($item['premium'], true); 
                    $no = 1;
                    foreach($premium_data['order'] as $i){
                         if($i['qty'] > 0){?>
                             <tr>
                                 <td><?php echo $no?></td>
                                 <td><?php echo $i['nama']?></td>
                                 <td class="text-right"><?php echo $i['harga']?></td>
                                 <td class="text-center"><?php echo $i['qty']?></td>
                             </tr>
                         <?php $no++; }
                    } ?>
                    </tbody>
                    </table>
                    <strong>Total : </strong><?php echo 'Rp. '.$premium_data['total']?>
                    </div>
                    <?php
                    }
                    ?>
                </div>
            </div>
            <?php }?>
             <div class="form-group">
                <label class="col-sm-2 text-align-left">Pembayaran</label>
                <div class="col-sm-4">: 
                    <?php echo ($item['pembayaran'] == null || $item['pembayaran'] == 0 || $item['pembayaran'] = '')?'belum ada pembayaran': 'sudah ada pembayaran' ?>
                </div>
            </div>
             <div class="form-group">
                <label class="col-sm-2 text-align-left">Status</label>
                <div class="col-sm-4">: 
                    <?php 
                    if($item['status'] == 1){
                        echo 'Menunggu penjemputan';
                    } else if($item['status'] == 2){
                        echo 'Sudah dijemput';
                    } else if($item['status'] == 3){
                        echo 'Diproses';
                    } else if($item['status'] == 4){
                        echo 'Pengantaran<br>&nbsp;ubah ke ';
                        echo '<button class="btn btn-success btn-sm" type="button" data-toggle="modal" data-target="#status-modal" data-backdrop="static" data-keyboard="false">Diterima</button> (jika sudah diterima)';
                    } else if($item['status'] == 5){
                        echo 'Diterima';
                    }
                    ?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 text-align-left">Komisi Kurir(20% pengerjaan harga)</label>
                <div class="col-sm-4">: 
                    <?php echo 'Rp. '. 0.2*$item['pengerjaan_harga']; ?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label text-align-left">kurir</label>
                <div class="col-sm-4">
                    <select class="form-control" name="kurir">
                        <option value="">Pilih kurir...</option>
                        <?php
                        if (!empty($kurir)) {
                            foreach ($kurir as $i) {
                                ?>
                                <option value="<?php echo $i['id'] ?>" <?php echo ($item['kurir_id'] == $i['id']) ? 'selected' : '' ?>><?php echo $i['id'].' - '. $i['nama'] ?></option>
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
<div id="status-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content modal-confirm">
            <div class="modal-body text-center text-semi-bold">
                <p><i class="fa fa-info-circle text-warning fa-2x"></i></p>
                <p>Ubah status menjadi <strong>DIterima</strong>. Lanjutkan ?</p>
                <div class="text-center">
                    <a href="<?php echo site_url('manage/order/edit_diterima/' . $item['id']) ?>" class="btn btn-primary btn-sm">Ya</a>
                    <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Tidak</button>           
                </div>
            </div>
        </div>
    </div>
</div>