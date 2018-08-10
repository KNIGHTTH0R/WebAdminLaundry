<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="robots" content="noindex, follow">
        <link rel="icon" href="">
        <title>Laundry-in | Admin</title>

        <link rel="shortcut icon" href="<?php echo base_url('media/image/template/favicon.jpeg')?>"/>
        <link href="<?php echo base_url() ?>assets/onepage/css/bootstrap.min.css" rel="stylesheet"> 
        <link href="<?php echo base_url() ?>assets/onepage/css/font-awesome.min.css" rel="stylesheet">
        <link href="<?php echo base_url() ?>assets/onepage/css/theme/admin.css" rel="stylesheet">
        <link href="<?php echo base_url() ?>assets/onepage/css/theme/metisMenu.css" rel="stylesheet"> 
        <link href="<?php echo base_url() ?>assets/onepage/css/theme/style.css" rel="stylesheet">
        <link href="<?php echo base_url() ?>assets/datatables/css/dataTables.bootstrap.min.css" rel="stylesheet">
    </head>
    <!--main content-->
    <body class="fixed-sidebar fixed-nav">
        <div id="wrapper">
            <!-- Navigation -->
            <nav class="navbar-default navbar-static-top" role="navigation">
                <div class="navbar-header navbar-fixed-top">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#admin-navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Laundry-in (Kurir)</a>
                    <div class="navbar-fa-right">
                        <ul class="nav navbar-top-links navbar-right">
                            <!-- /.dropdown -->
                        </ul>
                        <!-- /.navbar-top-links -->
                    </div>
                </div>

                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-static-side sidebar">
                    <div id="slimscroll">
                        <div class="collapse navbar-collapse" id="admin-navbar-collapse" aria-expanded="false" style="max-height: 375px;">
                            <ul class="nav in" id="side-menu">
                                <li>
                                    <a <?php if ($this->uri->segment(2) == 'user') { ?>
                                            class="active"<?php } ?>
                                        href="<?php echo site_url('manage/user') ?>"><i class="fa fa-user fa-fw"></i> <span class="nav-label">User</span></a>
                                </li>
                                <li>
                                    <a <?php if ($this->uri->segment(2) == 'order') { ?>
                                            class="active"<?php } ?>
                                        href="<?php echo site_url('manage/order') ?>"><i class="fa fa-list-alt fa-fw"></i> <span class="nav-label">Order</span></a>
                                </li>
                                 <li>
                                    <a <?php if ($this->uri->segment(2) == 'kurir') { ?>
                                            class="active"<?php } ?>
                                        href="<?php echo site_url('manage/kurir') ?>"><i class="fa fa-user fa-fw"></i> <span class="nav-label">Kurir</span></a>
                                </li>
                                <li>
                                    <a <?php if ($this->uri->segment(3) == 'ubah_password') { ?>
                                            class="active"<?php } ?>
                                        href="<?php echo site_url('manage/admin/ubah_password') ?>"><i class="fa fa-key fa-fw"></i> <span class="nav-label">Ubah Password</span></a>
                                </li>
                                <li>
                                    <a <?php if ($this->uri->segment(2) == 'logout') { ?>
                                            class="active"<?php } ?>
                                        href="<?php echo site_url('auth/logout') ?>"><i class="fa fa-sign-out fa-fw"></i> <span class="nav-label">Logout</span></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
            <div id="page-wrapper">
                <?php
                if ($this->uri->segment(1) != 'auth') {
                    $this->load->view($child_template);
                } else {
                    echo $child_template;
                }
                ?>
                
            </div>

            <!-- /#wrapper -->
            <!--end of footer-->
            <script type="text/javascript" src="<?php echo base_url() ?>assets/onepage/js/jquery-3.2.1.min.js"></script>
            <script type="text/javascript" src="<?php echo base_url() ?>assets/onepage/js/bootstrap.min.js"></script>
            <script type="text/javascript" src="<?php echo base_url() ?>assets/onepage/js/jquery.slimscroll.min.js"></script>
            <script type="text/javascript" src="<?php echo base_url() ?>assets/onepage/js/theme/metisMenu.min.js"></script>
            <script type="text/javascript" src="<?php echo base_url() ?>assets/datatables/js/jquery.dataTables.min.js"></script>
            <script type="text/javascript" src="<?php echo base_url() ?>assets/datatables/js/dataTables.bootstrap.min.js"></script>
            <script type="text/javascript" src="<?php echo base_url() ?>assets/onepage/js/theme/admin.js"></script>
            <script>

            </script>

    </body><!--end of main content-->
</html>
