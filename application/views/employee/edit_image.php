<?php
defined('BASEPATH') OR exit('No direct script access allowed');
if($this->input->post()){
   $nombre       = set_value('nombre');
   $division     = set_value('division');
   $unidad       = set_value('unidad');
   $email        = set_value('email');
   $fono         = set_value('fono');
} else {
  $nombre       = $image->nombre;
  $division     = $image->division;
  $unidad       = $image->unidad;
  $email        = $image->email;
  $fono         = $image->fono;
}
?><!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="utf-8">
   <title>Actualizar datos</title>

   <link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
   <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
   <style type="text/css">

   ::selection { background-color: #E13300; color: white; }
   ::-moz-selection { background-color: #E13300; color: white; }

   body {
      background-color: #fff;
      margin: 40px;
      font: 16px/24px normal 'Oxygen', sans-serif;
      color: #4F5155;
   }

   a {
      color: #003399;
      background-color: transparent;
      font-weight: normal;
   }

   h1 {
      color: #444;
      background-color: transparent;
      border-bottom: 1px solid #D0D0D0;
      font-size: 19px;
      font-weight: normal;
      margin: 0 0 14px 0;
      padding: 14px 15px 10px 15px;
   }

   code {
      font-family: Consolas, Monaco, Courier New, Courier, monospace;
      font-size: 12px;
      background-color: #f9f9f9;
      border: 1px solid #D0D0D0;
      color: #002166;
      display: block;
      margin: 14px 0 14px 0;
      padding: 12px 10px 12px 10px;
   }

   #body {
      margin: 0 15px 0 15px;
   }

   p.footer {
      text-align: right;
      font-size: 11px;
      border-top: 1px solid #D0D0D0;
      line-height: 32px;
      padding: 0 10px 0 10px;
      margin: 20px 0 0 0;
   }

   #container {
      margin: 10px;
      border: 1px solid #D0D0D0;
      box-shadow: 0 0 8px #D0D0D0;
   }
   </style>
</head>
<body>

<div id="container">
   <h1>Actualizar datos funcionarios</h1>

   <div id="body">
      <?php if(validation_errors() || isset($error)) : ?>
         <div class="alert alert-danger" role="alert" align="center">
            <?=validation_errors()?>
            <?=(isset($error)?$error:'')?>
         </div>
      <?php endif; ?>
      <?=form_open_multipart('Employee/edit/'.$image->id)?>

      <div class="form-group">
        <label for="userfile">Imagen</label>
        <div class="row" style="margin-bottom:5px"><div class="col-xs-12 col-sm-6 col-md-3"><?=img(['src'=>$image->file,'width'=>'25%'])?></div></div>
        <input type="file" class="form-control" name="userfile">
      </div>

        <div class="form-group">
          <label for="nombre">Nombre</label>
          <input type="text" class="form-control" name="nombre" value="<?= $nombre ?>">
        </div>

        <div class="form-group">
          <label for="division">Division</label>
          <input type="text" class="form-control" name="division" value="<?= $division ?>">
        </div>

        <div class="form-group">
          <label for="unidad">Unidad</label>
          <input type="text" class="form-control" name="unidad" value="<?= $unidad ?>">
        </div>

        <div class="form-group">
          <label for="email">Correo Electronico</label>
          <input type="text" class="form-control" name="email" value="<?= $email ?>">
        </div>

        <div class="form-group">
          <label for="fono">Telefono</label>
          <input type="text" class="form-control" name="fono" value="<?= $fono ?>">
        </div>

        <button type="submit" class="btn btn-primary">Guardar cambios</button>
        <?=anchor('employee','Cancelar',['class'=>'btn btn-warning'])?>

      </form>
   </div>

   <p class="footer">Pagina renderizada en <strong>{elapsed_time}</strong> segundos. <?php echo  (ENVIRONMENT === 'development') ?  'CodeIgniter Version <strong>' . CI_VERSION . '</strong>' : '' ?></p>
</div>

</body>
</html>
