<%@ Page Title="" Language="C#" MasterPageFile="~/mstEcommerce.Master" AutoEventWireup="true" CodeBehind="FruitsMain.aspx.cs" Inherits="EcommGroceryStore.FruitsMain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/custom/listfruits.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div id="yt_main" class="yt-main-right yt-main col-main col-lg-9 col-md-9">
                                <div class="yt_main_inner">
                                    <noscript>
                                        <div class="global-site-notice noscript">
                                            <div class="notice-inner">
                                                <p>
                                                    <strong>JavaScript seems to be disabled in your browser.</strong><br />
                                                    You must have JavaScript enabled in your browser to utilize the functionality of this website.
                                                </p>
                                            </div>
                                        </div>
                                    </noscript>

                                    <div class="page-title category-title title-r title-visible">
                                        <h1>Fruits</h1>
                                    </div>
                                    <ul class="messages"><li class="success-msg"><ul><li><span>The product Green Grapes Indian has been added to comparison list.</span></li><li><span>The product Green Chilli has been added to comparison list.</span></li><li><span>The product Grapes Red (Imported) has been added to comparison list.</span></li><li><span>The product Ginger has been added to comparison list.</span></li></ul></li></ul>


                                    <div id="ajax-errors" style="display: none;">
                                        <ul class="messages">
                                            <li class="error-msg"> 
                                                <ul>
                                                    <li><span>An error occurred, please try again later.</span></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                    <div id="loading" style="display: none; margin-bottom: 10px; text-align: center;">
                                        <img class="v-middle" alt="" src="../skin/frontend/onlinesabjiwala/default/images/loading-qv.gif">
                                    </div>
                                    <div id="catalog-listing">
                                        <div class="category-products">
                                            <div class="toolbar">
                                                <div class="toolbar-inner">
                                                    <div class="sorter">
                                                        <div class="view-mode-wrap">
                                                            <p class="view-mode">
                                                                <strong title="Grid" class="grid">Grid</strong>&nbsp;
                                                                <a href="fruitsa927.html?mode=list" title="List" class="list">List</a>&nbsp;
                                                            </p>
                                                        </div>

                                                        <div class="sort-by-wrap">
                                                            <div class="sort-by">
                                                                <label>Sort By</label>
                                                                <div class="select-new">
                                                                    <div class="select-inner dropdown">
                                                                        <div class="overwrite-sortby"></div>
                                                                        <span class="btn-toolbar" data-toggle="dropdown"></span>
                                                                        <ul id="sort_by" class="dropdown-menu">
                                                                            <li>
                                                                                <a href="fruitsdddd.html?dir=asc&amp;mode=grid&amp;order=position">Position</a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="fruitscf90.html?dir=asc&amp;mode=grid&amp;order=name">Name</a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="fruitscac4.html?dir=asc&amp;mode=grid&amp;order=price" class="selected">Price</a>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <a class="btn-sortby set-desc arrow-down" href="fruits9945.html?dir=desc&amp;mode=grid&amp;order=price" title="Set Descending Direction">Desc</a>
                                                            </div>
                                                        </div>

                                                        <div class="limiter-wrap">
                                                            <div class="limiter">
                                                                <label>Show</label>
                                                                <div class="select-new">
                                                                    <div class="select-inner dropdown">
                                                                        <div class="overwrite-limiter"></div>
                                                                        <span class="btn-toolbar" data-toggle="dropdown"></span>
                                                                        <ul id="limiter" class="dropdown-menu">
                                                                            <li><a href="fruits86aa.html?limit=8&amp;mode=grid" class="selected">8</a></li>
                                                                            <li><a href="fruitsa37b.html?limit=16&amp;mode=grid">16</a></li>
                                                                            <li><a href="fruitsd9b4.html?limit=32&amp;mode=grid">32</a></li>
                                                                            <li><a href="fruitsa0de.html?limit=all&amp;mode=grid" class="selected">All</a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <!--<label class="perpage">/page</label>-->
                                                            </div>
                                                        </div>









                                                    </div>



                                                </div>
                                                <script>
                                                    jQuery(document).ready(function ($) {
                                                        $(".sort-by-wrap .overwrite-sortby").html($('#sort_by li a.selected').html());
                                                        $('.category-products #limiter li:first-child a').removeClass('selected');
                                                        $(".limiter-wrap .overwrite-limiter").html($('#limiter li a.selected').html());
                                                    });
                                                </script>
                                            </div>


                                            <div class="products-grid row">

                                                <div class="item col-lg-3 col-md-4 col-sm-4 respl-item">
                                                    <div class="item-inner">
                                                        <div class="w-image-box">
                                                            <div class="item-image">
                                                                <a href="fruits/awala.html"
                                                                   title="Awala"
                                                                   class="product-image">
                                                                    <img id="product-collection-image-77"
                                                                         src="../media/catalog/product/cache/1/small_image/370x/9df78eab33525d08d6e5fb8d27136e95/a/w/awala.jpg"
                                                                         alt="Awala" />
                                                                </a>

                                                            </div>

                                                            <div class="sale-item">
                                                                <span class="txt-label">Sale</span>
                                                            </div>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-review">
                                                                <p class="no-rating"><a title="Write Your Review" href="../review/product/list/id/77/category/8/index.html#review-form">Write Your Review</a></p>
                                                            </div>

                                                            <div class="item-title">
                                                                <a href="fruits/awala.html"
                                                                   title="Awala">Awala</a>
                                                            </div>
                                                            <div class="item-price">


                                                                <div class="price-box">
                                                                    <span class="regular-price">

                                                                        <span class="price">₹20.00</span>/250 gm
                                                                    </span>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <button data-toggle="tooltip" data-placement="left" title="Add to Cart" type="button" class="btn-pd btn-cart" onclick="setLocation('fruits/awala.html')">
                                                            <span>
                                                                <span>Add to Cart</span>
                                                            </span>
                                                        </button>

                                                        <a style="display:none;" href="fruits/awala.html"></a>
                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Wishlist" href="../wishlist/index/add/product/77/form_key/10mZJsjNieAFmLSZ/index.html" class="btn-pd item-wishlist">
                                                            <span>Add to Wishlist</span>
                                                        </a>

                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Compare" href="../catalog/product_compare/add/product/77/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl/form_key/10mZJsjNieAFmLSZ/index-144.html" class="btn-pd item-compare">
                                                            <span>Add to Compare</span>
                                                        </a>

                                                    </div>
                                                </div>
                                                <div class="item col-lg-3 col-md-4 col-sm-4 respl-item">
                                                    <div class="item-inner">
                                                        <div class="w-image-box">
                                                            <div class="item-image">
                                                                <a href="fruits/guava.html"
                                                                   title="Guava Indian"
                                                                   class="product-image">
                                                                    <img id="product-collection-image-34"
                                                                         src="../media/catalog/product/cache/1/small_image/370x/9df78eab33525d08d6e5fb8d27136e95/g/u/guava01.jpg"
                                                                         alt="Guava Indian" />
                                                                </a>

                                                            </div>

                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-review">
                                                                <p class="no-rating"><a title="Write Your Review" href="../review/product/list/id/34/category/8/index.html#review-form">Write Your Review</a></p>
                                                            </div>

                                                            <div class="item-title">
                                                                <a href="fruits/guava.html"
                                                                   title="Guava Indian">Guava Indian</a>
                                                            </div>
                                                            <div class="item-price">


                                                                <div class="price-box">
                                                                    <span class="regular-price">

                                                                        <span class="price">₹45.00</span>/500 gm
                                                                    </span>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <button data-toggle="tooltip" data-placement="left" title="Add to Cart" type="button" class="btn-pd btn-cart" onclick="setLocation('fruits/guava.html')">
                                                            <span>
                                                                <span>Add to Cart</span>
                                                            </span>
                                                        </button>

                                                        <a style="display:none;" href="fruits/guava.html"></a>
                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Wishlist" href="../wishlist/index/add/product/34/form_key/10mZJsjNieAFmLSZ/index.html" class="btn-pd item-wishlist">
                                                            <span>Add to Wishlist</span>
                                                        </a>

                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Compare" href="../catalog/product_compare/add/product/34/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl/form_key/10mZJsjNieAFmLSZ/index-93.html" class="btn-pd item-compare">
                                                            <span>Add to Compare</span>
                                                        </a>

                                                    </div>
                                                </div>
                                                <div class="item col-lg-3 col-md-4 col-sm-4 respl-item">
                                                    <div class="item-inner">
                                                        <div class="w-image-box">
                                                            <div class="item-image">
                                                                <a href="fruits/mosambi.html"
                                                                   title="Mosambi"
                                                                   class="product-image">
                                                                    <img id="product-collection-image-44"
                                                                         src="../media/catalog/product/cache/1/small_image/370x/9df78eab33525d08d6e5fb8d27136e95/m/o/mosambi_1.jpg"
                                                                         alt="Mosambi" />
                                                                </a>

                                                            </div>

                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-review">
                                                                <p class="no-rating"><a title="Write Your Review" href="../review/product/list/id/44/category/8/index.html#review-form">Write Your Review</a></p>
                                                            </div>

                                                            <div class="item-title">
                                                                <a href="fruits/mosambi.html"
                                                                   title="Mosambi">Mosambi</a>
                                                            </div>
                                                            <div class="item-price">


                                                                <div class="price-box">
                                                                    <span class="regular-price">

                                                                        <span class="price">₹45.00</span>/3 Pcs
                                                                    </span>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <button data-toggle="tooltip" data-placement="left" title="Add to Cart" type="button" class="btn-pd btn-cart" onclick="setLocation('http://www.onlinesabjiwala.com/checkout/cart/add/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl0cy12ZWdldGFibGVzL2ZydWl0cy5odG1sP21vZGU9Z3JpZA,,/product/44/form_key/10mZJsjNieAFmLSZ/')">
                                                            <span>
                                                                <span>Add to Cart</span>
                                                            </span>
                                                        </button>

                                                        <a style="display:none;" href="fruits/mosambi.html"></a>
                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Wishlist" href="../wishlist/index/add/product/44/form_key/10mZJsjNieAFmLSZ/index.html" class="btn-pd item-wishlist">
                                                            <span>Add to Wishlist</span>
                                                        </a>

                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Compare" href="../catalog/product_compare/add/product/44/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl/form_key/10mZJsjNieAFmLSZ/index-104.html" class="btn-pd item-compare">
                                                            <span>Add to Compare</span>
                                                        </a>

                                                    </div>
                                                </div>


                                                <div class="item col-lg-3 col-md-4 col-sm-4 respl-item">
                                                    <div class="item-inner">
                                                        <div class="w-image-box">
                                                            <div class="item-image">
                                                                <a href="fruits/coconut-water.html"
                                                                   title="Coconut water"
                                                                   class="product-image">
                                                                    <img id="product-collection-image-68"
                                                                         src="../media/catalog/product/cache/1/small_image/370x/9df78eab33525d08d6e5fb8d27136e95/g/r/green_coconut.jpg"
                                                                         alt="Coconut water" />
                                                                </a>

                                                            </div>

                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-review">
                                                                <p class="no-rating"><a title="Write Your Review" href="../review/product/list/id/68/category/8/index.html#review-form">Write Your Review</a></p>
                                                            </div>

                                                            <div class="item-title">
                                                                <a href="fruits/coconut-water.html"
                                                                   title="Coconut water">Coconut water</a>
                                                            </div>
                                                            <div class="item-price">


                                                                <div class="price-box">
                                                                    <span class="regular-price">

                                                                        <span class="price">₹45.00</span>/1 Pc
                                                                    </span>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <button data-toggle="tooltip" data-placement="left" title="Add to Cart" type="button" class="btn-pd btn-cart" onclick="setLocation('http://www.onlinesabjiwala.com/checkout/cart/add/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl0cy12ZWdldGFibGVzL2ZydWl0cy5odG1sP21vZGU9Z3JpZA,,/product/68/form_key/10mZJsjNieAFmLSZ/')">
                                                            <span>
                                                                <span>Add to Cart</span>
                                                            </span>
                                                        </button>

                                                        <a style="display:none;" href="fruits/coconut-water.html"></a>
                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Wishlist" href="../wishlist/index/add/product/68/form_key/10mZJsjNieAFmLSZ/index.html" class="btn-pd item-wishlist">
                                                            <span>Add to Wishlist</span>
                                                        </a>

                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Compare" href="../catalog/product_compare/add/product/68/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl/form_key/10mZJsjNieAFmLSZ/index-91.html" class="btn-pd item-compare">
                                                            <span>Add to Compare</span>
                                                        </a>

                                                    </div>
                                                </div>
                                            <%--    <div class="item col-lg-3 col-md-4 col-sm-4 respl-item">
                                                    <div class="item-inner">
                                                        <div class="w-image-box">
                                                            <div class="item-image">
                                                                <a href="fruits/banana.html"
                                                                   title="Banana "
                                                                   class="product-image">
                                                                    <img id="product-collection-image-30"
                                                                         src="../media/catalog/product/cache/1/small_image/370x/9df78eab33525d08d6e5fb8d27136e95/b/a/bananai.jpg"
                                                                         alt="Banana " />
                                                                </a>

                                                            </div>

                                                            <div class="sale-item">
                                                                <span class="txt-label">Sale</span>
                                                            </div>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-review">
                                                                <p class="no-rating"><a title="Write Your Review" href="../review/product/list/id/30/category/8/index.html#review-form">Write Your Review</a></p>
                                                            </div>

                                                            <div class="item-title">
                                                                <a href="fruits/banana.html"
                                                                   title="Banana ">Banana</a>
                                                            </div>
                                                            <div class="item-price">


                                                                <div class="price-box">

                                                                    <p class="old-price">
                                                                        <span class="price-label">Regular Price:</span>
                                                                        <span class="price">
                                                                            ₹50.00
                                                                        </span>
                                                                    </p>
                                                                    <p class="special-price">
                                                                        <span class="price-label">Special Price</span>
                                                                        <span class="price">

                                                                            <span class="price">₹48.00</span>/12 Pcs
                                                                        </span>
                                                                    </p>


                                                                </div>
                                                            </div>
                                                        </div>

                                                        <button data-toggle="tooltip" data-placement="left" title="Add to Cart" type="button" class="btn-pd btn-cart" onclick="setLocation('http://www.onlinesabjiwala.com/checkout/cart/add/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl0cy12ZWdldGFibGVzL2ZydWl0cy5odG1sP21vZGU9Z3JpZA,,/product/30/form_key/10mZJsjNieAFmLSZ/')">
                                                            <span>
                                                                <span>Add to Cart</span>
                                                            </span>
                                                        </button>

                                                        <a style="display:none;" href="fruits/banana.html"></a>
                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Wishlist" href="../wishlist/index/add/product/30/form_key/10mZJsjNieAFmLSZ/index.html" class="btn-pd item-wishlist">
                                                            <span>Add to Wishlist</span>
                                                        </a>

                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Compare" href="../catalog/product_compare/add/product/30/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl/form_key/10mZJsjNieAFmLSZ/index-90.html" class="btn-pd item-compare">
                                                            <span>Add to Compare</span>
                                                        </a>

                                                    </div>
                                                </div>
                                                <div class="item col-lg-3 col-md-4 col-sm-4 respl-item">
                                                    <div class="item-inner">
                                                        <div class="w-image-box">
                                                            <div class="item-image">
                                                                <a href="fruits/papaya.html"
                                                                   title="Papaya"
                                                                   class="product-image">
                                                                    <img id="product-collection-image-37"
                                                                         src="../media/catalog/product/cache/1/small_image/370x/9df78eab33525d08d6e5fb8d27136e95/p/a/papaya.jpg"
                                                                         alt="Papaya" />
                                                                </a>

                                                            </div>

                                                            <div class="sale-item">
                                                                <span class="txt-label">Sale</span>
                                                            </div>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-review">
                                                                <p class="no-rating"><a title="Write Your Review" href="../review/product/list/id/37/category/8/index.html#review-form">Write Your Review</a></p>
                                                            </div>

                                                            <div class="item-title">
                                                                <a href="fruits/papaya.html"
                                                                   title="Papaya">Papaya</a>
                                                            </div>
                                                            <div class="item-price">


                                                                <div class="price-box">
                                                                    <span class="regular-price">

                                                                        <span class="price">₹50.00</span>/1 Pc
                                                                    </span>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <button data-toggle="tooltip" data-placement="left" title="Add to Cart" type="button" class="btn-pd btn-cart" onclick="setLocation('http://www.onlinesabjiwala.com/checkout/cart/add/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl0cy12ZWdldGFibGVzL2ZydWl0cy5odG1sP21vZGU9Z3JpZA,,/product/37/form_key/10mZJsjNieAFmLSZ/')">
                                                            <span>
                                                                <span>Add to Cart</span>
                                                            </span>
                                                        </button>

                                                        <a style="display:none;" href="fruits/papaya.html"></a>
                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Wishlist" href="../wishlist/index/add/product/37/form_key/10mZJsjNieAFmLSZ/index.html" class="btn-pd item-wishlist">
                                                            <span>Add to Wishlist</span>
                                                        </a>

                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Compare" href="../catalog/product_compare/add/product/37/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl/form_key/10mZJsjNieAFmLSZ/index-107.html" class="btn-pd item-compare">
                                                            <span>Add to Compare</span>
                                                        </a>

                                                    </div>
                                                </div>


                                                <div class="item col-lg-3 col-md-4 col-sm-4 respl-item">
                                                    <div class="item-inner">
                                                        <div class="w-image-box">
                                                            <div class="item-image">
                                                                <a href="fruits/cantaloupe.html"
                                                                   title="Musk Melon "
                                                                   class="product-image">
                                                                    <img id="product-collection-image-31"
                                                                         src="../media/catalog/product/cache/1/small_image/370x/9df78eab33525d08d6e5fb8d27136e95/c/a/cantaloupe.jpg"
                                                                         alt="Musk Melon " />
                                                                </a>

                                                            </div>

                                                            <div class="sale-item">
                                                                <span class="txt-label">Sale</span>
                                                            </div>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-review">
                                                                <p class="no-rating"><a title="Write Your Review" href="../review/product/list/id/31/category/8/index.html#review-form">Write Your Review</a></p>
                                                            </div>

                                                            <div class="item-title">
                                                                <a href="fruits/cantaloupe.html"
                                                                   title="Musk Melon ">Musk Melon</a>
                                                            </div>
                                                            <div class="item-price">


                                                                <div class="price-box">
                                                                    <span class="regular-price">

                                                                        <span class="price">₹60.00</span>/1 Pc
                                                                    </span>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <button data-toggle="tooltip" data-placement="left" title="Add to Cart" type="button" class="btn-pd btn-cart" onclick="setLocation('http://www.onlinesabjiwala.com/checkout/cart/add/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl0cy12ZWdldGFibGVzL2ZydWl0cy5odG1sP21vZGU9Z3JpZA,,/product/31/form_key/10mZJsjNieAFmLSZ/')">
                                                            <span>
                                                                <span>Add to Cart</span>
                                                            </span>
                                                        </button>

                                                        <a style="display:none;" href="fruits/cantaloupe.html"></a>
                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Wishlist" href="../wishlist/index/add/product/31/form_key/10mZJsjNieAFmLSZ/index.html" class="btn-pd item-wishlist">
                                                            <span>Add to Wishlist</span>
                                                        </a>

                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Compare" href="../catalog/product_compare/add/product/31/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl/form_key/10mZJsjNieAFmLSZ/index-98.html" class="btn-pd item-compare">
                                                            <span>Add to Compare</span>
                                                        </a>

                                                    </div>
                                                </div>
                                                <div class="item col-lg-3 col-md-4 col-sm-4 respl-item">
                                                    <div class="item-inner">
                                                        <div class="w-image-box">
                                                            <div class="item-image">
                                                                <a href="fruits/pineapple.html"
                                                                   title="Pineapple "
                                                                   class="product-image">
                                                                    <img id="product-collection-image-38"
                                                                         src="../media/catalog/product/cache/1/small_image/370x/9df78eab33525d08d6e5fb8d27136e95/p/i/pinapple.jpg"
                                                                         alt="Pineapple " />
                                                                </a>

                                                            </div>

                                                            <div class="sale-item">
                                                                <span class="txt-label">Sale</span>
                                                            </div>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-review">
                                                                <p class="no-rating"><a title="Write Your Review" href="../review/product/list/id/38/category/8/index.html#review-form">Write Your Review</a></p>
                                                            </div>

                                                            <div class="item-title">
                                                                <a href="fruits/pineapple.html"
                                                                   title="Pineapple ">Pineapple</a>
                                                            </div>
                                                            <div class="item-price">


                                                                <div class="price-box">
                                                                    <span class="regular-price">

                                                                        <span class="price">₹60.00</span>/1 Pc
                                                                    </span>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <button data-toggle="tooltip" data-placement="left" title="Add to Cart" type="button" class="btn-pd btn-cart" onclick="setLocation('http://www.onlinesabjiwala.com/checkout/cart/add/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl0cy12ZWdldGFibGVzL2ZydWl0cy5odG1sP21vZGU9Z3JpZA,,/product/38/form_key/10mZJsjNieAFmLSZ/')">
                                                            <span>
                                                                <span>Add to Cart</span>
                                                            </span>
                                                        </button>

                                                        <a style="display:none;" href="fruits/pineapple.html"></a>
                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Wishlist" href="../wishlist/index/add/product/38/form_key/10mZJsjNieAFmLSZ/index.html" class="btn-pd item-wishlist">
                                                            <span>Add to Wishlist</span>
                                                        </a>

                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Compare" href="../catalog/product_compare/add/product/38/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl/form_key/10mZJsjNieAFmLSZ/index-100.html" class="btn-pd item-compare">
                                                            <span>Add to Compare</span>
                                                        </a>

                                                    </div>
                                                </div>
                                                <div class="item col-lg-3 col-md-4 col-sm-4 respl-item">
                                                    <div class="item-inner">
                                                        <div class="w-image-box">
                                                            <div class="item-image">
                                                                <a href="fruits/watermelon.html"
                                                                   title="Watermelon"
                                                                   class="product-image">
                                                                    <img id="product-collection-image-41"
                                                                         src="../media/catalog/product/cache/1/small_image/370x/9df78eab33525d08d6e5fb8d27136e95/w/a/watermelon.jpg"
                                                                         alt="Watermelon" />
                                                                </a>

                                                            </div>

                                                            <div class="sale-item">
                                                                <span class="txt-label">Sale</span>
                                                            </div>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-review">
                                                                <p class="no-rating"><a title="Write Your Review" href="../review/product/list/id/41/category/8/index.html#review-form">Write Your Review</a></p>
                                                            </div>

                                                            <div class="item-title">
                                                                <a href="fruits/watermelon.html"
                                                                   title="Watermelon">Watermelon</a>
                                                            </div>
                                                            <div class="item-price">


                                                                <div class="price-box">
                                                                    <span class="regular-price">

                                                                        <span class="price">₹60.00</span>/1 Pc
                                                                    </span>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <button data-toggle="tooltip" data-placement="left" title="Add to Cart" type="button" class="btn-pd btn-cart" onclick="setLocation('http://www.onlinesabjiwala.com/checkout/cart/add/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl0cy12ZWdldGFibGVzL2ZydWl0cy5odG1sP21vZGU9Z3JpZA,,/product/41/form_key/10mZJsjNieAFmLSZ/')">
                                                            <span>
                                                                <span>Add to Cart</span>
                                                            </span>
                                                        </button>

                                                        <a style="display:none;" href="fruits/watermelon.html"></a>
                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Wishlist" href="../wishlist/index/add/product/41/form_key/10mZJsjNieAFmLSZ/index.html" class="btn-pd item-wishlist">
                                                            <span>Add to Wishlist</span>
                                                        </a>

                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Compare" href="../catalog/product_compare/add/product/41/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl/form_key/10mZJsjNieAFmLSZ/index-104.html" class="btn-pd item-compare">
                                                            <span>Add to Compare</span>
                                                        </a>

                                                    </div>
                                                </div>


                                                <div class="item col-lg-3 col-md-4 col-sm-4 respl-item">
                                                    <div class="item-inner">
                                                        <div class="w-image-box">
                                                            <div class="item-image">
                                                                <a href="fruits/chiku.html"
                                                                   title="Chiku (8 Pcs Medium Size)"
                                                                   class="product-image">
                                                                    <img id="product-collection-image-43"
                                                                         src="../media/catalog/product/cache/1/small_image/370x/9df78eab33525d08d6e5fb8d27136e95/c/h/chikoo-600x600.png"
                                                                         alt="Chiku (8 Pcs Medium Size)" />
                                                                </a>

                                                            </div>

                                                            <div class="sale-item">
                                                                <span class="txt-label">Sale</span>
                                                            </div>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-review">
                                                                <p class="no-rating"><a title="Write Your Review" href="../review/product/list/id/43/category/8/index.html#review-form">Write Your Review</a></p>
                                                            </div>

                                                            <div class="item-title">
                                                                <a href="fruits/chiku.html"
                                                                   title="Chiku (8 Pcs Medium Size)">Chiku (8 Pcs Medium Size)</a>
                                                            </div>
                                                            <div class="item-price">


                                                                <div class="price-box">
                                                                    <span class="regular-price">

                                                                        <span class="price">₹60.00</span>/1 Pkt
                                                                    </span>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <button data-toggle="tooltip" data-placement="left" title="Add to Cart" type="button" class="btn-pd btn-cart" onclick="setLocation('http://www.onlinesabjiwala.com/checkout/cart/add/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl0cy12ZWdldGFibGVzL2ZydWl0cy5odG1sP21vZGU9Z3JpZA,,/product/43/form_key/10mZJsjNieAFmLSZ/')">
                                                            <span>
                                                                <span>Add to Cart</span>
                                                            </span>
                                                        </button>

                                                        <a style="display:none;" href="fruits/chiku.html"></a>
                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Wishlist" href="../wishlist/index/add/product/43/form_key/10mZJsjNieAFmLSZ/index.html" class="btn-pd item-wishlist">
                                                            <span>Add to Wishlist</span>
                                                        </a>

                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Compare" href="../catalog/product_compare/add/product/43/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl/form_key/10mZJsjNieAFmLSZ/index-85.html" class="btn-pd item-compare">
                                                            <span>Add to Compare</span>
                                                        </a>

                                                    </div>
                                                </div>
                                                <div class="item col-lg-3 col-md-4 col-sm-4 respl-item">
                                                    <div class="item-inner">
                                                        <div class="w-image-box">
                                                            <div class="item-image">
                                                                <a href="fruits/fig.html"
                                                                   title="Fig"
                                                                   class="product-image">
                                                                    <img id="product-collection-image-128"
                                                                         src="../media/catalog/product/cache/1/small_image/370x/9df78eab33525d08d6e5fb8d27136e95/f/i/fig.jpg"
                                                                         alt="Fig" />
                                                                </a>

                                                            </div>

                                                            <div class="sale-item">
                                                                <span class="txt-label">Sale</span>
                                                            </div>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-review">
                                                                <p class="no-rating"><a title="Write Your Review" href="../review/product/list/id/128/category/8/index.html#review-form">Write Your Review</a></p>
                                                            </div>

                                                            <div class="item-title">
                                                                <a href="fruits/fig.html"
                                                                   title="Fig">Fig</a>
                                                            </div>
                                                            <div class="item-price">


                                                                <div class="price-box">
                                                                    <span class="regular-price">

                                                                        <span class="price">₹60.00</span>/6 Pcs
                                                                    </span>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <button data-toggle="tooltip" data-placement="left" title="Add to Cart" type="button" class="btn-pd btn-cart" onclick="setLocation('http://www.onlinesabjiwala.com/checkout/cart/add/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl0cy12ZWdldGFibGVzL2ZydWl0cy5odG1sP21vZGU9Z3JpZA,,/product/128/form_key/10mZJsjNieAFmLSZ/')">
                                                            <span>
                                                                <span>Add to Cart</span>
                                                            </span>
                                                        </button>

                                                        <a style="display:none;" href="fruits/fig.html"></a>
                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Wishlist" href="../wishlist/index/add/product/128/form_key/10mZJsjNieAFmLSZ/index.html" class="btn-pd item-wishlist">
                                                            <span>Add to Wishlist</span>
                                                        </a>

                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Compare" href="../catalog/product_compare/add/product/128/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl/form_key/10mZJsjNieAFmLSZ/index-98.html" class="btn-pd item-compare">
                                                            <span>Add to Compare</span>
                                                        </a>

                                                    </div>
                                                </div>
                                                <div class="item col-lg-3 col-md-4 col-sm-4 respl-item">
                                                    <div class="item-inner">
                                                        <div class="w-image-box">
                                                            <div class="item-image">
                                                                <a href="fruits/pomegranate.html"
                                                                   title="Pomegranate"
                                                                   class="product-image">
                                                                    <img id="product-collection-image-39"
                                                                         src="../media/catalog/product/cache/1/small_image/370x/9df78eab33525d08d6e5fb8d27136e95/p/o/pomegranate.jpg"
                                                                         alt="Pomegranate" />
                                                                </a>

                                                            </div>

                                                            <div class="sale-item">
                                                                <span class="txt-label">Sale</span>
                                                            </div>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-review">
                                                                <p class="no-rating"><a title="Write Your Review" href="../review/product/list/id/39/category/8/index.html#review-form">Write Your Review</a></p>
                                                            </div>

                                                            <div class="item-title">
                                                                <a href="fruits/pomegranate.html"
                                                                   title="Pomegranate">Pomegranate</a>
                                                            </div>
                                                            <div class="item-price">


                                                                <div class="price-box">
                                                                    <span class="regular-price">

                                                                        <span class="price">₹90.00</span>/500 gm
                                                                    </span>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <button data-toggle="tooltip" data-placement="left" title="Add to Cart" type="button" class="btn-pd btn-cart" onclick="setLocation('fruits/pomegranate.html')">
                                                            <span>
                                                                <span>Add to Cart</span>
                                                            </span>
                                                        </button>

                                                        <a style="display:none;" href="fruits/pomegranate.html"></a>
                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Wishlist" href="../wishlist/index/add/product/39/form_key/10mZJsjNieAFmLSZ/index.html" class="btn-pd item-wishlist">
                                                            <span>Add to Wishlist</span>
                                                        </a>

                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Compare" href="../catalog/product_compare/add/product/39/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl/form_key/10mZJsjNieAFmLSZ/index-108.html" class="btn-pd item-compare">
                                                            <span>Add to Compare</span>
                                                        </a>

                                                    </div>
                                                </div>


                                                <div class="item col-lg-3 col-md-4 col-sm-4 respl-item">
                                                    <div class="item-inner">
                                                        <div class="w-image-box">
                                                            <div class="item-image">
                                                                <a href="fruits/strawberry.html"
                                                                   title="Strawberry"
                                                                   class="product-image">
                                                                    <img id="product-collection-image-40"
                                                                         src="../media/catalog/product/cache/1/small_image/370x/9df78eab33525d08d6e5fb8d27136e95/s/t/strawberry.jpg"
                                                                         alt="Strawberry" />
                                                                </a>

                                                            </div>

                                                            <div class="sale-item">
                                                                <span class="txt-label">Sale</span>
                                                            </div>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-review">
                                                                <p class="no-rating"><a title="Write Your Review" href="../review/product/list/id/40/category/8/index.html#review-form">Write Your Review</a></p>
                                                            </div>

                                                            <div class="item-title">
                                                                <a href="fruits/strawberry.html"
                                                                   title="Strawberry">Strawberry</a>
                                                            </div>
                                                            <div class="item-price">


                                                                <div class="price-box">
                                                                    <span class="regular-price">

                                                                        <span class="price">₹90.00</span>/1 Pkt
                                                                    </span>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <button data-toggle="tooltip" data-placement="left" title="Add to Cart" type="button" class="btn-pd btn-cart" onclick="setLocation('http://www.onlinesabjiwala.com/checkout/cart/add/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl0cy12ZWdldGFibGVzL2ZydWl0cy5odG1sP21vZGU9Z3JpZA,,/product/40/form_key/10mZJsjNieAFmLSZ/')">
                                                            <span>
                                                                <span>Add to Cart</span>
                                                            </span>
                                                        </button>

                                                        <a style="display:none;" href="fruits/strawberry.html"></a>
                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Wishlist" href="../wishlist/index/add/product/40/form_key/10mZJsjNieAFmLSZ/index.html" class="btn-pd item-wishlist">
                                                            <span>Add to Wishlist</span>
                                                        </a>

                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Compare" href="../catalog/product_compare/add/product/40/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl/form_key/10mZJsjNieAFmLSZ/index-105.html" class="btn-pd item-compare">
                                                            <span>Add to Compare</span>
                                                        </a>

                                                    </div>
                                                </div>
                                                <div class="item col-lg-3 col-md-4 col-sm-4 respl-item">
                                                    <div class="item-inner">
                                                        <div class="w-image-box">
                                                            <div class="item-image">
                                                                <a href="fruits/sitafhal.html"
                                                                   title="Custard Apple"
                                                                   class="product-image">
                                                                    <img id="product-collection-image-46"
                                                                         src="../media/catalog/product/cache/1/small_image/370x/9df78eab33525d08d6e5fb8d27136e95/s/i/sitafhal.jpg"
                                                                         alt="Custard Apple" />
                                                                </a>

                                                            </div>

                                                            <div class="sale-item">
                                                                <span class="txt-label">Sale</span>
                                                            </div>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-review">
                                                                <p class="no-rating"><a title="Write Your Review" href="../review/product/list/id/46/category/8/index.html#review-form">Write Your Review</a></p>
                                                            </div>

                                                            <div class="item-title">
                                                                <a href="fruits/sitafhal.html"
                                                                   title="Custard Apple">Custard Apple</a>
                                                            </div>
                                                            <div class="item-price">


                                                                <div class="price-box">
                                                                    <span class="regular-price">

                                                                        <span class="price">₹90.00</span>/500 gm
                                                                    </span>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <button data-toggle="tooltip" data-placement="left" title="Add to Cart" type="button" class="btn-pd btn-cart" onclick="setLocation('fruits/sitafhal.html')">
                                                            <span>
                                                                <span>Add to Cart</span>
                                                            </span>
                                                        </button>

                                                        <a style="display:none;" href="fruits/sitafhal.html"></a>
                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Wishlist" href="../wishlist/index/add/product/46/form_key/10mZJsjNieAFmLSZ/index.html" class="btn-pd item-wishlist">
                                                            <span>Add to Wishlist</span>
                                                        </a>

                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Compare" href="../catalog/product_compare/add/product/46/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl/form_key/10mZJsjNieAFmLSZ/index-88.html" class="btn-pd item-compare">
                                                            <span>Add to Compare</span>
                                                        </a>

                                                    </div>
                                                </div>
                                                <div class="item col-lg-3 col-md-4 col-sm-4 respl-item">
                                                    <div class="item-inner">
                                                        <div class="w-image-box">
                                                            <div class="item-image">
                                                                <a href="fruits/green-grapes.html"
                                                                   title="Green Grapes Indian"
                                                                   class="product-image">
                                                                    <img id="product-collection-image-32"
                                                                         src="../media/catalog/product/cache/1/small_image/370x/9df78eab33525d08d6e5fb8d27136e95/g/r/grapes_indian.jpg"
                                                                         alt="Green Grapes Indian" />
                                                                </a>

                                                            </div>

                                                            <div class="sale-item">
                                                                <span class="txt-label">Sale</span>
                                                            </div>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-review">
                                                                <p class="no-rating"><a title="Write Your Review" href="../review/product/list/id/32/category/8/index.html#review-form">Write Your Review</a></p>
                                                            </div>

                                                            <div class="item-title">
                                                                <a href="fruits/green-grapes.html"
                                                                   title="Green Grapes Indian">Green Grapes Indian</a>
                                                            </div>
                                                            <div class="item-price">


                                                                <div class="price-box">
                                                                    <span class="regular-price">

                                                                        <span class="price">₹100.00</span>/500 gm
                                                                    </span>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <button data-toggle="tooltip" data-placement="left" title="Add to Cart" type="button" class="btn-pd btn-cart" onclick="setLocation('http://www.onlinesabjiwala.com/checkout/cart/add/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl0cy12ZWdldGFibGVzL2ZydWl0cy5odG1sP21vZGU9Z3JpZA,,/product/32/form_key/10mZJsjNieAFmLSZ/')">
                                                            <span>
                                                                <span>Add to Cart</span>
                                                            </span>
                                                        </button>

                                                        <a style="display:none;" href="fruits/green-grapes.html"></a>
                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Wishlist" href="../wishlist/index/add/product/32/form_key/10mZJsjNieAFmLSZ/index.html" class="btn-pd item-wishlist">
                                                            <span>Add to Wishlist</span>
                                                        </a>

                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Compare" href="../catalog/product_compare/add/product/32/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl/form_key/10mZJsjNieAFmLSZ/index-99.html" class="btn-pd item-compare">
                                                            <span>Add to Compare</span>
                                                        </a>

                                                    </div>
                                                </div>


                                                <div class="item col-lg-3 col-md-4 col-sm-4 respl-item">
                                                    <div class="item-inner">
                                                        <div class="w-image-box">
                                                            <div class="item-image">
                                                                <a href="fruits/pear-indian.html"
                                                                   title="Pears Indian"
                                                                   class="product-image">
                                                                    <img id="product-collection-image-64"
                                                                         src="../media/catalog/product/cache/1/small_image/370x/9df78eab33525d08d6e5fb8d27136e95/2/0/20080204233721_pear.jpg"
                                                                         alt="Pears Indian" />
                                                                </a>

                                                            </div>

                                                            <div class="sale-item">
                                                                <span class="txt-label">Sale</span>
                                                            </div>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-review">
                                                                <p class="no-rating"><a title="Write Your Review" href="../review/product/list/id/64/category/8/index.html#review-form">Write Your Review</a></p>
                                                            </div>

                                                            <div class="item-title">
                                                                <a href="fruits/pear-indian.html"
                                                                   title="Pears Indian">Pears Indian</a>
                                                            </div>
                                                            <div class="item-price">


                                                                <div class="price-box">
                                                                    <span class="regular-price">

                                                                        <span class="price">₹100.00</span>/500 gm
                                                                    </span>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <button data-toggle="tooltip" data-placement="left" title="Add to Cart" type="button" class="btn-pd btn-cart" onclick="setLocation('fruits/pear-indian.html')">
                                                            <span>
                                                                <span>Add to Cart</span>
                                                            </span>
                                                        </button>

                                                        <a style="display:none;" href="fruits/pear-indian.html"></a>
                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Wishlist" href="../wishlist/index/add/product/64/form_key/10mZJsjNieAFmLSZ/index.html" class="btn-pd item-wishlist">
                                                            <span>Add to Wishlist</span>
                                                        </a>

                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Compare" href="../catalog/product_compare/add/product/64/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl/form_key/10mZJsjNieAFmLSZ/index-109.html" class="btn-pd item-compare">
                                                            <span>Add to Compare</span>
                                                        </a>

                                                    </div>
                                                </div>
                                                <div class="item col-lg-3 col-md-4 col-sm-4 respl-item">
                                                    <div class="item-inner">
                                                        <div class="w-image-box">
                                                            <div class="item-image">
                                                                <a href="fruits/peach.html"
                                                                   title="Peach Indian"
                                                                   class="product-image">
                                                                    <img id="product-collection-image-65"
                                                                         src="../media/catalog/product/cache/1/small_image/370x/9df78eab33525d08d6e5fb8d27136e95/2/0/20100801peach.jpg"
                                                                         alt="Peach Indian" />
                                                                </a>

                                                            </div>

                                                            <div class="sale-item">
                                                                <span class="txt-label">Sale</span>
                                                            </div>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-review">
                                                                <p class="no-rating"><a title="Write Your Review" href="../review/product/list/id/65/category/8/index.html#review-form">Write Your Review</a></p>
                                                            </div>

                                                            <div class="item-title">
                                                                <a href="fruits/peach.html"
                                                                   title="Peach Indian">Peach Indian</a>
                                                            </div>
                                                            <div class="item-price">


                                                                <div class="price-box">

                                                                    <p class="old-price">
                                                                        <span class="price-label">Regular Price:</span>
                                                                        <span class="price">
                                                                            ₹135.00
                                                                        </span>
                                                                    </p>
                                                                    <p class="special-price">
                                                                        <span class="price-label">Special Price</span>
                                                                        <span class="price">

                                                                            <span class="price">₹110.00</span>/500 gm
                                                                        </span>
                                                                    </p>


                                                                </div>
                                                            </div>
                                                        </div>

                                                        <button data-toggle="tooltip" data-placement="left" title="Add to Cart" type="button" class="btn-pd btn-cart" onclick="setLocation('http://www.onlinesabjiwala.com/checkout/cart/add/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl0cy12ZWdldGFibGVzL2ZydWl0cy5odG1sP21vZGU9Z3JpZA,,/product/65/form_key/10mZJsjNieAFmLSZ/')">
                                                            <span>
                                                                <span>Add to Cart</span>
                                                            </span>
                                                        </button>

                                                        <a style="display:none;" href="fruits/peach.html"></a>
                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Wishlist" href="../wishlist/index/add/product/65/form_key/10mZJsjNieAFmLSZ/index.html" class="btn-pd item-wishlist">
                                                            <span>Add to Wishlist</span>
                                                        </a>

                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Compare" href="../catalog/product_compare/add/product/65/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl/form_key/10mZJsjNieAFmLSZ/index-95.html" class="btn-pd item-compare">
                                                            <span>Add to Compare</span>
                                                        </a>

                                                    </div>
                                                </div>
                                                <div class="item col-lg-3 col-md-4 col-sm-4 respl-item">
                                                    <div class="item-inner">
                                                        <div class="w-image-box">
                                                            <div class="item-image">
                                                                <a href="fruits/apple-indian.html"
                                                                   title="Apple Indian"
                                                                   class="product-image">
                                                                    <img id="product-collection-image-29"
                                                                         src="../media/catalog/product/cache/1/small_image/370x/9df78eab33525d08d6e5fb8d27136e95/r/e/red_apples-551.jpg"
                                                                         alt="Apple Indian" />
                                                                </a>

                                                            </div>

                                                            <div class="sale-item">
                                                                <span class="txt-label">Sale</span>
                                                            </div>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-review">
                                                                <p class="no-rating"><a title="Write Your Review" href="../review/product/list/id/29/category/8/index.html#review-form">Write Your Review</a></p>
                                                            </div>

                                                            <div class="item-title">
                                                                <a href="fruits/apple-indian.html"
                                                                   title="Apple Indian">Apple Indian</a>
                                                            </div>
                                                            <div class="item-price">


                                                                <div class="price-box">
                                                                    <span class="regular-price">

                                                                        <span class="price">₹120.00</span>/1 Kg
                                                                    </span>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <button data-toggle="tooltip" data-placement="left" title="Add to Cart" type="button" class="btn-pd btn-cart" onclick="setLocation('fruits/apple-indian.html')">
                                                            <span>
                                                                <span>Add to Cart</span>
                                                            </span>
                                                        </button>

                                                        <a style="display:none;" href="fruits/apple-indian.html"></a>
                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Wishlist" href="../wishlist/index/add/product/29/form_key/10mZJsjNieAFmLSZ/index.html" class="btn-pd item-wishlist">
                                                            <span>Add to Wishlist</span>
                                                        </a>

                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Compare" href="../catalog/product_compare/add/product/29/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl/form_key/10mZJsjNieAFmLSZ/index-103.html" class="btn-pd item-compare">
                                                            <span>Add to Compare</span>
                                                        </a>

                                                    </div>
                                                </div>


                                                <div class="item col-lg-3 col-md-4 col-sm-4 respl-item">
                                                    <div class="item-inner">
                                                        <div class="w-image-box">
                                                            <div class="item-image">
                                                                <a href="fruits/kiwi.html"
                                                                   title="Kiwi"
                                                                   class="product-image">
                                                                    <img id="product-collection-image-117"
                                                                         src="../media/catalog/product/cache/1/small_image/370x/9df78eab33525d08d6e5fb8d27136e95/k/i/kiwi-fruit.png"
                                                                         alt="Kiwi" />
                                                                </a>

                                                            </div>

                                                            <div class="sale-item">
                                                                <span class="txt-label">Sale</span>
                                                            </div>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-review">
                                                                <p class="no-rating"><a title="Write Your Review" href="../review/product/list/id/117/category/8/index.html#review-form">Write Your Review</a></p>
                                                            </div>

                                                            <div class="item-title">
                                                                <a href="fruits/kiwi.html"
                                                                   title="Kiwi">Kiwi</a>
                                                            </div>
                                                            <div class="item-price">


                                                                <div class="price-box">
                                                                    <span class="regular-price">

                                                                        <span class="price">₹145.00</span>/3 Pcs
                                                                    </span>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <button data-toggle="tooltip" data-placement="left" title="Add to Cart" type="button" class="btn-pd btn-cart" onclick="setLocation('http://www.onlinesabjiwala.com/checkout/cart/add/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl0cy12ZWdldGFibGVzL2ZydWl0cy5odG1sP21vZGU9Z3JpZA,,/product/117/form_key/10mZJsjNieAFmLSZ/')">
                                                            <span>
                                                                <span>Add to Cart</span>
                                                            </span>
                                                        </button>

                                                        <a style="display:none;" href="fruits/kiwi.html"></a>
                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Wishlist" href="../wishlist/index/add/product/117/form_key/10mZJsjNieAFmLSZ/index.html" class="btn-pd item-wishlist">
                                                            <span>Add to Wishlist</span>
                                                        </a>

                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Compare" href="../catalog/product_compare/add/product/117/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl/form_key/10mZJsjNieAFmLSZ/index-87.html" class="btn-pd item-compare">
                                                            <span>Add to Compare</span>
                                                        </a>

                                                    </div>
                                                </div>
                                                <div class="item col-lg-3 col-md-4 col-sm-4 respl-item">
                                                    <div class="item-inner">
                                                        <div class="w-image-box">
                                                            <div class="item-image">
                                                                <a href="fruits/orange.html"
                                                                   title="Orange / Malta ( Imported)"
                                                                   class="product-image">
                                                                    <img id="product-collection-image-36"
                                                                         src="../media/catalog/product/cache/1/small_image/370x/9df78eab33525d08d6e5fb8d27136e95/o/r/orangejunction.jpg"
                                                                         alt="Orange / Malta ( Imported)" />
                                                                </a>

                                                            </div>

                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-review">
                                                                <p class="no-rating"><a title="Write Your Review" href="../review/product/list/id/36/category/8/index.html#review-form">Write Your Review</a></p>
                                                            </div>

                                                            <div class="item-title">
                                                                <a href="fruits/orange.html"
                                                                   title="Orange / Malta ( Imported)">Orange / Malta ( Imported)</a>
                                                            </div>
                                                            <div class="item-price">


                                                                <div class="price-box">
                                                                    <span class="regular-price">

                                                                        <span class="price">₹160.00</span>/1 Kg
                                                                    </span>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <button data-toggle="tooltip" data-placement="left" title="Add to Cart" type="button" class="btn-pd btn-cart" onclick="setLocation('fruits/orange.html')">
                                                            <span>
                                                                <span>Add to Cart</span>
                                                            </span>
                                                        </button>

                                                        <a style="display:none;" href="fruits/orange.html"></a>
                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Wishlist" href="../wishlist/index/add/product/36/form_key/10mZJsjNieAFmLSZ/index.html" class="btn-pd item-wishlist">
                                                            <span>Add to Wishlist</span>
                                                        </a>

                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Compare" href="../catalog/product_compare/add/product/36/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl/form_key/10mZJsjNieAFmLSZ/index-96.html" class="btn-pd item-compare">
                                                            <span>Add to Compare</span>
                                                        </a>

                                                    </div>
                                                </div>
                                                <div class="item col-lg-3 col-md-4 col-sm-4 respl-item">
                                                    <div class="item-inner">
                                                        <div class="w-image-box">
                                                            <div class="item-image">
                                                                <a href="fruits/pears-imported.html"
                                                                   title="Pears Imported"
                                                                   class="product-image">
                                                                    <img id="product-collection-image-113"
                                                                         src="../media/catalog/product/cache/1/small_image/370x/9df78eab33525d08d6e5fb8d27136e95/p/e/pear.jpg"
                                                                         alt="Pears Imported" />
                                                                </a>

                                                            </div>

                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-review">
                                                                <p class="no-rating"><a title="Write Your Review" href="../review/product/list/id/113/category/8/index.html#review-form">Write Your Review</a></p>
                                                            </div>

                                                            <div class="item-title">
                                                                <a href="fruits/pears-imported.html"
                                                                   title="Pears Imported">Pears Imported</a>
                                                            </div>
                                                            <div class="item-price">


                                                                <div class="price-box">
                                                                    <span class="regular-price">

                                                                        <span class="price">₹160.00</span>/500 gm
                                                                    </span>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <button data-toggle="tooltip" data-placement="left" title="Add to Cart" type="button" class="btn-pd btn-cart" onclick="setLocation('fruits/pears-imported.html')">
                                                            <span>
                                                                <span>Add to Cart</span>
                                                            </span>
                                                        </button>

                                                        <a style="display:none;" href="fruits/pears-imported.html"></a>
                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Wishlist" href="../wishlist/index/add/product/113/form_key/10mZJsjNieAFmLSZ/index.html" class="btn-pd item-wishlist">
                                                            <span>Add to Wishlist</span>
                                                        </a>

                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Compare" href="../catalog/product_compare/add/product/113/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl/form_key/10mZJsjNieAFmLSZ/index-106.html" class="btn-pd item-compare">
                                                            <span>Add to Compare</span>
                                                        </a>

                                                    </div>
                                                </div>


                                                <div class="item col-lg-3 col-md-4 col-sm-4 respl-item">
                                                    <div class="item-inner">
                                                        <div class="w-image-box">
                                                            <div class="item-image">
                                                                <a href="fruits/apple-washington.html"
                                                                   title="Apple Washington"
                                                                   class="product-image">
                                                                    <img id="product-collection-image-114"
                                                                         src="../media/catalog/product/cache/1/small_image/370x/9df78eab33525d08d6e5fb8d27136e95/w/a/washington_apple.jpg"
                                                                         alt="Apple Washington" />
                                                                </a>

                                                            </div>

                                                            <div class="sale-item">
                                                                <span class="txt-label">Sale</span>
                                                            </div>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-review">
                                                                <p class="no-rating"><a title="Write Your Review" href="../review/product/list/id/114/category/8/index.html#review-form">Write Your Review</a></p>
                                                            </div>

                                                            <div class="item-title">
                                                                <a href="fruits/apple-washington.html"
                                                                   title="Apple Washington">Apple Washington</a>
                                                            </div>
                                                            <div class="item-price">


                                                                <div class="price-box">
                                                                    <span class="regular-price">

                                                                        <span class="price">₹190.00</span>/1 Kg (aprox)
                                                                    </span>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <button data-toggle="tooltip" data-placement="left" title="Add to Cart" type="button" class="btn-pd btn-cart" onclick="setLocation('fruits/apple-washington.html')">
                                                            <span>
                                                                <span>Add to Cart</span>
                                                            </span>
                                                        </button>

                                                        <a style="display:none;" href="fruits/apple-washington.html"></a>
                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Wishlist" href="../wishlist/index/add/product/114/form_key/10mZJsjNieAFmLSZ/index.html" class="btn-pd item-wishlist">
                                                            <span>Add to Wishlist</span>
                                                        </a>

                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Compare" href="../catalog/product_compare/add/product/114/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl/form_key/10mZJsjNieAFmLSZ/index-88.html" class="btn-pd item-compare">
                                                            <span>Add to Compare</span>
                                                        </a>

                                                    </div>
                                                </div>
                                                <div class="item col-lg-3 col-md-4 col-sm-4 respl-item">
                                                    <div class="item-inner">
                                                        <div class="w-image-box">
                                                            <div class="item-image">
                                                                <a href="fruits/grapes-red-imported.html"
                                                                   title="Grapes Red (Imported)"
                                                                   class="product-image">
                                                                    <img id="product-collection-image-123"
                                                                         src="../media/catalog/product/cache/1/small_image/370x/9df78eab33525d08d6e5fb8d27136e95/r/e/red_grape.jpg"
                                                                         alt="Grapes Red (Imported)" />
                                                                </a>

                                                            </div>

                                                            <div class="sale-item">
                                                                <span class="txt-label">Sale</span>
                                                            </div>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-review">
                                                                <p class="no-rating"><a title="Write Your Review" href="../review/product/list/id/123/category/8/index.html#review-form">Write Your Review</a></p>
                                                            </div>

                                                            <div class="item-title">
                                                                <a href="fruits/grapes-red-imported.html"
                                                                   title="Grapes Red (Imported)">Grapes Red (Imported)</a>
                                                            </div>
                                                            <div class="item-price">


                                                                <div class="price-box">
                                                                    <span class="regular-price">

                                                                        <span class="price">₹230.00</span>/500 gm
                                                                    </span>

                                                                </div>
                                                            </div>
                                                        </div>

                                                        <button data-toggle="tooltip" data-placement="left" title="Add to Cart" type="button" class="btn-pd btn-cart" onclick="setLocation('fruits/grapes-red-imported.html')">
                                                            <span>
                                                                <span>Add to Cart</span>
                                                            </span>
                                                        </button>

                                                        <a style="display:none;" href="fruits/grapes-red-imported.html"></a>
                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Wishlist" href="../wishlist/index/add/product/123/form_key/10mZJsjNieAFmLSZ/index.html" class="btn-pd item-wishlist">
                                                            <span>Add to Wishlist</span>
                                                        </a>

                                                        <a data-toggle="tooltip" data-placement="left" title="Add to Compare" href="../catalog/product_compare/add/product/123/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl/form_key/10mZJsjNieAFmLSZ/index-89.html" class="btn-pd item-compare">
                                                            <span>Add to Compare</span>
                                                        </a>

                                                    </div>
                                                </div>--%>

                                            </div>
                                            <script type="text/javascript">decorateGeneric($$('ul.products-grid'), ['odd', 'even', 'first', 'last'])</script>

                                            <div class="toolbar-bottom">
                                                <div class="toolbar">
                                                    <div class="toolbar-inner">
                                                        <div class="sorter">
                                                            <div class="view-mode-wrap">
                                                                <p class="view-mode">
                                                                    <strong title="Grid" class="grid">Grid</strong>&nbsp;
                                                                    <a href="fruitsa927.html?mode=list" title="List" class="list">List</a>&nbsp;
                                                                </p>
                                                            </div>

                                                            <div class="sort-by-wrap">
                                                                <div class="sort-by">
                                                                    <label>Sort By</label>
                                                                    <div class="select-new">
                                                                        <div class="select-inner dropdown">
                                                                            <div class="overwrite-sortby"></div>
                                                                            <span class="btn-toolbar" data-toggle="dropdown"></span>
                                                                            <ul id="sort_by" class="dropdown-menu">
                                                                                <li>
                                                                                    <a href="fruitsdddd.html?dir=asc&amp;mode=grid&amp;order=position">Position</a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="fruitscf90.html?dir=asc&amp;mode=grid&amp;order=name">Name</a>
                                                                                </li>
                                                                                <li>
                                                                                    <a href="fruitscac4.html?dir=asc&amp;mode=grid&amp;order=price" class="selected">Price</a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <a class="btn-sortby set-desc arrow-down" href="fruits9945.html?dir=desc&amp;mode=grid&amp;order=price" title="Set Descending Direction">Desc</a>
                                                                </div>
                                                            </div>

                                                            <div class="limiter-wrap">
                                                                <div class="limiter">
                                                                    <label>Show</label>
                                                                    <div class="select-new">
                                                                        <div class="select-inner dropdown">
                                                                            <div class="overwrite-limiter"></div>
                                                                            <span class="btn-toolbar" data-toggle="dropdown"></span>
                                                                            <ul id="limiter" class="dropdown-menu">
                                                                                <li><a href="fruits86aa.html?limit=8&amp;mode=grid" class="selected">8</a></li>
                                                                                <li><a href="fruitsa37b.html?limit=16&amp;mode=grid">16</a></li>
                                                                                <li><a href="fruitsd9b4.html?limit=32&amp;mode=grid">32</a></li>
                                                                                <li><a href="fruitsa0de.html?limit=all&amp;mode=grid" class="selected">All</a></li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <!--<label class="perpage">/page</label>-->
                                                                </div>
                                                            </div>









                                                        </div>



                                                    </div>
                                                    <script>
                                                        jQuery(document).ready(function ($) {
                                                            $(".sort-by-wrap .overwrite-sortby").html($('#sort_by li a.selected').html());
                                                            $('.category-products #limiter li:first-child a').removeClass('selected');
                                                            $(".limiter-wrap .overwrite-limiter").html($('#limiter li a.selected').html());
                                                        });
                                                    </script>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <script>
                                        jQuery(document).ready(function ($) {
                                            $('.minimal-price-link').parent('.price-box').addClass('r-price-box');
                                        });
                                    </script>
                                    <script type="text/javascript">
                                        //<![CDATA[
                                        function pushState(data, link, replace) {
                                            var History = window.History;
                                            if (!History.enabled) {
                                                return false;
                                            }

                                            if (replace) {
                                                History.replaceState(data, document.title, link);
                                            } else {
                                                History.pushState(data, document.title, link);
                                            }
                                        }

                                        function handleEvent(el, event) {
                                            var url, fullUrl;
                                            if (typeof el === 'string') {
                                                url = el;
                                            } else if (el.tagName.toLowerCase() === 'a') {
                                                url = $(el).readAttribute('href');
                                            } else if (el.tagName.toLowerCase() === 'select') {
                                                url = $(el).getValue();
                                            }

                                            if (url.indexOf('?') != -1) {
                                                fullUrl = url + '&isLayerAjax=1';
                                            } else {
                                                fullUrl = url + '?isLayerAjax=1';
                                            }

                                            $('loading').show();
                                            $('ajax-errors').hide();

                                            pushState(null, url, false);

                                            new Ajax.Request(fullUrl, {
                                                method: 'get',
                                                onSuccess: function (transport) {
                                                    if (transport.responseJSON) {
                                                        $('catalog-listing').update(transport.responseJSON.listing);
                                                        $('layered-navigation').update(transport.responseJSON.layer);
                                                        pushState({
                                                            listing: transport.responseJSON.listing,
                                                            layer: transport.responseJSON.layer
                                                        }, url, true);
                                                        ajaxListener();
                                                    } else {
                                                        $('ajax-errors').show();
                                                    }
                                                    $('loading').hide();
                                                }
                                            });

                                            if (event) {
                                                event.preventDefault();
                                            }
                                        }
                                        function ajaxListener() {
                                            var els;
                                            els = $$('div.pager a').concat(
                                                $$('div.sorter a'),
                                                $$('div.pager select'),
                                                $$('div.sorter select'),
                                                $$('div.block-layered-nav a')
                                            );
                                            els.each(function (el) {
                                                if (el.tagName.toLowerCase() === 'a') {
                                                    $(el).observe('click', function (event) {
                                                        handleEvent(this, event);
                                                    });
                                                } else if (el.tagName.toLowerCase() === 'select') {
                                                    $(el).setAttribute('onchange', '');
                                                    $(el).observe('change', function (event) {
                                                        handleEvent(this, event);
                                                    });
                                                }
                                            });
                                        }
                                        document.observe("dom:loaded", function () {
                                            ajaxListener();

                                            (function (History) {
                                                if (!History.enabled) {
                                                    return false;
                                                }

                                                pushState({
                                                    listing: $('catalog-listing').innerHTML,
                                                    layer: $('layered-navigation').innerHTML
                                                }, document.location.href, true);

                                                // Bind to StateChange Event
                                                History.Adapter.bind(window, 'popstate', function (event) {
                                                    if (event.type == 'popstate') {
                                                        var State = History.getState();
                                                        $('catalog-listing').update(State.data.listing);
                                                        $('layered-navigation').update(State.data.layer);
                                                        ajaxListener();
                                                    }
                                                });
                                            })(window.History);
                                        });
                                        //]]>
                                    </script>

                                    <script>
                                        jQuery(document).ready(function ($) {
                                            if ($(".hidden-title-category").length > 0) {
                                                $(".category-title").css({ 'display': 'none' });
                                            };
                                        });
                                    </script>
                                </div>
                            </div>                
</asp:Content>
