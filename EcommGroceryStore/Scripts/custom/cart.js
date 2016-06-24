function generateCart(cart) {
      

    if (document.getElementById('cartid').value == '') {
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
                var product = {
                    CartId: $("#cartid").val(),
                    ProductId: $("#ProductId").text(),
                    Quantity: $("#qty").val()

                }
                AddProductToCart(product);
            },
            error: function (xhr, textStatus, errorThrown) {
                console.log('Cart could not be generated and product could not be added to cart');
            }
        });
    }
}




function generateCartOnly(cart) {

    if (document.getElementById('cartid').value == '') {
        var APIRoute = "/api/Cart/PostCart";
        //var cart = { ip: ip, IsActive: IsActive };
        $.ajax({
            url: APIRoute,
            type: 'POST',
            contentType: "application/json",
            //contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            data: JSON.stringify(cart),
            success: function (data, textStatus, xhr) {
                console.log(data);
                document.getElementById('cartid').value = data.CartId;
            },
            error: function (xhr, textStatus, errorThrown) {
                console.log('Cart could not be generated');
            }
        });
    }
}


function AddProductToCart(cartdetail) {
    if (document.getElementById('cartid').value != '') {
        cartdetail.CartId = document.getElementById('cartid').value;
        var APIRoute = "/api/Cart/PostCartDetail";
        $.ajax({
            url: APIRoute,
            type: 'POST',
            contentType: "application/json",
            data: JSON.stringify(cartdetail),
            success: function (data, textStatus, xhr) {
                console.log(data);
                console.log(data.CartDetailId);
                AddUpdateCartLabel();
                //document.getElementById('CartDetailId').value = data.CartDetailId;
            },
            error: function (xhr, textStatus, errorThrown) {
                console.log('product could not be added to cart');
            }
        });
    }
}
 


function AddUpdateCartLabel() {
    if (document.getElementById('cartid').value != '') {
        var CartId = document.getElementById('cartid').value;
        var APIRoute = "/api/Cart/GetCartDetail";
        $.ajax({
            url: APIRoute,
            type: 'GET',
            contentType: "application/json",
            data: { id:CartId},
            success: function (data, textStatus, xhr) {
                //console.log(data);
                $('.item-cart').text(data.objvmCartDetailSummary.TotalAmount + '(' + data.objvmCartDetailSummary.TotalItems + ')');
                $(".block-inner > ol").remove()
                generateHiddenCart(data.objvmCartDetails); 
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
             "<a href=\"\" title=\"" + data[i].productDetail.ProductName + "\" class=\"product-image\">" +
             "<img src=\"/" + data[i].productDetail.ImageURL + "\" alt=\"" + data[i].productDetail.ProductName + "\"></a>" +
                "<div class=\"detail-item\">" +
                    "<div class=\"product-details\">" +
                        "<a href=\"" + data[i].productDetail.ProductName + "\" title=\"Remove This Item\" onclick=\"return confirm('Are you sure you would like to remove this item from the shopping cart?');\" class=\"btn-remove\"><span></span></a>" +
                          "<a href=\"" + data[i].productDetail.ProductName + "\" title=\"Edit item\" class=\"btn-edit\"><span></span></a>" +

                        "<div class=\"rating-container\">" +
                            "<p class=\"no-rating\"><a title=\"Write Your Review\" href=\"" + data[i].productDetail.ProductName + ">Write Your Review</a></p>" +
                        "</div>" +
                        "<p class=\"product-name\">" +
                            "<a title=\"" + data[i].productDetail.ProductName + "\" href=\"" + data[i].productDetail.ProductName + "\">" + data[i].productDetail.ProductName + "</a>" +
                            "<span class=\"qty-number\">" + data[i].Quantity + "</span>" +
                        "</p> " +
                    "</div>" +

                    "<div class=\"product-details-bottom\">" +
                        "<span class=\"price\">" + data[i].NetAmount + "</span>" +

                    "</div>" +
                "</div>" +
            "</li>" +
        "</ol>";

        $(".block-inner").append(res);
    }
     
}


/*
<ol id="minicart-sidebar" class="mini-products-list">  
    <li class="item last odd">
        <a href="http://www.onlinesabjiwala.com/garlic.html" title="Garlic" class="product-image">
            <img src="http://www.onlinesabjiwala.com/media/catalog/product/cache/1/thumbnail/72x72/9df78eab33525d08d6e5fb8d27136e95/g/a/garlic1.jpg" alt="Garlic"></a>

        <div class="detail-item">
            <div class="product-details">
                <a href="http://www.onlinesabjiwala.com/checkout/cart/delete/id/31592/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2NoZWNrb3V0L2NhcnQvYWRkL3VlbmMvYUhSMGNEb3ZMM2QzZHk1dmJteHBibVZ6WVdKcWFYZGhiR0V1WTI5dEwyZGhjbXhwWXk1b2RHMXNQMU5KUkQwNE1Ua3pNakl6TWpBM09XRXhZV0prTmpnMU5EQmtOalkxTm1WbE4yWTFOQ1pmWDE5VFNVUTlWUSwsL3Byb2R1Y3QvOC9mb3JtX2tleS8yRVJCY3VMcUpGMVJpMW14Lw,,/" title="Remove This Item" onclick="return confirm('Are you sure you would like to remove this item from the shopping cart?');" class="btn-remove"><span></span></a>
                <a href="http://www.onlinesabjiwala.com/checkout/cart/configure/id/31592/" title="Edit item" class="btn-edit"><span></span></a>

                <div class="rating-container">
                    <p class="no-rating"><a title="Write Your Review" href="http://www.onlinesabjiwala.com/review/product/list/id/8/#review-form">Write Your Review</a></p>
                </div> 
                <p class="product-name">
                    <a title="Garlic" href="http://www.onlinesabjiwala.com/garlic.html">Garlic</a>
                    <span class="qty-number">03</span>
                </p> 
            </div>

            <div class="product-details-bottom"> 
                <span class="price">₹55.00</span> 
                <!--p-->
                <!--p-->
            </div>
        </div>

        <!--div class="edit-remove"></div-->
    </li>
</ol>
*/