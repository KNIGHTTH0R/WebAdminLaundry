<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
    <link rel="shortcut icon" href="<?php echo base_url('media/image/template/favicon.jpeg')?>"/>
	<link href="<?php echo base_url() ?>assets/onepage/css/bootstrap.min.css" rel="stylesheet"> 
</head>
<body>
    <div class="row">
        <div class="col-sm-4 col-sm-offset-4">
<?php echo form_open('auth/login','class="form-horizontal" style="margin-top:20%"')?>
<p class="text-center"><?php echo $this->session->flashdata('message')?></p>
<div class="form-group">
    <label class="control-label col-sm-2">Email</label>
    <div class="col-sm-10"><input class="form-control" type="text" name="email"></div>
    </div>
    <div class="form-group">
     <label class="control-label col-sm-2">Password</label>
     <div class="col-sm-10"><input class="form-control" type="password" name="password"></div>
     </div>
     <div class="col-sm-offset-2 col-sm-10">
    <button class="btn btn-primary" type="submit">Login</button>
    </div>
<?php echo form_close()?>
</div>
</div>
</body>
</html>