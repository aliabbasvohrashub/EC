<%@ Page Title="" Language="C#" MasterPageFile="~/MasterSabji.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="EcommGroceryStore.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script src="/../Scripts/custom/listfruits.js"></script>    
    <script src="/../Scripts/custom/cart.js"></script>    


    <script>
        $(document).ready(function ($) {
            var querystring = (window.location.href).substring((window.location.href).lastIndexOf('/') + 1, (window.location.href).length);
            $(document).ajaxStop(function () {
                //$('body').css('opacity', '1');
                $("#pageloaddiv").css('display', 'none');
            });
            $(document).ajaxError(function (event, xhr, options, exc) {
                console.log("An error occurred!");
            });
            getProductDetail(querystring);
            $.when(getProductDetail(querystring)).done(function (newdata) {

                console.log('from details page' + newdata[0].PricePerUnit + '  ' + newdata[0].ProductName);

                //console.log(data);
                $("#ProductId").text(newdata[0].ProductId);
                $("#product_name_details").text(newdata[0].ProductName);
                $("#price_details").text('₹ ' + newdata[0].PricePerUnit);
                $(".short-description").text(newdata[0].ProductName);
                $("#yt_cloudzoom").attr('href', newdata[0].ImageURL);
                $("#image").attr('src', '../' + newdata[0].ImageURL);
                //data.ProductId
            });
            $("#AddToCart").click(function () {

                if (document.getElementById('cartid').value == '') {
                    var cart = new Object();
                    cart.IpAddress = $("#ip").val();
                    cart.IsActive = true;
                    alert('generate cart called ');
                    generateCart(cart);
                }
                else {
                    var product = {
                        CartId: $("#cartid").val(),
                        ProductId: $("#ProductId").text(),                        
                        Quantity: $("#qty").val() 
                    }
                    alert('AddProductToCart called ' + product);
                    AddProductToCart(product);
                }
            });
        });
      
        function DecreaseByOne() {
            if (Number(document.getElementById('qty').value) > 1)
            { document.getElementById('qty').value = Number(document.getElementById('qty').value) - 1; }
        }

        function IncreaseByOne() { 
            document.getElementById('qty').value = Number(document.getElementById('qty').value) + 1;
        }
    </script>

    <div class="yt-main-inner yt-content-inner">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="col-1-wrapper">
                                <div id="messages_product_view"> </div>
                                <div class="yt-product-detail" itemscope="" itemtype="http://schema.org/Product">
	                                <div class="yt-product-detail-inner">
		                                <div class="row product-essential">
			                                <div class="box-1">
				                                <div class="image-box-detail col-lg-6 col-md-6 col-sm-9 col-xs-12">
					                                <div class="product-img-box"> 
    
 
                                                        <div class="yt-detail-image zoom-wrapper-detail">
                                                            <div class="product-image product-image-zoom">
                                                                <div class="product-image-zoom">
                                                                    <div id="wrap" style="top: 0px; z-index: 9999; position: relative;">
                                                                        <a id="yt_cloudzoom" class="cloud-zoom" href="" rel="zoomWidth:300, zoomHeight:300, adjustX: 20, adjustY: -3" title="Apple Indian"
                                                                             style="position: relative; display: block;">
                                                                            <img src="" id="image" alt="Apple Indian" title="Apple Indian" style="display: block;">
                                                                            <span class="sale-product have-ico">Sale</span>
                                                                        </a>
                                                                        <div class="mousetrap" style="z-index: 999; position: absolute; width: 459px; height: 459px; left: 0px; top: 0px; cursor: move; background-image: url(&quot;.&quot;);"></div>
                                                                    </div>
                                                                    <div class="popup-btn  hidden-phone product-image-gallery">
                                                                        <a id="yt_popup" class="fancybox-button" href="" data-fancybox-group="button">Zoom
                                                                        </a>
                                                                        <a style="display: none;" class="fancybox-image-hidden" href="" data-fancybox-group="button"></a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>


                                                       <%-- <script type="text/javascript">
                                                            function init() {

                                                                device = jQuery.fn.detectDevice();
                                                                number_visible = 4;

                                                                jQuery(".jCarouselLite").jCarouselLite({
                                                                    btnNext: ".more-views .next",
                                                                    btnPrev: ".more-views .prev",
                                                                    visible: number_visible,
                                                                    start: 0,
                                                                    circular: true,
                                                                    speed: 300,
                                                                    vertical: true,
                                                                });
                                                            }
                                                            init();
                                                        </script>--%>

                                                        <script type="text/javascript">

                                                            jQuery(document).ready(function ($) {

                                                              //  $('.cloud-zoom, .cloud-zoom-gallery').CloudZoom();

                                                                $('.fancybox-image-hidden').each(function () {
                                                                    attr = $(this).attr('href');
                                                                    href_current = $('a#yt_popup').attr('href');
                                                                    if (attr == href_current) {
                                                                        $(this).removeClass("fancybox-button");
                                                                    }
                                                                });

                                                                $('a.cloud-zoom-gallery').bind('click', function () {
                                                                    $('a#yt_popup').attr('href', $(this).attr('href'));
                                                                    $('.fancybox-image-hidden').addClass("fancybox-button");
                                                                    $('.fancybox-image-hidden').each(function () {
                                                                        attr = $(this).attr('href');
                                                                        href_current = $('a#yt_popup').attr('href');
                                                                        if (attr == href_current) {
                                                                            $(this).removeClass("fancybox-button");
                                                                        }
                                                                    });
                                                                });

                                                                //$(".fancybox-button").fancybox({
                                                                //    prevEffect: 'none',
                                                                //    nextEffect: 'none',
                                                                //    closeBtn: true,
                                                                //    closeClick: true,
                                                                //    nextClick: true,
                                                                //    mouseWheel: false,
                                                                //    helpers: {
                                                                //        title: true,
                                                                //        buttons: {}
                                                                //    },
                                                                //    afterLoad: function () {
                                                                //        this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.title : '');
                                                                //    }
                                                                //});



                                                                $('.jCarouselLite ul li a').each(function () {
                                                                    if ($(this).hasClass('actived')) {
                                                                        $(this).parent().addClass('selected');
                                                                    }
                                                                });

                                                                $('.jCarouselLite ul li a').click(function () {
                                                                    $this = $(this);
                                                                    $('.jCarouselLite ul li a').parent().removeClass('selected');
                                                                    if ($this.hasClass('actived')) {
                                                                        $this.parent().addClass('selected');
                                                                    }
                                                                });
                                                            });
                                                        </script>

                                                        <script type="text/javascript">
                                                            jQuery(document).ready(function ($) {
                                                                $('.product-options .configurable-swatch-list .swatch-label').has('img').click(function () {
                                                                    setTimeout(function () {
                                                                        var href = $('.product-image-gallery .visible').attr('src');
                                                                        //alert(href);
                                                                        $('#yt_popup').attr('href', href);
                                                                        $('#yt_cloudzoom').attr('href', href);
                                                                        $('#yt_cloudzoom img').attr('src', href);
                                                                        $('.cloud-zoom, .cloud-zoom-gallery').CloudZoom();
                                                                    }, 500);

                                                                });

                                                                $('.product-options .configurable-swatch-list .swatch-label').has('img').click(function () {
                                                                    //alert('aaaaa');
                                                                    setTimeout(function () {
                                                                        var n_img = $('.item-inner a.product-image img.hidden').length;
                                                                        var n_imdefault = $('.item-inner a.product-image img.hidden').next('img').length;
                                                                        if (n_img == 1 && n_imdefault == 0) {
                                                                            $('.item-inner a.product-image img.hidden').removeClass('hidden');
                                                                        }

                                                                    }, 500);
                                                                });

                                                            });
                                                        </script>

                                                    </div>
				                                </div>	
				                                <div class="yt-detail-right col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                                    <script type="text/javascript">/*decorateGeneric($$('#product-options-wrapper dl'), ['last']);*/</script>
                                                    <input type="hidden" name="ProductId" id="ProductId" value="">

                                                    <div class="product-shop simple-product">
                                                        <h2 class="product-name" id="product_name_details" itemprop="name"> 	</h2> 
                                                        <div class="product-review">
                                                            <p class="no-rating"><a title="Write Your Review" href="/review/product/list/id/72/#review-form">Write Your Review</a></p>
                                                        </div> 
                                                        <div itemprop="offers" itemscope="" itemtype="http://schema.org/Offer"> 
                                                            <p class="availability in-stock">
                                                                Availability: <span>
                                                                    <link itemprop="availability" href="http://schema.org/InStock">
                                                                    In stock</span>
                                                            </p> 
                                                            <div class="price-box">
                                                                <span class="regular-price"> 
                                                                    <span  id="price_details" class="price"> </span>  </span> 
                                                            </div> 
                                                        </div> 
                                                        <div class="product-options clearfix" id="product-options-wrapper">  
                                                        <dl class="last">
                                                            <div class="w-option">
                                                                <dt>
                                                                    <label class="required">Quantity<em>*</em></label></dt>
                                                                <dd class="last">
                                                                    <div class="input-box">
                                                                        <div class="selector" id="uniform-select_54" style="width: 166px;">
                                                                            <span style="width: 111px; -webkit-user-select: none;">-- Please Select --</span>
                                                                            <select name="options[54]" id="select_54" class="required-entry product-custom-option jqtransformdone" title="">
                                                                                <option value="">-- Please Select --</option>
                                                                                <option value="0">500gm </option>
                                                                                <option value="1">1kg </option>
                                                                                <option value="2">2kg </option>
                                                                                <option value="3">3kg </option>
                                                                                <option value="4">4kg </option>
                                                                                <option value="5">5kg </option>
                                                                                <option value="6">6kg </option>
                                                                                <option value="7">7kg </option>
                                                                                <option value="8">8kg </option>
                                                                                <option value="9">9kg </option>
                                                                                <option value="10">10kg </option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                </dd>
                                                            </div>
                                                        </dl> 
                                                    </div>

                                                    <div class="add-to-holder have-price"> 
                                                        <div class="price-box">
                                                            <span class="regular-price"><span class="price_details"></span></span>
                                                        </div> 
                                                        <div class="wrap-qty">
                                                            <div class="qty-title"><span>Qty:</span></div>
                                                            <div class="qty-set">
                                                                <span class="quantity-box">
                                                                    <input type="hidden" name="proId" id="proId" value="29">
                                                                    <input type="button" class="quantity-controls quantity-minus" onclick="DecreaseByOne()" value="">
                                                                    <input type="text" name="qty" id="qty" maxlength="12" value="1" title="Qty" class="quantity-input qty">
                                                                    <input type="hidden" id="qty_stock" name="qty_stock" value="84">
                                                                    <input type="hidden" id="max_qty_stock" name="max_qty_stock" value="10">
                                                                    <input type="hidden" id="min_qty_stock" name="min_qty_stock" value="1">
                                                                    <input type="button" class="quantity-controls quantity-plus" onclick="IncreaseByOne()"value="">
                                                                </span>
                                                            </div>
                                                        </div> 
                                                        <div class="add-to-cart product-addcart">
                                                            <button type="button" title="Add to Cart" id="AddToCart"  class="button btn-cart btn-cart-single"><span><span>Add to Cart</span></span></button>
                                                        </div>  
                                                        <script>
                                                            /*   jQuery(document).ready(function ($) {
                                                                   manage_stock = 1;
                           
                                                                   // validate configurable 
                                                                   $('.configurable-product').bind("change", function () {
                                                                       id = this.value;
                                                                       value = $('#minQty_' + id).val();
                                                                       $('#min_qty_stock').val(value);
                                                                       value = $('#maxQty_' + id).val();
                                                                       $('#max_qty_stock').val(value);
                                                                       value = $('#qty_stock_' + id).val();
                                                                       $('#qty_stock').val(value);
                                                                       manage_stock = $('#manage_stock_' + id).val();
                                                                   });
                           
                                                                   //validate configurable(swatch color) 
                                                                   $('.configurable-swatch-list li').each(function () {
                                                                       $this = $(this);
                                                                       $('a', $this).bind("click", function () {
                                                                           $this = $(this);
                                                                           id = $this.parent().attr('data-value');
                                                                           value = $('#minQty_' + id).val();
                                                                           $('#min_qty_stock').val(value);
                                                                           value = $('#maxQty_' + id).val();
                                                                           $('#max_qty_stock').val(value);
                                                                           value = $('#qty_stock_' + id).val();
                                                                           $('#qty_stock').val(value);
                                                                           manage_stock = $('#manage_stock_' + id).val();
                                                                       });
                                                                   });
                           
                                                                   // validate simple product
                                                                   $('.btn-cart-single').bind("click", function () {
                                                                       re = 1;
                                                                       proId = $("#proId").val();
                                                                       curQty = $('#qty').val();
                                                                       minQty = $('#min_qty_stock').val();
                                                                       maxQty = $('#max_qty_stock').val();
                                                                       qtyStock = $('#qty_stock').val();
                                                                       qtyStock_1 = $('#qty_stock').val();
                           
                                                                       if (manage_stock == 0) {
                                                                           qtyStock = maxQty + 1;
                                                                       }
                                                                       if (minQty == '' && maxQty == '' && qtyStock == '') {
                                                                           alert('Please, select item');
                                                                           return false;
                                                                       }
                                                                       if (eval(maxQty - qtyStock) < 0) {
                                                                           temp = maxQty;
                                                                       } else {
                                                                           temp = qtyStock;
                                                                       }
                                                                       if (eval(temp - curQty) < 0) {
                                                                           re = 0;
                                                                           if (manage_stock == 0) {
                                                                               alert('Please, enter quantity  Min:' + minQty + ' and  Max:' + maxQty);
                                                                               return false;
                                                                           }
                                                                           alert('Please, enter quantity  Min:' + minQty + ' and Max:' + maxQty + ' (Inventory:' + qtyStock_1 + ')');
                                                                           return false;
                                                                       }
                                                                       if (eval(curQty - minQty) < 0) {
                                                                           re = 0;
                                                                           if (manage_stock == 0) {
                                                                               alert('Please, enter quantity Min:' + minQty + ' and Max:' + maxQty);
                                                                               return false;
                                                                           }
                                                                           alert('Please, enter quantity Min:' + minQty + ' and Max:' + maxQty + ' (Inventory:' + qtyStock_1 + ')');
                                                                           return false;
                                                                       }
                                                                       if ($.session.get("session" + proId) != null && manage_stock == 1) {
                                                                           cartQty = $.session.get("session" + proId);
                                                                           if (eval(maxQty - qtyStock) <= 0) {
                                                                               temp = eval(maxQty - cartQty);
                                                                           } else {
                                                                               temp = eval(qtyStock - cartQty);
                                                                           }
                                                                           temp1 = eval(temp - curQty);
                                                                           if (temp1 < 0) {
                                                                               re = 0;
                                                                               alert("Please, enter quantity Min:" + minQty + ' and Max:' + maxQty + ' (Inventory:' + qtyStock_1 + ')');
                                                                               return false;
                                                                           }
                                                                       }
                                                                       //end check qty of product
                                                                       if (re == 1) {
                                                                           productAddToCartForm.submit(this)
                                                                           $.session.set("session" + proId, curQty);
                                                                       }
                           
                                                                   });
                                                               });
                           
                           
                                                               jQuery(document).ready(function ($) {
                                                                   if ($('.item-selected').length > 0) {
                                                                       $('.btn-bundle').bind("click", function () {
                                                                           var n_bundle = $('.bundle-select').length;
                                                                           for (var i = 1; i <= n_bundle; i++) {
                                                                               var ele_bundle = "#bundle-option-" + i;
                                                                               if ($(ele_bundle).val() == "") {
                                                                                   alert("Please, select item");
                                                                                   return false;
                                                                               }
                                                                           }
                           
                                                                           re = 1;
                                                                           re1 = 0;
                                                                           $('.item-selected').each(function (index) {
                                                                               v = $(this).val();
                                                                               if (v != '') {
                                                                                   re1 = 1;
                           
                                                                                   qty_default = $("#qty_default" + v).val();
                                                                                   //if type select or radio
                                                                                   id = this.id;
                                                                                   str = id.substring(0, 20);
                           
                                                                                   if (str == "item-selected-select") {
                                                                                       option_id = id.substring(21);
                                                                                       qty_default_id = "#bundle-option-" + option_id + "-qty-input";
                                                                                       qty_default = $(qty_default_id).val();
                                                                                   } else if (str == "item-selected-radio-") {
                                                                                       option_id = id.substring(20);
                                                                                       qty_default_id = "#bundle-option-" + option_id + "-qty-input";
                                                                                       qty_default = $(qty_default_id).val();
                                                                                   }
                                                                                   // end.
                           
                                                                                   cusQty = $('#qty').val();
                           
                                                                                   curQty = cusQty * qty_default;
                                                                                   minQty = $('#minQty_' + v).val();
                                                                                   maxQty = $('#maxQty_' + v).val();
                                                                                   qtyStock = $('#qtyStock_' + v).val();
                                                                                   qtyStock_1 = $('#qtyStock_' + v).val();
                                                                                   proName = $('#proName' + v).val();
                                                                                   managestock = $('#managestock_' + v).val();
                           
                                                                                   if (managestock == 0) {
                                                                                       qtyStock = maxQty + 1;
                                                                                   }
                                                                                   if (eval(maxQty - qtyStock) < 0) {
                                                                                       temp = maxQty;
                                                                                   } else {
                                                                                       temp = qtyStock;
                                                                                   }
                                                                                   if (eval(temp - curQty) < 0) {
                                                                                       if (managestock == 0) {
                                                                                           alert('Please, enter "' + proName + '" quantity Min:' + minQty + ' and Max:' + maxQty);
                                                                                           re = 0;
                                                                                           return false;
                                                                                       }
                                                                                       alert('Please, enter "' + proName + '" quantity Min:' + minQty + ' and Max:' + maxQty + ' (Inventory: ' + qtyStock_1 + ')');
                                                                                       re = 0;
                                                                                       return false;
                                                                                   }
                                                                                   if (eval(curQty - minQty) < 0) {
                                                                                       if (managestock == 0) {
                                                                                           alert('Please, enter "' + proName + '" quantity Min:' + minQty + ' and Max:' + maxQty);
                                                                                           re = 0;
                                                                                           return false;
                                                                                       }
                                                                                       alert('Please, enter "' + proName + '" quantity Min:' + minQty + ' and Max:' + maxQty + ' (Inventory: ' + qtyStock_1 + ')');
                                                                                       re = 0;
                                                                                       return false;
                                                                                   }
                                                                                   if ($.session.get("session" + v) != null && managestock == 1) {
                                                                                       cartQty = $.session.get("session" + v);
                                                                                       if (eval(maxQty - qtyStock) <= 0) {
                                                                                           temp = eval(maxQty - cartQty);
                                                                                       } else {
                                                                                           temp = eval(qtyStock - cartQty);
                                                                                       }
                                                                                       temp1 = eval(temp - curQty);
                                                                                       if (temp1 < 0) {
                                                                                           re = 0;
                                                                                           alert('Please, enter "' + proName + '" quantity Min:' + minQty + ' and Max:' + maxQty + ' (Inventory: ' + qtyStock_1 + ')');
                                                                                           return false;
                                                                                       }
                                                                                   }
                                                                               }
                           
                                                                           });
                                                                           if (re1 == 0) {
                                                                               re = 0;
                                                                               alert("Please, choose item(s)");
                                                                               return false;
                                                                           }
                                                                           if (re == 1) {
                                                                               $('.item-selected').each(function (index) {
                                                                                   v = $(this).val();
                                                                                   cusQty = $('#qty').val();
                                                                                   qty_default = $('#qty_default' + v).val();
                                                                                   curQty = cusQty * qty_default;
                                                                                   $.session.set("session" + v, curQty);
                                                                               });
                                                                               productAddToCartForm.submit(this);
                                                                           }
                           
                                                                       });
                                                                   }
                                                                   $('.bundle-select').each(function (index) {
                                                                       $(this).bind("change", function () {
                                                                           v = this.value;
                                                                           id = $(this).attr('id');
                                                                           option_id = id.substring(14);
                                                                           $("#item-selected-select-" + option_id).val(v);
                                                                       });
                                                                   });
                                                                   $('.bundle-checkbox').each(function (index) {
                                                                       $(this).bind("click", function () {
                                                                           var isChecked = $(this).is(':checked');
                                                                           v1 = this.value;
                                                                           if (isChecked) {
                                                                               $("#item-selected-checkbox-" + v1).val(v1);
                                                                           } else {
                                                                               $("#item-selected-checkbox-" + v1).val('');
                                                                           }
                                                                       });
                                                                   });
                                                                   $('.bundle-radio').each(function (index) {
                                                                       $(this).bind("click", function () {
                                                                           var isChecked = $(this).is(':checked');
                                                                           v1 = this.value;
                                                                           id = this.id;
                                                                           if (isChecked) {
                           
                                                                               res = id.split('-');
                                                                               $("#item-selected-radio-" + res[2]).val(v1);
                           
                                                                           }
                                                                       });
                                                                   });
                                                                   $('.bundle-multi').each(function (index) {
                                                                       $(this).bind("change", function () {
                                                                           s = $("#" + this.id + " option").length;
                                                                           for (var i = 0; i < s; i++) {
                                                                               v1 = $("#" + this.id + " option")[i].selected;
                                                                               if (v1) {
                                                                                   v = $("#" + this.id + " option")[i].value;
                                                                                   $('#item-selected-multi' + v).val(v);
                                                                               } else {
                                                                                   v = $("#" + this.id + " option")[i].value;
                                                                                   $('#item-selected-multi' + v).val('');
                                                                               }
                                                                           }
                           
                                                                       });
                                                                   });
                           
                                                               });*/
                                                        </script> 
                                                        <div class="product-add-box">
                                                            <ul class="add-to-links">
                                                                <li class="wishlist"><a href="http://www.onlinesabjiwala.com/wishlist/index/add/product/29/form_key/dVq8b97n8WRfZrE2/" onclick="productAddToCartForm.submitLight(this, this.href); return false;" class="link-wishlist" title="Add to Wishlist">Add to Wishlist</a></li>
                                                                <li class="compare"><a href="http://www.onlinesabjiwala.com/catalog/product_compare/add/product/29/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2FwcGxlLWluZGlhbi5odG1sP1NJRD01ZWFiNzA0ZjIzOThjNjllNDhjMDgwYjAyYWYyMmVkNw,,/form_key/dVq8b97n8WRfZrE2/" class="link-compare" title="Add to Compare">Add to Compare</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>   
				                                </div>
                                              </div>
				                                <div style="clear:both;"></div> 
			                                </div> 
		                                </div>
	                                </div>
                                </div>  
								</div>
							</div>
						</div>
					</div> 
					<div class="bottom-block-home">
						<div class="container">
							<div class="row">
								  
							</div>
						</div>
					</div> 
        		</div>
</asp:Content>
