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
                    Qty: $("#qty").text()
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
                console.log(data.CartDetailId);
                //document.getElementById('CartDetailId').value = data.CartDetailId;
            },
            error: function (xhr, textStatus, errorThrown) {
                console.log('product could not be added to cart');
            }
        });
    }
}
 