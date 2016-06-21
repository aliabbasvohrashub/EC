using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Unique.EcommGroceryStore.Core.Utility;

namespace EcommGroceryStore.Apps.Admin
{
    public partial class ManageTransaction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTransacionList(0, 0, gvTransactionDetails);
            }
        }

        protected void gvTransactionDetails_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                int cartId = 0;
                int.TryParse(gvTransactionDetails.DataKeys[e.Row.RowIndex].Value.ToString(), out cartId);
                GridView gvOrders = e.Row.FindControl("gvOrders") as GridView;
                BindTransacionList(cartId, 1, gvOrders);
            }
        }

        private void BindTransacionList(int cartId, int Op, GridView gv)
        {
            SqlParameter p1 = DataAccessLayer.CreateSqlParameter("CartId", DbType.Int32, cartId);
            SqlParameter p2 = DataAccessLayer.CreateSqlParameter("Op", DbType.Int32, Op);
            SqlParameter[] ps = new SqlParameter[] { p1, p2 };
            DataTable dt = DataAccessLayer.LoadTabularDataInDataTable("Sp_GetTransactionList", CommandType.StoredProcedure, ps);
            if (dt.Rows.Count > 0)
                gv.DataSource = dt;
            gv.DataBind();
        }

    }
}