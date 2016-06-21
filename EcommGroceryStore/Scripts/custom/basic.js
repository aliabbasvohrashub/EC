
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