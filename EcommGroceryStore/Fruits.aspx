<%@ Page Title="" Language="C#" MasterPageFile="~/mstEcommerce.Master" AutoEventWireup="true" CodeBehind="Fruits.aspx.cs" Inherits="EcommGroceryStore.Fruits" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <script type="text/javascript">// <![CDATA[
        $(document).ready(function ($) {
            jQuery('#show_paginator').bootpag({
                total: 23,
                page: 3,
                maxVisible: 5
            }).on('page', function (event, num) {
                jQuery("#dynamic_content").html("Page " + num); // or some ajax content loading...
                 getFruits(num);

            });

            function callAPI(prm) {
                alert('i am called ' + prm);
            }
        });
        // ]]></script>
    <script src="Scripts/custom/listfruits.js"></script>
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
            <ul class="messages">
                <li class="success-msg">
                    <ul>
                        <li><span>The product Green Grapes Indian has been added to comparison list.</span></li>
                        <li><span>The product Green Chilli has been added to comparison list.</span></li>
                        <li><span>The product Grapes Red (Imported) has been added to comparison list.</span></li>
                        <li><span>The product Ginger has been added to comparison list.</span></li>
                    </ul>
                </li>
            </ul>


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
                                                        <a href="#" onclick="getFruits(1);">Position</a>
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
                                                <ul id="limiter1" class="dropdown-menu">
                                                    <li><a href="#">8</a></li>
                                                    <li><a href="#">16</a></li>
                                                    <li><a href="#">32</a></li>
                                                    <li><a href="#" class="selected">All</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div id="dynamic_content">Pagination goes here</div>
                                <div id="show_paginator"></div> 
                               
                            </div>
                        </div>
                        <script>
                            $(document).ready(function ($) {
                                console.log('dom loaded');
                                $(".sort-by-wrap .overwrite-sortby").html($('#sort_by li a.selected').html());
                                $('.category-products #limiter li:first-child a').removeClass('selected');
                                $(".limiter-wrap .overwrite-limiter").html($('#limiter li a.selected').html());

                                $("ul#limiter.dropdown-menu li").change(function () {
                                    alert($(this).val());
                                    console.log($(this).val());
                                });
                            });
                        </script>
                    </div>
                    <div class="products-grid row">

                      
                    </div>
                    
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
                                                    <ul id="limiter" class="dropdown-menu" onclick="ulclicked(this.value)">
                                                        <li><a href="#">8</a></li>
                                                        <li><a href="#">16</a></li>
                                                        <li><a href="#">32</a></li>
                                                        <li><a href="#" class="selected">All</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <script>
                                function ulclicked(val){
                                    alert('called' + val);
                                }
                                $(document).ready(function ($) {
                                    console.log('dom loaded');
                                    $(".sort-by-wrap .overwrite-sortby").html($('#sort_by li a.selected').html());
                                    $('.category-products #limiter li:first-child a').removeClass('selected');
                                    $(".limiter-wrap .overwrite-limiter").html($('#limiter li a.selected').html());

                                    $("ul#limiter").click(function () {
                                        alert($(this).val());
                                        console.log($(this).val());
                                    });
                                });
                            </script>
                        </div>
                    </div>
                </div>
            </div> 
            
        </div>
    </div>  
</asp:Content>
