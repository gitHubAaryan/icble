using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace icble
{
    public partial class dashboard : System.Web.UI.Page
    {
        List<SqlParameter> lstParms = new List<SqlParameter>();
        Actions act = new Actions();
        CommonMethods cm = new CommonMethods();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = cm.GetDataTableByQuery("select * from drishti_UserProfile");

            lblTotal.Text = dt.Rows.Count.ToString();

            DataTable dt1 = dt.Select("User_type like '%1%'").CopyToDataTable();

            lblTotalCount.Text = dt1.Rows.Count.ToString();
        }

        protected void Label1_Click(object sender, EventArgs e)
        {
            Response.Redirect("RecordList.aspx?Type=1");
        }
        protected void Label2_Click(object sender, EventArgs e)
        {
            Response.Redirect("RecordList.aspx?Type=1");
        }
        protected void Label3_Click(object sender, EventArgs e)
        {
            Response.Redirect("RecordList.aspx?Type=1");
        }
        protected void Label4_Click(object sender, EventArgs e)
        {
            Response.Redirect("RecordList.aspx?Type=1");
        }
    }
}