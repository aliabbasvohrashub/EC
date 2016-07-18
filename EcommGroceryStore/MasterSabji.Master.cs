using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Unique.EcommGroceryStore.Core.Repository;

namespace EcommGroceryStore
{
    public partial class MasterSabji : MasterPage
    {  
        protected void Page_Load(object sender, EventArgs e)
        { 
        }

        protected void lnkLogOut_Click(object sender, EventArgs e)
        {
            UserRepository.Logout();
        } 
    }
     
}