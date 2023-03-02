using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

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
                if (mType == "e")
                {
                    dt = cm.GetDataTableByQuery("select *, User_Title+' '+First_name+' ' + Middle_name+' '+Last_name as name from drishti_UserProfile where User_type in ('International','National')");
                }
                else if (mType == "t")
                {
                    dt = cm.GetDataTableByQuery("select * , User_Title+' '+First_name+' ' + Middle_name+' '+Last_name as name from drishti_UserProfile");
                }

                else if (mType == "i")
                {
                    dt = cm.GetDataTableByQuery("select * , User_Title+' '+First_name+' ' + Middle_name+' '+Last_name as name from drishti_UserProfile where User_type='Invitee'");
                }


                else if (mType == "d")
                {
                    dt = cm.GetDataTableByQuery("select * , User_Title+' '+First_name+' ' + Middle_name+' '+Last_name as name from drishti_UserProfile where User_type='Delegate'");
                }

                gvCustomers.DataSource = dt;
                gvCustomers.DataBind();
            }
        }
    }
}