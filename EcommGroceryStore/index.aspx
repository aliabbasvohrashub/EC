<%@ Page Title="" Language="C#" MasterPageFile="~/mstEcommerce.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="EcommGroceryStore.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="yt_content" class="yt-content wrap">
        <div class="yt-breadcrumbs">
            <div class="container">
                <div class="row">
                </div>
            </div>
        </div>

        <div class="yt-content-inner">
            <div class="container">
                <div class="row">
                    <div class="col-2-wrapper">
                        <div id="yt_left" class="col-lg-3 col-md-3">
                            <div class="yt-left-wrap">
                                <!--<link media="all" href="" type="text/css" rel="stylesheet">-->
                                <!--<link media="all" href="" type="text/css" rel="stylesheet">-->
                                <div class="mega-left-title">
                                    <strong>Shop</strong>
                                </div>

                                <div class="css_effect sm_megamenu_wrapper_vertical_menu sambar" id="sm_megamenu_menu5739aaebe1abb" data-sam="6717955891463397099">
                                    <div class="sambar-inner">
                                        <a class="btn-sambar" data-sapi="collapse" href="#sm_megamenu_menu5739aaebe1abb">
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                        </a>
                                        <ul class="sm-megamenu-hover sm_megamenu_menu sm_megamenu_menu_black" data-jsapi="on">
                                            <li class="other-toggle          sm_megamenu_lv1 sm_megamenu_drop parent">
                                                <a class="sm_megamenu_head sm_megamenu_drop " href="fruits-vegetables.html" id="sm_megamenu_4">
                                                    <span class="sm_megamenu_icon sm_megamenu_nodesc">
                                                        <span class="sm_megamenu_title">Fruits &amp; Vegetables</span>


                                                    </span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!--End Module-->
                                <script type="text/javascript">
                                    // <![CDATA[ 
                                    jQuery(document).ready(function ($) {
                                        $(".sm_megamenu_wrapper_horizontal_menu .sm_megamenu_menu > li").hover(function () {
                                            var dropdown_w = $(this).children('div').width();
                                            var ul_width = $('.sm_megamenu_menu').width();
                                            var left_li = $(this).position().left;
                                            if (dropdown_w >= (ul_width - left_li)) {
                                                $(this).children('div').css({ 'right': '0px' });
                                            }
                                        });
                                    });
                                    // ]]> 
                                </script>


                                <script type="text/javascript">
                                    // <![CDATA[ 
                                    jQuery(document).ready(function ($) {
                                        $(".sm_megamenu_wrapper_vertical_menu .sm_megamenu_menu > li").has("div").addClass('parent-child');

                                        $('.sm_megamenu_wrapper_horizontal_menu .rw-url > a.sm_megamenu_head').attr('href', 'index.html');
                                    });
                                    // ]]> 
                                </script>

                                <div class="owl-carousel owl-theme">
                                  <div> Your Content </div>
                                  <div> Your Content </div>
                                  <div> Your Content </div>
                                  <div> Your Content </div>
                                  <div> Your Content </div>
                                  <div> Your Content </div>
                                  <div> Your Content </div>
                                </div>


                                <div class="block block-left-products">
                                    <div class="block-title">
                                        <strong>
                                            <span>Best Seller</span>
                                        </strong>
                                        <div class="customNavigation nav-left-product">
                                            <a title="Previous" class="btn-bs prev-bs icon-angle-left"></a>
                                            <a title="Next" class="btn-bs next-bs icon-angle-right"></a>
                                        </div>
                                    </div>

                                    <div id="sm_basic_products_1462422055796027053" class="block-content">
                                        <div class="slider-left-product basic-product" style="opacity: 1;">
                                            
                                                 
                                             </div>
                                        </div>
                                    </div>
                                    <!-- End Sm-basic-products -->
                                     
                                </div>
                                <div class="block faqs-block">
                                    <div class="block-title"><strong><span>FAQs</span> </strong></div>
                                    <div class="block-content">
                                        <div class="faq-wrapper">
                                            <div class="faq-item">
                                                <div id="section1" class="accordion accordion-close"><span>How do I register?</span></div>
                                                <div class="container-accordion" style="display: none;">
                                                    <div class="content">You can register by clicking on the "Login" link at the top right corner of the homepage its free and easy!. Just provide the information in the form that appears and submit the registration information.</div>
                                                </div>
                                            </div>
                                            <div class="faq-item">
                                                <div id="section2" class="accordion accordion-open"><span>What is 'My Account'?</span></div>
                                                <div class="container-accordion">
                                                    <div class="content">'My Account' allows you complete control over your information and transactions on Onlinesabjiwala</div>
                                                </div>
                                            </div>
                                            <div class="faq-item">
                                                <div id="section3" class="accordion accordion-close"><span>How do I update my information?</span></div>
                                                <div class="container-accordion" style="display: none;">
                                                    <div class="content">It is easy to update your Onlinesabjiwala account and view your orders any time through 'My Account'.</div>
                                                </div>
                                            </div>
                                            <div class="faq-item">
                                                <div id="section4" class="accordion accordion-close"><span>What are the modes of payment?</span></div>
                                                <div class="container-accordion" style="display: none;">
                                                    <div class="content">
                                                        You can pay for your order on Onlinesabjiwala.com using the following modes of payment:<br>
                                                        a. Cash on delivery
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <script type="text/javascript">// <![CDATA[
                                        jQuery(document).ready(function ($) {
                                            $('.accordion').accordion_snyderplace({
                                                defaultOpen: 'section2',
                                                speed: 'fast',
                                                animateOpen: function (elem, opts) { //replace the standard slideUp with custom function
                                                    elem.next().slideFadeToggle(opts.speed);
                                                },
                                                animateClose: function (elem, opts) { //replace the standard slideDown with custom function
                                                    elem.next().slideFadeToggle(opts.speed);
                                                }
                                            });
                                            //custom animation for open/close
                                            $.fn.slideFadeToggle = function (speed, easing, callback) {
                                                return this.animate({ opacity: 'toggle', height: 'toggle' }, speed, easing, callback);
                                            };
                                        });
                                        // ]]></script>
                                </div>
                            </div>
                        </div>



                        <div style="clear: both;"></div>


                        <ul class="list-services">
                            <li class="item-service col-lg-4 col-md-4 col-sm-4"><a title="Free Shipping" href="#">
                                <img title="Same Day Delivery" alt="Same Day Delivery" src="media/wysiwyg/same-day-delivery.jpg"></a></li>
                            <li class="item-service col-lg-4 col-md-4 col-sm-4"><a title="Guaranteed" href="#">
                                <img title="We Deliver to your doorstep" alt="We Deliver to your doorstep" src="media/wysiwyg/we-pick.jpg"></a></li>
                            <li class="item-service col-lg-4 col-md-4 col-sm-4"><a title="Deal" href="#">
                                <img title="Get 5% Discount " alt="Deal Get 5% Discount " src="media/wysiwyg/get-5-percent-off.jpg"></a></li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
