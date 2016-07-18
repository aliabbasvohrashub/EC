using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcommGroceryStore
{
    public partial class MasterSabji : MasterPage
    {  
        protected void Page_Load(object sender, EventArgs e)
        { 
        }

        protected void btnCheckOut_Click(object sender, EventArgs e)
        {

            if(System.Environment.UserName != "" && System.Environment.UserName != null)
            //if (HttpContext.Current.User.Identity.Name != null && HttpContext.Current.User.Identity.Name != "")
            { 
                Response.Redirect("~/Checkout");
            }
            else {

                Response.Redirect("~/Account/Login");
            }
        } 
    }
     
}