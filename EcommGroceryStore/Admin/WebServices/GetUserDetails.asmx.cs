using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using Unique.EcommGroceryStore.DAL.EntityModel;
using Unique.EcommGroceryStore.Core.Repository;
using Unique.EcommGroceryStore.Core.Model;

namespace EcommGroceryStore.Admin.WebServices
{
    /// <summary>
    /// Summary description for GetUserDetails
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class GetUserDetails : System.Web.Services.WebService
    {

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = true)]
        public string GetUserDetailList()
        {
            EcommGroceryDataContext dbContext = new EcommGroceryDataContext();
            var echo = int.Parse(HttpContext.Current.Request.Params["sEcho"]);
            var displayLength = int.Parse(HttpContext.Current.Request.Params["iDisplayLength"]);
            var displayStart = int.Parse(HttpContext.Current.Request.Params["iDisplayStart"]);
            var sortOrder = HttpContext.Current.Request.Params["sSortDir_0"].ToString(CultureInfo.CurrentCulture);
            //var roleId = HttpContext.Current.Request.Params["roleId"].ToString(CultureInfo.CurrentCulture);

            IEnumerable<UserModel> records = GetRecordsFromDatabaseWithFilter(dbContext);
            if (records == null)
                return string.Empty;

            var orderedResults = sortOrder == "asc"
                                 ? records.OrderBy(o => o.UserName)
                                 : records.OrderByDescending(o => o.UserName);
            var itemsToSkip = displayStart == 0
                              ? 0
                              : displayStart + 1;
            var pagedResults = orderedResults.Skip(itemsToSkip).Take(displayLength).ToList();
            var hasMoreRecords = false;

            var sb = new StringBuilder();
            sb.Append(@"{" + "\"sEcho\": " + echo + ",");
            sb.Append("\"recordsTotal\": " + records.Count() + ",");
            sb.Append("\"recordsFiltered\": " + records.Count() + ",");
            sb.Append("\"iTotalRecords\": " + records.Count() + ",");
            sb.Append("\"iTotalDisplayRecords\": " + records.Count() + ",");
            sb.Append("\"aaData\": [");
            foreach (var result in pagedResults)
            {
                if (hasMoreRecords)
                {
                    sb.Append(",");
                }

                sb.Append("[");
                sb.Append("\"" + result.UserName + "\",");
                sb.Append("\"" + result.Password + "\",");
                sb.Append("\"" + result.FullName + "\",");
                sb.Append("\"" + result.EmailId + "\",");
                sb.Append("\"<img class='image-details' src='images/details-icon.png' runat='server' height='16' width='16' alt='View Details'/>\"");
                sb.Append("]");
                hasMoreRecords = true;
            }
            sb.Append("]}");
            dbContext.Dispose();
            dbContext = null;
            return sb.ToString();
        }

        private IEnumerable<UserModel> GetRecordsFromDatabaseWithFilter(EcommGroceryDataContext dbContext)
        {
            return (from u in dbContext.Users
                    join r in dbContext.Roles on u.RoleId equals r.RoleId
                    select new UserModel
                    {
                        UserId = u.UserId,
                        UserName = u.UserName,
                        Password = u.Password,
                        EmailId = u.EmailId,
                        MobileNumber = u.MobileNumber,
                        AlternateNumber = u.AlternateNumber,
                        RegistrationDate = u.RegistrationDate,
                        FullName = u.FirstName + " " + u.LastName,
                        RoleName = r.RoleName
                    });
        }
    }
}
