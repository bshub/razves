<h3 class="featured-heading"><?php echo  "Выделеные товары"?></h3>
<div class="row">
    <?php foreach ($products as $product) { ?>
    <div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <div class="product-thumb transition">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>"
                                                                              alt="<?php echo $product['name']; ?>"
                                                                              title="<?php echo $product['name']; ?>"
                                                                              class="img-responsive"/></a></div>


            <div class="kl-product-zapas">
                <span title="У нас достаточный запас данного товара">  </span>
            </div>


            <div class="caption">
                <h4 class="kl-product-name"><a
                            href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?> </a></h4>
                <p class="kl-product-thumb-description"><?php echo $product['description']; ?></p>
                <?php if ($product['rating']) { ?>
                <div class="rating">
                    <?php for ($i = 1; $i <= 5; $i++) { ?>
                    <?php if ($product['rating'] < $i) { ?>
                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                    <?php } else { ?>
                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                class="fa fa-star-o fa-stack-2x"></i></span>
                    <?php } ?>
                    <?php } ?>
                </div>
                <?php } ?>
                <?php if ($product['price']) { ?>
                <h2 class="price text-center kl-price-color">
                    <?php if (!$product['special']) { ?>
                    <?php echo $product['price']; ?>
                    <?php } else { ?>
                    <span class="price-new"><?php echo $product['special']; ?></span> <span
                            class="price-old"><?php echo $product['price']; ?></span>
                    <?php } ?>
                    <?php if ($product['tax']) { ?>
                    <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                    <?php } ?>
                </h2>


                <div class="kl-options-review">
                    <?php if ($product['pr_options']) { ?>

                    <?php foreach ($product['pr_options'] as $option) { ?>
                    <?php if ($option['type'] == 'select') { ?>
                    <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                        <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                        <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">

                            <?php foreach ($option['product_option_value'] as $option_value) { ?>
                            <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                <?php if ($option_value['price']) { ?>
                                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                <?php } ?>
                            </option>
                            <?php } ?>
                        </select>
                    </div>
                    <?php } ?>
                    <?php } ?>
                    <?php } ?>
                </div>

                <?php if($quantityincrementdecrement_featured_status && $quantityincrementdecrement_status){ ?>
                <div class="kl-bottom-block">
                    <div class="kl-input-group" style="margin-bottom:10px;">
                        <input type="text" name="quantity" class="form-control input-number qty-input" id="category"
                               value="1">
                        <div class="qty_buttons">
                            <span class="input-group-btn">
                            <button type="button" class="btn-increment btn-number" data-type="plus"
                                    data-field="category" onclick="increment($(this).parent().parent().parent())">
                            </button>
                            </span>
                                        <span class="input-group-btn">
                            <button type="button" class="btn-decrement btn-number" data-type="minus"
                                    data-field="category" onclick="descrement($(this).parent().parent().parent())">
                            </button>
                            </span>
                        </div>
                    </div>




                    <div class="kl-addtocart">
                        <button type="button"
                                onclick="cart.add('<?php echo $product['product_id']; ?>',
                                $(this).parent().parent().find('.input-number').val(),
                                $(this).parents('.caption').find('select').attr('name'),
                                $(this).parents('.caption').find('select').val());">

                                    В корзину

                        </button>
                    </div>



                </div>
                <?php } ?>

                <?php } ?>
            </div>
            <div class="button-group" style="display: none;">

                <?php if($quantityincrementdecrement_featured_status && $quantityincrementdecrement_status){ ?>
                <button type="button"
                        onclick="cart.add('<?php echo $product['product_id']; ?>', $(this).parent().parent().find('.input-number').val());">
                    <i class="fa fa-shopping-cart"></i> <span
                            class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
                <?php } else { ?>
                <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i
                            class="fa fa-shopping-cart"></i> <span
                            class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
                <?php } ?>

                <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>"
                        onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i>
                </button>
                <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>"
                        onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i>
                </button>
            </div>
        </div>
    </div>
    <?php } ?>
</div>





