<?php echo $header; ?> <?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-module" data-toggle="tooltip" title="<?php echo $button_save; ?> " class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?> " data-toggle="tooltip" title="<?php echo $button_cancel; ?> " class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?> </h1>
      <ul class="breadcrumb">
        <?php foreach($breadcrumbs as $breadcrumb){?>
        <li><a href="<?php echo $breadcrumb['href']; ?> "><?php echo $breadcrumb['text']; ?> </a></li>
      <?php }?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if($error_warning){?>
    <div class="alert alert-danger alert-dismissible"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
  <?php }?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?> </h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?> " method="post" enctype="multipart/form-data" id="form-module" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_featured; ?> </label>
            <div class="col-sm-10">
              <select name="quantityincrementdecrement_featured_status" id="input-status" class="form-control">
                <?php if($quantityincrementdecrement_featured_status){?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?> </option>
                <option value="0"><?php echo $text_disabled; ?> </option>
              <?php } else {?>
                <option value="1"><?php echo $text_enabled; ?> </option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?> </option>
                <?php } ?>
              </select>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_bestseller; ?> </label>
            <div class="col-sm-10">
              <select name="quantityincrementdecrement_bestseller_status" id="input-status" class="form-control">
                <?php if($quantityincrementdecrement_bestseller_status){?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?> </option>
                <option value="0"><?php echo $text_disabled; ?> </option>
              <?php } else {?>
                <option value="1"><?php echo $text_enabled; ?> </option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?> </option>
                <?php } ?>
              </select>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_latest; ?> </label>
            <div class="col-sm-10">
              <select name="quantityincrementdecrement_latest_status" id="input-status" class="form-control">
                <?php if($quantityincrementdecrement_latest_status){?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?> </option>
                <option value="0"><?php echo $text_disabled; ?> </option>
              <?php } else {?>
                <option value="1"><?php echo $text_enabled; ?> </option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?> </option>
                <?php } ?>
              </select>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_special; ?> </label>
            <div class="col-sm-10">
              <select name="quantityincrementdecrement_special_status" id="input-status" class="form-control">
                <?php if($quantityincrementdecrement_special_status){?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?> </option>
                <option value="0"><?php echo $text_disabled; ?> </option>
              <?php } else {?>
                <option value="1"><?php echo $text_enabled; ?> </option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?> </option>
                <?php } ?>
              </select>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_category; ?> </label>
            <div class="col-sm-10">
              <select name="quantityincrementdecrement_category_status" id="input-status" class="form-control">
                <?php if($quantityincrementdecrement_category_status){?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?> </option>
                <option value="0"><?php echo $text_disabled; ?> </option>
              <?php } else {?>
                <option value="1"><?php echo $text_enabled; ?> </option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?> </option>
                <?php } ?>
              </select>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_manufactures; ?> </label>
            <div class="col-sm-10">
              <select name="quantityincrementdecrement_manufactures_status" id="input-status" class="form-control">
                <?php if($quantityincrementdecrement_manufactures_status){?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?> </option>
                <option value="0"><?php echo $text_disabled; ?> </option>
              <?php } else {?>
                <option value="1"><?php echo $text_enabled; ?> </option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?> </option>
                <?php } ?>
              </select>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_product; ?> </label>
            <div class="col-sm-10">
              <select name="quantityincrementdecrement_product_status" id="input-status" class="form-control">
                <?php if($quantityincrementdecrement_product_status){?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?> </option>
                <option value="0"><?php echo $text_disabled; ?> </option>
              <?php } else {?>
                <option value="1"><?php echo $text_enabled; ?> </option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?> </option>
                <?php } ?>
              </select>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_related; ?> </label>
            <div class="col-sm-10">
              <select name="quantityincrementdecrement_related_status" id="input-status" class="form-control">
                <?php if($quantityincrementdecrement_related_status){?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?> </option>
                <option value="0"><?php echo $text_disabled; ?> </option>
              <?php } else {?>
                <option value="1"><?php echo $text_enabled; ?> </option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?> </option>
                <?php } ?>
              </select>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_search; ?> </label>
            <div class="col-sm-10">
              <select name="quantityincrementdecrement_search_status" id="input-status" class="form-control">
                <?php if($quantityincrementdecrement_search_status){?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?> </option>
                <option value="0"><?php echo $text_disabled; ?> </option>
              <?php } else {?>
                <option value="1"><?php echo $text_enabled; ?> </option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?> </option>
                <?php } ?>
              </select>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?> </label>
            <div class="col-sm-10">
              <select name="quantityincrementdecrement_status" id="input-status" class="form-control">
                <?php if($quantityincrementdecrement_status){?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?> </option>
                <option value="0"><?php echo $text_disabled; ?> </option>
              <?php } else {?>
                <option value="1"><?php echo $text_enabled; ?> </option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?> </option>
                <?php } ?>
              </select>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
  </div>
<?php echo $footer ?>
