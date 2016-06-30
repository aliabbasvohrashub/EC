<%@ Page Title="" Language="C#" MasterPageFile="~/MasterSabji.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="EcommGroceryStore.checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server"> 
    <div class="yt-main-inner yt-content-inner">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="col-1-wrapper">
                        <div class="cart">
                            <div class="page-title title-buttons">
                                <h1>Shopping Cart</h1>
                            </div>
                            <ul class="messages">
                                <li class="notice-msg">
                                    <ul>
                                        <li><span>Minimum order amount is ₹200.00</span></li>
                                    </ul>
                                </li>
                            </ul>
                            <form action="http://www.onlinesabjiwala.com/checkout/cart/updatePost/" method="post">
                                <input name="form_key" type="hidden" value="pQkADNkFwZmhwAqv">
                                <fieldset>
                                    <table id="shopping-cart-table" class="data-table cart-table">

                                        <thead>
                                            <tr class="first last">
                                                <th rowspan="1">&nbsp;</th>
                                                <th rowspan="1"><span class="nobr">Product Name</span></th>
                                                <th rowspan="1"></th>
                                                <th class="a-center" colspan="1"><span class="nobr">Unit Price</span></th>
                                                <th rowspan="1" class="a-center">Qty</th>
                                                <th class="a-center" colspan="1">Subtotal</th>
                                                <th rowspan="1" class="a-center">&nbsp;</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr class="first last">
                                                <td colspan="50" class="a-right last">
                                                    <button type="button" title="Continue Shopping" class="button btn-continue" onclick="setLocation('http://www.onlinesabjiwala.com/fruits-vegetables/fruits/coconut-water.html')"><span><span>Continue Shopping</span></span></button>
                                                    <button type="button" name="update_cart_action" id="update_cart_action" value="update_qty" title="Update Shopping Cart" class="button btn-update"><span><span>Update Shopping Cart</span></span></button>
                                                    <button type="submit" name="update_cart_action" value="empty_cart" title="Clear Shopping Cart" class="button btn-empty" id="empty_cart_button"><span><span>Clear Shopping Cart</span></span></button>
                                                    <!--[if lt IE 8]>
                            <input type="hidden" id="update_cart_action_container" />
                            <script type="text/javascript">
                            //<![CDATA[
                                Event.observe(window, 'load', function()
                                {
                                    // Internet Explorer (lt 8) does not support value attribute in button elements
                                    $emptyCartButton = $('empty_cart_button');
                                    $cartActionContainer = $('update_cart_action_container');
                                    if ($emptyCartButton && $cartActionContainer) {
                                        Event.observe($emptyCartButton, 'click', function()
                                        {
                                            $emptyCartButton.setAttribute('name', 'update_cart_action_temp');
                                            $cartActionContainer.setAttribute('name', 'update_cart_action');
                                            $cartActionContainer.setValue('empty_cart');
                                        });
                                    }

                                });
                            //]]>
                            </script>
                            <![endif]-->
                                                </td>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <%--<tr class="first last odd">
                                                <td class="a-center"><a href="http://www.onlinesabjiwala.com/coconut-water.html" title="Coconut water" class="product-image">
                                                    <img src="http://www.onlinesabjiwala.com/media/catalog/product/cache/1/thumbnail/84x/9df78eab33525d08d6e5fb8d27136e95/g/r/green_coconut.jpg" alt="Coconut water"></a></td>
                                                <td class="a-center">
                                                    <h2 class="product-name">
                                                        <a href="http://www.onlinesabjiwala.com/coconut-water.html">Coconut water</a>
                                                    </h2>
                                                </td>
                                                <td class="a-center">
                                                    <a href="http://www.onlinesabjiwala.com/checkout/cart/configure/id/32168/" title="Edit item parameters">Edit</a>
                                                </td> 
                                                <td class="a-center">
                                                    <span class="cart-price">
                                                        <span class="price">₹45.00</span>
                                                    </span> 
                                                </td>
                                                <td class="a-center">
                                                    <input name="cart[32168][qty]" value="1" size="4" title="Qty" class="input-text qty a-center" maxlength="12">
                                                </td>
                                                <td class="a-center">
                                                    <span class="cart-price"> 
                                                        <span class="price">₹45.00</span>
                                                    </span>
                                                </td>
                                                <td class="a-center last"><a href="http://www.onlinesabjiwala.com/checkout/cart/delete/id/32168/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2NoZWNrb3V0L2NhcnQv/" title="Remove item" class="icon-remove btn-remove btn-remove2"></a></td>
                                            </tr>--%>
                                        </tbody>
                                    </table>
                                    <script type="text/javascript">decorateTable('shopping-cart-table')</script>
                                </fieldset>
                            </form>
                            <div class="cart-collaterals">
                                <div class="col2-set">
                                    <div class="row">
                                        <div class="col-1 col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                        </div>
                                        <div class="col-2 col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                            <form id="discount-coupon-form" action="http://www.onlinesabjiwala.com/checkout/cart/couponPost/" method="post">
                                                <div class="discount">
                                                    <h2>Discount Codes</h2>
                                                    <div class="discount-form">
                                                        <label for="coupon_code">Enter your coupon code if you have one.</label>
                                                        <input type="hidden" name="remove" id="remove-coupone" value="0">
                                                        <div class="input-box">
                                                            <input class="input-text" id="coupon_code" name="coupon_code" value="">
                                                        </div>
                                                        <div class="buttons-set">
                                                            <button type="button" title="Apply Coupon" class="button" onclick="discountForm.submit(false)" value="Apply Coupon"><span><span>Apply Coupon</span></span></button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                            <script type="text/javascript">
                                                //<![CDATA[
                                                var discountForm = new VarienForm('discount-coupon-form');
                                                discountForm.submit = function (isRemove) {
                                                    if (isRemove) {
                                                        $('coupon_code').removeClassName('required-entry');
                                                        $('remove-coupone').value = "1";
                                                    } else {
                                                        $('coupon_code').addClassName('required-entry');
                                                        $('remove-coupone').value = "0";
                                                    }
                                                    return VarienForm.prototype.submit.bind(discountForm)();
                                                }
                                                //]]>
                                            </script>
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                            <div class="totals">
                                                <table id="shopping-cart-totals-table">
                                                    <colgroup>
                                                        <col>
                                                        <col width="1">
                                                    </colgroup>
                                                    <tfoot>
                                                        <tr>
                                                            <td style="" class="a-right" colspan="1">
                                                                <strong>Grand Total</strong>
                                                            </td>
                                                            <td style="" class="a-right">
                                                                <strong><span id="checkout_grandtotal" class="price"> </span></strong>
                                                            </td>
                                                        </tr>
                                                    </tfoot>
                                                    <tbody>
                                                        <tr>
                                                            <td style="" class="a-right" colspan="1">Subtotal    </td>
                                                            <td style="" class="a-right">
                                                                <span id="checkout_subtotal" class="price"> </span>    </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <ul class="checkout-types">
                                                    <li>
                                                        <button type="button" title="Proceed to Checkout" class="button btn-proceed-checkout btn-checkout no-checkout" 
                                                            disabled="disabled" onclick="window.location='http://www.onlinesabjiwala.com/checkout/onepage/';">
                                                            <span><span>Proceed to Checkout</span></span>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
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
    <script src="/../Scripts/custom/cart.js"></script>
    <script type="text/javascript">
              $("#update_cart_action").click(function () { 
                  UpdateCart();
              }); 
    </script>
    
</asp:Content>
