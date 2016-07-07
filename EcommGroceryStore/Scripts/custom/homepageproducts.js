//first step call the webservice and get data
function getcarouselproducts() { 
    return $.getJSON("/api/ProductDetails/getProductList",
       function (data) {
       });
}
 
//use the data to generate mark up 

function getHomepageproductsAndGenerateHtml(data) {
    var totalrecords = 0;
    var totaloutput = "";
    $.each(data, function (key, val) {
        
        var val2 = generateMarkup(val.ProductName, val.ImageURL, val.Description, val.Quantity, val.PricePerUnit);
        totalrecords++;
        totaloutput += val2;
        //console.log(totalrecords + ' ' + (totalrecords % 4));
        //console.log(totaloutput);
        
        if (totalrecords % 4 == 0 && totalrecords != 0) {
            //console.log(totalrecords + ' ' + (totalrecords % 4));
            totaloutput = "<div class=\"item-left-products item\">" + totaloutput + "</div>";
            $("div.slider-left-product.basic-product.owl-carousel.owl-theme").append(totaloutput);
            //console.log(totaloutput);
            val2 = "";
            totaloutput = "";
        }
    });
}

// use this function to generate the markup
function generateMarkup(productName, imageURL, description, quantity, pricePerUnit) {

    var val =     "   <div class=\"bs-item cf\">"
			    + "    <!-- Begin bs-item-inner -->"
			    + "    <div class=\"bs-item-inner\">"
                + ""
				+ "        <div class=\"bs-image\">"
				+ "	        <a href=\"\\Details\\" + productName + "\" title=\"" + productName + "\">"
				+ "		        <img src=\"\\" + imageURL + "\" title=\"Coconut water\" alt=\"" + productName + "\">"
				+ "	        </a>"
				+ "        </div>"  
				+ "        <!-- Begin bs-content -->"
				+ "        <div class=\"bs-content\">"
				+ "	        <div class=\"bs-title\">"
				+ "		        <a href=\"\\Details\\" + productName + "\" title=\"" + productName + "\">" + productName + "</a>"
				+ "	        </div>"
				+ "	        <div class=\"bs-price\">"
				+ "		        <div class=\"sale-price\">"
				+ "			        <div class=\"price-box\">"
				+ "				        <span class=\"regular-price\">"
				+ "					        <span class=\"price\">₹" + pricePerUnit + "</span>/1 Pc</span>"
				+ "			        </div>"
				+ "		        </div>"
				+ "	        </div>"
				+ "	        <div class=\"bs-btn-addtocart\">"
				+ "		        <button type=\"button\" title=\"Add to Cart\" class=\"button btn-cart\""
                + "            onclick=\"setLocation('http://www.onlinesabjiwala.com/checkout/cart/add/uenc/aHR0cDovL3d3dy5vbmxpbmVzYWJqaXdhbGEuY29tL2ZydWl0cy12ZWdldGFibGVzL2ZpbHRlci9jYXQvMzAuaHRtbD9hbXAlM0JsaW1pdD0xNiZkaXI9ZGVzYyZvcmRlcj1uYW1lJnA9Mg,,/product/68/form_key/10mZJsjNieAFmLSZ/')\">"
                + "            <span><span>Add to Cart</span></span>"
                + "        </button>"
                + "        </div>"
                + "        </div>"
                + "        <!-- End bs-content -->"
                + "        </div>"
                + "        <!-- End bs-item-inner -->"
                + "     </div>"

    return val; 
}

//first step call the webservice and get data
function getcarouselcat_29products() { 
    return $.getJSON("/api/ProductDetails/getVegOnlyList",
       function (data) {
       });
}
 
//use the data to generate mark up 

function getHomepagecat_29productsAndGenerateHtml(data) {
   
    $.each(data, function (key, val) { 
        var val2 = generatecat_29Markup(val.ProductName, val.ImageURL, val.Description, val.Quantity, val.PricePerUnit);  
        $("div.ltabs-items-container.slider-cat-29").append(val2);
    });
}

