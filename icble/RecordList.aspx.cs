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
    public partial class RecordList : System.Web.UI.Page
    {
        List<SqlParameter> lstParms = new List<SqlParameter>();
        Actions act = new Actions();
        CommonMethods cm = new CommonMethods();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string mType = "";
                if (Request.QueryString["Type"] == null)
                {
                    
                }
                else
                {
                    mType = Request.QueryString["Type"].ToString();
                    
                }
                DataTable dt = new DataTable();
                dt = cm.GetDataTableByQuery("select * from drishti_UserProfile where User_type='" + mType + "'");
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }
}