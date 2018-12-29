<%@ Page Title="" Language="C#" MasterPageFile="~/MasterSabji.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="EcommGroceryStore.List" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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

                        <%--<div id="yt_main" class="yt-main-right yt-main col-main col-lg-9 col-md-9">
                            <div class="yt_main_inner">--%>
                                <noscript>
                                    &lt;div class="global-site-notice noscript"&gt;
                                    &lt;div class="notice-inner"&gt;
                                        &lt;p&gt;
                                            &lt;strong&gt;JavaScript seems to be disabled in your browser.&lt;/strong&gt;&lt;br /&gt;
                                            You must have JavaScript enabled in your browser to utilize the functionality of this website.                &lt;/p&gt;
                                    &lt;/div&gt;
                                &lt;/div&gt;
                                </noscript>


                                <div id="sm_listing_tabs_167860261714624220761" class="super-category-block first-load">

                                    <div class="block-title-default">
                                        <h2>
                                            <a title="Vegetables" href="products/vegetables">
                                                <span id="spantitle">Pan Asian</span>
                                            </a>
                                        </h2>
                                    </div>

                                    <div class="supercat-des">
                                    </div>

                                    <div class="super-cat-wrapper">
                                        <div class="customNavigation custom-nav-default">
                                            <a title="Previous" class="button-default prev-cat prev-super-cat-30 prev-carousel1 icon-angle-left"></a>
                                            <a title="Next" class="button-default next-cat next-super-cat-30 next-carousel1 icon-angle-right"></a>
                                        </div>

                                        <div class="overflow-owl-slider">
                                            <div class="border-cat">
                                                <div class="rw-margin">
                                                    <div class="ltabs-items-container slider-cat-30 carousel1">
                                                    </div>
                                                </div>
                                            </div>
                                            <script>
                                                $(document).ready(function ($) {
                                                    var querystring = (window.location.href).substring((window.location.href).lastIndexOf('/') + 1, (window.location.href).length);
                                                     
                                                    var res = querystring.split("#");
                                                    var maincat = res[0];
                                                    $("#spantitle").text(unescape(maincat));
                                                    var subcat = res[1]; 

                                                    GetAllItemsFromMainCategoryAndSubCategory(maincat, subcat);
                                                    $.when(GetAllItemsFromMainCategoryAndSubCategory(maincat, subcat)).done(function (data) {
                                                        if (data.length > 0) { 
                                                            getHomepagecat_30productsAndGenerateHtml(data, "div.ltabs-items-container.slider-cat-30.carousel1");
                                                            var owl_cat_30 = $(".carousel1");
                                                            owl_cat_30.owlCarousel({
                                                                itemsCustom: [
                                                                    [0, 1],
                                                                    [480, 2],
                                                                    [768, 3],
                                                                    [992, 3],
                                                                    [1200, 4]
                                                                ],
                                                                navigation: false, // Show next and prev buttons
                                                                slideSpeed: 800,
                                                                stopOnHover: true,
                                                                paginationSpeed: 400,
                                                                autoPlay: true,
                                                                pagination: false,
                                                            });

                                                            $(".prev-carousel1").show();
                                                            $(".next-carousel1").show();

                                                            $(".prev-carousel1").click(function () {
                                                                owl_cat_30.trigger('owl.next');
                                                            });
                                                            $(".next-carousel1").click(function () {
                                                                owl_cat_30.trigger('owl.prev');
                                                            });
                                                        }
                                                        else {
                                                            $(".prev-carousel1").hide();
                                                            $(".next-carousel1").hide();
                                                        }
                                                    });
                                                });
                                            </script>
                                        </div>

                                    </div>
                                </div>
                          <%--  </div>
                        </div>--%>

                        <div style="clear: both;"></div>

                    </div>
                </div>
            </div>
        </div>
     </div>
</asp:Content>


