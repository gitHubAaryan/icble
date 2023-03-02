using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace icble
{
    public partial class Login : System.Web.UI.Page
    {
        List<SqlParameter> lstParms = new List<SqlParameter>();
        Actions act = new Actions();
        CommonMethods cm = new CommonMethods();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            if (Request.QueryString["User_Type"] == null)
            {

                ds = cm.GetDataByQuery("select * from tbl_mst_admin where Username = '" + txt_email.Text + "' and pwd='" + txt_password.Text + "' ");

            }
            else
            {
                ds = cm.GetDataByQuery("select * from drishti_UserProfile where Email_ID = '" + txt_email.Text + "' and pwd='" + txt_password.Text + "' ");

                
            }

            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                Response.Redirect("dashboard.aspx");
            }
            else
            {
                this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Email id and password', 'is not correct !!!', 'Error');", true);

            }
        }




      
    }
}