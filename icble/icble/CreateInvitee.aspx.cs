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
    public partial class CreateInvitee : System.Web.UI.Page
    {
        List<SqlParameter> lstParms = new List<SqlParameter>();
        Actions act = new Actions();
        CommonMethods cm = new CommonMethods();
        string strInvLink = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            strInvLink = System.Configuration.ConfigurationManager.AppSettings["InvLink"];

        }
        protected void btn_save_Click(object sender, EventArgs e)
        {
            int status = 0;
            if (!GetEmailStatus())
            {
                try
                {
                    // Unique Id for Expert

                    string invitee_link = "";
                    string pwd = "";
                    string nominate_by = "";

                    var user_type_c = Request.QueryString["User_Type"];
                    string Candidate_ID = "ICBLE" + DateTime.Now.ToString("ddmmyyyyhhmmssff");
                    if (user_type_c == "Invitee")
                    {
                        invitee_link = strInvLink + "registration.aspx?id" + Candidate_ID + "&User_Type=" + user_type_c;
                        pwd = Candidate_ID + "@321!#";
                        nominate_by = "0";
                    }
                    else
                    {
                        invitee_link = "";
                        pwd = "";
                        nominate_by = "0";
                    }

                    lstParms.Add(new SqlParameter { ParameterName = "@Candidate_ID", Value = Candidate_ID });

                    lstParms.Add(new SqlParameter { ParameterName = "@User_Title", Value = ddl_title.SelectedValue });
                    lstParms.Add(new SqlParameter { ParameterName = "@Email_ID", Value = txt_email.Text.Trim() });
                    lstParms.Add(new SqlParameter { ParameterName = "@Last_name", Value = txt_last.Text.Trim() });
                    lstParms.Add(new SqlParameter { ParameterName = "@Middle_name", Value = txt_middle.Text.Trim() });
                    lstParms.Add(new SqlParameter { ParameterName = "@First_name", Value = txt_name.Text.Trim() });


                    lstParms.Add(new SqlParameter { ParameterName = "@User_type", Value = user_type_c });
                    lstParms.Add(new SqlParameter { ParameterName = "@invitee_link", Value = invitee_link });
                    lstParms.Add(new SqlParameter { ParameterName = "@pwd", Value = pwd });
                    lstParms.Add(new SqlParameter { ParameterName = "@nominate_by", Value = nominate_by });


                    string Query = "Insert into drishti_UserProfile (Candidate_ID,User_Title,Email_ID,Last_name,Middle_name,First_name,User_type,invitee_link,pwd,nominate_by) values (@Candidate_ID,@User_Title,@Email_ID,@Last_name,@Middle_name,@First_name,@User_type,@invitee_link,@pwd,@nominate_by)";

                    status = act.CmdWrite(Query, lstParms.ToArray());
                    if (status > 0)
                    {
                        lblmsg.Visible = true;
                        lbmg.Text = "Registration Process has been Done! Your Invitee URL";
                        lblmsg.Text = invitee_link;
                        this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('success!', 'Registration Process has been Done! Kindly check your email', 'success');", true);

                        ClearForm();





                    }
                    else
                    {

                        this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Error!', 'Something went wrong !!!', 'Error');", true);


                    }


                }
                catch (Exception ex)
                {

                }
            }
            else
            {
                this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Error!', 'Email Already Exist !!!', 'Error');", true);


            }


        }
        private bool GetEmailStatus()
        {

            DataSet ds = cm.GetDataByQuery($"select * from drishti_UserProfile where Email_ID = '{txt_email.Text.Trim()}'");

            if (ds != null && ds.Tables[0].Rows.Count > 0)
            {

                return true;
            }
            else
            {
                return false;
            }
        }
        private bool CheckEmail(string Email)
        {
            DataSet ds = cm.GetDataByQuery("select * from drishti_UserProfile where Email_id = '" + Email + "' ");

            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Email!', 'is already exist !!!', 'Error');", true);

                return true;
            }
            else
            {
                return false;
            }
        }
        protected void txt_email_TextChanged1(object sender, EventArgs e)
        {
            if (!CheckEmail(txt_email.Text.Trim()))
            {
                lblStatus.Visible = false;
            }
            else
            {
                lblStatus.Visible = true;
                lblStatus.Text = "Email ID already exist !!";


            }
        }

        private void ClearForm()
        {
            txt_email.Text = "";
            txt_last.Text = "";
            txt_middle.Text = "";
            txt_name.Text = "";
            txt_last.Text = "";
        }
        protected void btn_clear_Click(object sender, EventArgs e)
        {
            ClearForm();

        }

    }
}