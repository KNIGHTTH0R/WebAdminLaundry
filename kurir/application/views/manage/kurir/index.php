<div class="container-fluid">
    <div class="row">
        <?php if ($this->session->flashdata('msg')) { ?>
            <div class="alert <?php echo $this->session->flashdata('alert') ?>  alert-dismissible" style="margin-bottom: 0; margin-top: 20px" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <strong><?php echo $this->session->flashdata('msg') ?></strong>
            </div>
        <?php } ?>
        <div class="col-lg-12">
            <h2 class="page-header"><i class="fa fa-fw fa-sticky-note-o"></i>Kurir
            </h2>
        </div><br>
    </div>
   
    <div class="col-lg-12">
        <?php if ($item) { ?>
            <div class="float-left">
                
            </div>
        <?php } ?>
    </div><br>
    <?php if ($item == FALSE) { ?>
        <br>
        <h4 class="text-center"><?php echo 'Data kurir kosong.';?></h4>
    <?php } else { ?>
        <div class="col-lg-12">
            <div class="row">
                <div class = "col-xs-12 col-sm-12">
                    <div class="table-responsive">
                        <table class="table table-hover" id="dtable">
                            <thead>
                                <tr>
                                    <th class="">No</th>
                                    <th class="text-center">ID kurir</th>
                                    <th class="text-center">Nama</th>
                                    <th class="text-center">Email</th>
                                    <th class="text-center">Telp</th>
                                    <th class="text-center">Alamat</th>
                                    <th class="text-center">Status</th>
                                    <th class="text-center no-sort"><i class="fa fa-cogs"></i></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $no = 1;
                                foreach ($item as $i) {
                                    ?>

                                    <tr>
                                        <td class=""><?php echo $no ?></td>
                                        <td class=""><?php echo $i['id'] ?></td>
                                        <td class="text-center"><?php echo $i['nama'] ?></td>
                                        <td class="text-center"><?php echo $i['email'] ?></td>
                                        <td class="text-center"><?php echo $i['telp'] ?></td>
                                        <td class=""><?php echo $i['alamat'] ?></td>
                                        <td class=""><?php echo ($i['aktif']==1)?'aktif':'non-aktif' ?></td>
                                        <td class="text-center">
                                            <a href="<?php echo site_url('manage/kurir/edit/' . $i['id']) ?>" class="btn btn-default btn-sm" title="Edit"><i class="fa fa-edit text-primary"></i></a>
                                            
                                        </td>
                                    </tr>
                                    <?php
                                    $no+=1;
                                }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    <?php }
    ?>
   
    <div class="clearfix"></div> 
</div>
<div id="delete-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content modal-confirm">
            <div class="modal-body text-center text-semi-bold">
                <p><i class="fa fa-info-circle text-warning fa-2x"></i></p>
                <p>Data ini akan dihapus. Lanjutkan ?</p>
                <div class="text-center">
                    <a href="" class="btn btn-primary btn-sm" id="btn-modal-delete">Ya</a>
                    <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Tidak</button>           
                </div>
            </div>
        </div>
    </div>
</div>