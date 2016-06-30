﻿
document.getElementById('ip').value = myip;


if (document.getElementById('cartid').value == '')
{
    var cartid = getCookie("cartid");
    if (cartid == "") {
        var cart = new Object();
        cart.IpAddress = $("#ip").val();
        cart.IsActive = true;
        var APIRoute = "/api/Cart/PostCart";
        //var cart = { ip: ip, IsActive: IsActive };
        $.ajax({
            url: APIRoute,
            type: 'POST',
            contentType: "application/json",
            //contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            data: JSON.stringify(cart),
            success: function (data, textStatus, xhr) {
                document.getElementById('cartid').value = data.CartId;
                checkCookie();
            },
            error: function (xhr, textStatus, errorThrown) {
                console.log('Cart could not be generated');
            }
        });
    } else {
        var cartid = getCookie("cartid"); 
        document.getElementById('cartid').value = cartid;  
    }
}

function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    var expires = "expires=" + d.toGMTString();
    document.cookie = cname + "=" + cvalue + "; " + expires;
}

function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}

function checkCookie() {
    var cartid = getCookie("cartid"); 
    if (cartid == "") {
        alert('i am called again');
    setCookie("cartid", document.getElementById('cartid').value, 30);
    } 
}


if (document.getElementById('cartid').value != '') {
    var cartid = getCookie("cartid");
    if (cartid != "") {   
        AddUpdateCartLabel();
    } 
}
$(".search-header.mini-cart-header").click(function () {
    if ($(".block-content").css('display') == 'none') {
        $(".block-content").css('display', '');
    } else {
        $(".block-content").css('display', 'none');
    }
});


function AddUpdateCartLabel() {
    if (document.getElementById('cartid').value != '') {
        var CartId = document.getElementById('cartid').value;
        var APIRoute = "/api/Cart/GetCartDetail";
        $.ajax({
            url: APIRoute,
            type: 'GET',
            contentType: "application/json",
            data: { id: CartId },
            success: function (data, textStatus, xhr) {
                //console.log(data);
                $('.item-cart').text(data.objvmCartDetailSummary.TotalAmount + '(' + data.objvmCartDetailSummary.TotalItems + ')');
                $("#block-inner > ol").remove();

                if ($("#checkout_grandtotal").length) {
                    $("#checkout_grandtotal").text(data.objvmCartDetailSummary.TotalAmount);
                    $("#checkout_subtotal").text(data.objvmCartDetailSummary.TotalAmount);
                }
                generateHiddenCart(data.objvmCartDetails);
                console.log('from details page webservice call ended ' );
            },
            error: function (xhr, textStatus, errorThrown) {
                console.log('CartList Could not be retrieved');
            }
        });
    }
}

function generateHiddenCart(data) {

    for (var i = 0; i < data.length; i++) {
        var res = "<ol id=\"minicart-sidebar\" class=\"mini-products-list\">" +
    "<li class=\"item last odd\">" +
            "<a href=\"" + data[i].productDetail.ProductName + "\" title=\"" + data[i].productDetail.ProductName + "\" class=\"product-image\">" +
                  "<img src=\"/" + data[i].productDetail.ImageURL + "\" alt=\"" + data[i].productDetail.ProductName + "\">"+
            "</a> "+
    "<div class=\"detail-item\">"+
     "<div class=\"product-details\">" +
    	"<a href=\"" + data[i].productDetail.ProductName + "\"  title=\"Remove This Item\" onclick=\"return confirm('Are you sure you would like to remove this item from the shopping cart?');\" class=\"btn-remove\"><span></span> </a>     " +
              
        "<a href=\"Edit/" + data[i].productDetail.ProductName + "\"  title=\"Edit item\" class=\"btn-edit\"><span></span></a> "+
				"<div class=\"rating-container\">"+
			    "<p class=\"no-rating\"><a title=\"Write Your Review\" href=\"Review/" + data[i].productDetail.ProductName + "\" >Write Your Review</a></p></div>  "+ 
       " <p class=\"product-name\">"+
			 "<a title=\"" + data[i].productDetail.ProductName + "\" href=\"ProductDetail/" + data[i].productDetail.ProductName + "\">"+ data[i].productDetail.ProductName +" </a> <span class=\"qty-number\">" + data[i].Quantity + "</span></p>  </div> "+
        
	"<div class=\"product-details-bottom\"> <span class=\"price\"> ₹" + data[i].NetAmount + "</span>  </div></div> <!--div class=\"edit-remove\"></div--></li></ol> ";
        //$("#block-inner").append(res);
        $(".price-total").before(res); 

        if ($('#shopping-cart-table').length) {
            var res1 = "<tr class=\"first last odd\">" +
                        "<td style=\"display:none;\">" + +data[i].productDetail.ProductId + "</td>" +
                        "<td class=\"a-center\"><a href=\"\" title=\"" + data[i].productDetail.ImageURL + "\" class=\"product-image\">" +
                         "<img height=\"85px\" width=\"85px\" src=\"\\" + data[i].productDetail.ImageURL + "\" alt=\"Coconut water\"></a></td>" +
                         "<td class=\"a-center\">" +
                         "<h2 class=\"product-name\">" +
                         "<a href=\"\">" + data[i].productDetail.ProductName + "</a>" +
                         "</h2>" +
                         "</td>" +
                         "<td class=\"a-center\">" +
                         "<a href=\"\" title=\"Edit item parameters\">Edit</a>" +
                         "</td> " +
                         "<td class=\"a-center\">" +
                         "<span class=\"cart-price\">" +
                         "    <span class=\"price\">₹" + data[i].productDetail.PricePerUnit + "</span>" +
                         "</span> " +
                         "</td>" +
                         "<td class=\"a-center\">" +
                         "<input name=\"" + data[i].productDetail.ProductName + "\" value=\"" + data[i].Quantity + "\" size=\"4\" title=\"Qty\" class=\"input-text qty a-center\" maxlength=\"12\">" +
                         "</td>" +
                         "<td class=\"a-center\">" +
                         "<span class=\"cart-price\"> " +
                         "    <span class=\"price\">₹" + data[i].Amount + "</span>" +
                         "</span>" +
                         "</td>" +
                         "<td class=\"a-center last\"><a href=\"\" title=\"Remove item\" class=\"icon-remove btn-remove btn-remove2\"></a></td>" +
                         "</tr>";
            $('#shopping-cart-table > tbody').append(res1);
        }
    }
}
    
function UpdateCart() {
    var listOfObjects = [];
    if (document.getElementById('cartid').value != '') {
        $("#shopping-cart-table > tbody > tr").each(function () {             
            //console.log($(this).find('td').eq(0).text() + ' ' + $(this).find('td').eq(5).find('input').val());
            
            var product = {
                CartId: $("#cartid").val(),
                ProductId: $(this).find('td').eq(0).text(),
                Quantity: $(this).find('td').eq(5).find('input').val()
            }
            listOfObjects.push(product);          
        });
        AddProductListToCart(listOfObjects);
    }
}
 