// use this function to generate the markup
function generatecat_29Markup(productName, imageURL, description, quantity, pricePerUnit) {

    var val =  "<div class=\"item item-supercat respl-item\">"
               + "<div class=\"item-inner\">"
               + "     <div class=\"w-image-box\">"
               + "         <span class=\"hover-background\"></span>"
               + "         <div class=\"item-image\">"
               + "             <a href=\"\\Details\\" + productName + "\" class=\"product-image rspl-image\"> "
               + "                 <img src=\"\\" + imageURL + "\" alt=\"" + productName + "\" />"
               + "             </a>"
               + "         </div> "
               + "         <div class=\"sale-item\">"
               + "             <span>Sale</span>"
               + "         </div> "
               + "     </div> "
               + "     <div class=\"item-info\"> "
               + "         <div class=\"item-title\">"
               + "             <a href=\"\\Details\\" + productName + "\" title=\"" + productName + "\">"
               + "               " + productName + ""
               + "             </a>"
               + "         </div> "
               + "         <div class=\"item-price\">"
               + "             <div class=\"sale-price\"> "
               + "                 <div class=\"price-box\">"
               + "                     <span class=\"regular-price\"> "
               + "                         <span class=\"price\">₹" + pricePerUnit + "</span>/1 Kg"
               + "                     </span> "
               + "                 </div>"
               + "             </div>"
               + "         </div> "
               + "     </div> "
               + "     <a class=\"product-image\" style=\"display:none;\" href=\"\\Details\\" + productName + "\"> </a><!--LINK FOR QUICKVIEW-->  "
               + "     <button class=\"btn-pd btn-cart\" data-toggle=\"tooltip\" data-placement=\"left\" title=\"Add to Cart\" onclick=\"setLocation('" + productName + "')\">"
               + "         Add to Cart"
               + "     </button> "
               + "     <a data-toggle=\"tooltip\" data-placement=\"left\" title=\"Add to Wishlist\" href=\"wishlist/index/add/product/29/form_key/P8pJx2VEoRAa8IH3/index.html\" class=\"btn-pd item-wishlist\">Add to Wishlist</a> "
               + " </div>"
               + " </div>"
               + " </div>";

    return val; 
}





//first step call the webservice and get data
function getcarouselcat_30products() {
    return $.getJSON("/api/ProductDetails/getVegOnlyList",
       function (data) {
       });
}

//use the data to generate mark up 

function getHomepagecat_30productsAndGenerateHtml(data) {

    $.each(data, function (key, val) {
        var val2 = generatecat_30Markup(val.ProductName, val.ImageURL, val.Description, val.Quantity, val.PricePerUnit);
        $("div.ltabs-items-container.slider-cat-30").append(val2);
    });
}

