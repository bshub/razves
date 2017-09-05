<?php echo $header; ?>

<div class="container-fluid">
    <div class="row">
        <img src="/image/catalog/home.jpg" class="kl-home-banner">
    </div>
</div>



<div class="container-fluid">
    <div class="row">
        <nav id="menu" class="navbar">
            <div class="navbar-header"><span id="category" class="visible-xs"></span>
                <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
            </div>
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav kl-menu-ul">
                    <?php foreach ($categories as $category) { ?>
                    <?php if ($category['children']) { ?>
                    <li class="dropdown">
                        <a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="<?php echo $category['thumb']?>"><br/>
                            <p><?php echo $category['name']; ?></p>
                        </a>
                        <div class="dropdown-menu">
                            <div class="dropdown-inner">
                                <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                <ul class="list-unstyled">
                                    <?php foreach ($children as $child) { ?>
                                    <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                                    <?php } ?>
                                </ul>
                                <?php } ?>
                            </div>
                            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
                    </li>
                    <?php } else { ?>
                    <li>
                        <a href="<?php echo $category['href']; ?>">
                            <img src="<?php echo $category['thumb']?>"><br/>
                            <?php echo $category['name']; ?>
                        </a>
                    </li>
                    <?php } ?>
                    <?php } ?>
                </ul>
            </div>
        </nav>
    </div>
</div>


<div class="container">
  <div class="row">

    <div id="content" class="<?php echo $class; ?>">
    	<?php echo $content_top; ?>
    </div>
    	
  </div>
  <div class="row home-bottom">
    	<div class="col-sm-9">
    		<?php echo $content_bottom; ?>
    	</div>
    	<div class="col-sm-3 home-column-right">
    		<?php echo $column_right; ?>
    	</div>
    </div>
</div>
<?php echo $footer; ?>