using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using EcommGroceryStore.Models;
using Unique.EcommGroceryStore.Core.Provider;

namespace EcommGroceryStore.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogIn_ServerClick(object sender, EventArgs e)
        {
            string ErrMsg = string.Empty;
            if (Validate(out ErrMsg))
            {
            }
        }

        public bool Validate(out string errMsg)
        {
            errMsg = string.Empty;
            if (String.IsNullOrEmpty(txtUserName.Value.Trim()))
            {
                errMsg = "User Name can not be blank.";
                return false;

            }
            if (String.IsNullOrEmpty(txtPassword.Value.Trim()))
            {
                errMsg = "Password can not be blank.";
                return false;
            }
            return true;
        }
    }
}