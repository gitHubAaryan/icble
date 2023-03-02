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

            lbltotalrecord.Text = dt.Rows.Count.ToString();



            DataTable dt1 = cm.GetDataTableByQuery("select * from drishti_UserProfile where User_type='National'");

                labinternational.Text = dt1.Rows.Count.ToString();

            DataTable dt2 = cm.GetDataTableByQuery("select * from drishti_UserProfile where User_type='International'");



                labdomastic.Text = dt2.Rows.Count.ToString();
            DataTable dt3 = cm.GetDataTableByQuery("select * from drishti_UserProfile where User_type='Invitee'");



            labinvitee.Text = dt3.Rows.Count.ToString();

            DataTable dt4 = cm.GetDataTableByQuery("select * from drishti_UserProfile where User_type='Delegate'");

            lbldinternational.Text = dt4.Rows.Count.ToString();


            DataTable dt5 = cm.GetDataTableByQuery("select * from drishti_UserProfile where User_type='Delegate'");

            lblddomastic.Text = dt5.Rows.Count.ToString();

        }




        protected void lnkexhibitor_Click(object sender, EventArgs e)
        {
            Response.Redirect("RecordList.aspx?Type=e");
        }
        protected void likinvitee_Click(object sender, EventArgs e)
        {
            Response.Redirect("RecordList.aspx?Type=i");
        }
        protected void lnktotalrecord_Click(object sender, EventArgs e)
        {
            Response.Redirect("RecordList.aspx?Type=t");
        }
        protected void Label4_Click(object sender, EventArgs e)
        {
            Response.Redirect("RecordList.aspx?Type=d");
        }
    }
}