// use this function to generate the markup
function generatecat_30Markup(productName, imageURL, description, quantity, pricePerUnit) {

    var val = "<div class=\"item item-supercat respl-item\">"
               + "<div class=\"item-inner\">"
               + "     <div class=\"w-image-box\">"
               + "         <span class=\"hover-background\"></span>"
               + "         <div class=\"item-image\">"
               + "             <a href=\"\\Details\\" + productName + "\" class=\"product-image rspl-image\"> "
               + "                 <img src=\"\\" + imageURL + "\" alt=\"" + productName + "\" />"
               + "             </a>"
               + "         </div> "
               + "         <div class=\"sale-item\">"
               + "             <span>Sale</span>"
               + "         </div> "
               + "     </div> "
               + "     <div class=\"item-info\"> "
               + "         <div class=\"item-title\">"
               + "             <a href=\"\\Details\\" + productName + "\" title=\"" + productName + "\">"
               + "               " + productName + ""
               + "             </a>"
               + "         </div> "
               + "         <div class=\"item-price\">"
               + "             <div class=\"sale-price\"> "
               + "                 <div class=\"price-box\">"
               + "                     <span class=\"regular-price\"> "
               + "                         <span class=\"price\">₹" + pricePerUnit + "</span>/1 Kg"
               + "                     </span> "
               + "                 </div>"
               + "             </div>"
               + "         </div> "
               + "     </div> "
               + "     <a class=\"product-image\" style=\"display:none;\" href=\"\\Details\\" + productName + "\"> </a><!--LINK FOR QUICKVIEW-->  "
               + "     <button class=\"btn-pd btn-cart\" data-toggle=\"tooltip\" data-placement=\"left\" title=\"Add to Cart\" onclick=\"setLocation('" + productName + "')\">"
               + "         Add to Cart"
               + "     </button> "
               + "     <a data-toggle=\"tooltip\" data-placement=\"left\" title=\"Add to Wishlist\" href=\"wishlist/index/add/product/29/form_key/P8pJx2VEoRAa8IH3/index.html\" class=\"btn-pd item-wishlist\">Add to Wishlist</a> "
               + " </div>"
               + " </div>"
               + " </div>";

    return val;
}




//first step call the webservice and get data
function getcarouselcat_8products() {
    return $.getJSON("/api/ProductDetails/getFruitsOnlyList",
       function (data) {
       });
}

//use the data to generate mark up 

function getHomepagecat_8productsAndGenerateHtml(data) {

    $.each(data, function (key, val) {
        var val2 = generatecat_8Markup(val.ProductName, val.ImageURL, val.Description, val.Quantity, val.PricePerUnit);
        $("div.ltabs-items-container.slider-cat-8").append(val2);
    });
}

// use this function to generate the markup
function generatecat_8Markup(productName, imageURL, description, quantity, pricePerUnit) {

    var val = "<div class=\"item item-supercat respl-item\">"
               + "<div class=\"item-inner\">"
               + "     <div class=\"w-image-box\">"
               + "         <span class=\"hover-background\"></span>"
               + "         <div class=\"item-image\">"
               + "             <a href=\"\\Details\\" + productName + "\" class=\"product-image rspl-image\"> "
               + "                 <img src=\"\\" + imageURL + "\" alt=\"" + productName + "\" />"
               + "             </a>"
               + "         </div> "
               + "         <div class=\"sale-item\">"
               + "             <span>Sale</span>"
               + "         </div> "
               + "     </div> "
               + "     <div class=\"item-info\"> "
               + "         <div class=\"item-title\">"
               + "             <a href=\"\\Details\\" + productName + "\" title=\"" + productName + "\">"
               + "               " + productName + ""
               + "             </a>"
               + "         </div> "
               + "         <div class=\"item-price\">"
               + "             <div class=\"sale-price\"> "
               + "                 <div class=\"price-box\">"
               + "                     <span class=\"regular-price\"> "
               + "                         <span class=\"price\">₹" + pricePerUnit + "</span>/1 Kg"
               + "                     </span> "
               + "                 </div>"
               + "             </div>"
               + "         </div> "
               + "     </div> "
               + "     <a class=\"product-image\" style=\"display:none;\" href=\"\\Details\\" + productName + "\"> </a><!--LINK FOR QUICKVIEW-->  "
               + "     <button class=\"btn-pd btn-cart\" data-toggle=\"tooltip\" data-placement=\"left\" title=\"Add to Cart\" onclick=\"setLocation('" + productName + "')\">"
               + "         Add to Cart"
               + "     </button> "
               + "     <a data-toggle=\"tooltip\" data-placement=\"left\" title=\"Add to Wishlist\" href=\"wishlist/index/add/product/29/form_key/P8pJx2VEoRAa8IH3/index.html\" class=\"btn-pd item-wishlist\">Add to Wishlist</a> "
               + " </div>"
               + " </div>"
               + " </div>";

    return val;
}