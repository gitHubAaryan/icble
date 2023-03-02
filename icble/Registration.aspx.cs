using Antlr.Runtime.Misc;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace icble
{
    public partial class Registration : System.Web.UI.Page
    {
        List<SqlParameter> lstParms = new List<SqlParameter>();
        Actions act = new Actions();
        CommonMethods cm = new CommonMethods();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Bindorg();
            }
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
                    
                    var user_type_c = rdbdelegate.SelectedValue;
                    string Candidate_ID = "ICBLE" + DateTime.Now.ToString("ddmmyyyyhhmmssff");
                    if (user_type_c == "ft_in")
                    {
                        invitee_link = "/" + Candidate_ID;
                        pwd = Candidate_ID + "@321!#";
                        nominate_by = Candidate_ID;
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
                    lstParms.Add(new SqlParameter { ParameterName = "@Org_name", Value = rb_day1.SelectedValue == "0" ? txt_org.Text.Trim() : ddlorg.SelectedValue });
                    lstParms.Add(new SqlParameter { ParameterName = "@modp", Value = RadioButtonList1.SelectedValue });
                    lstParms.Add(new SqlParameter { ParameterName = "@Designation", Value = txt_designation.Text.Trim() });
                    lstParms.Add(new SqlParameter { ParameterName = "@Address", Value = txt_address.Text.Trim() });



                    lstParms.Add(new SqlParameter { ParameterName = "@Zip_code", Value = txt_zip.Text.Trim() });
                    if (ddl_nationality.SelectedValue == "0")
                    {
                        lstParms.Add(new SqlParameter { ParameterName = "@Country", Value = "India" });
                        lstParms.Add(new SqlParameter { ParameterName = "@State", Value = ddl_indiastates.SelectedValue });
                    }

                    else
                    {
                        lstParms.Add(new SqlParameter { ParameterName = "@Country", Value = ddl_country.SelectedValue });
                        lstParms.Add(new SqlParameter { ParameterName = "@State", Value = txt_other_state.Text.Trim() });
                    }

                    lstParms.Add(new SqlParameter { ParameterName = "@Gender", Value = ddl_Gender.SelectedValue });
                    lstParms.Add(new SqlParameter { ParameterName = "@City", Value = txt_city.Text.Trim() });
                    //lstParms.Add(new SqlParameter { ParameterName = "@Place_birth", Value = txt_place.Text.Trim() });
                    lstParms.Add(new SqlParameter { ParameterName = "@Mobile_No", Value = txt_mobile.Text.Trim() });
                    //lstParms.Add(new SqlParameter { ParameterName = "@DOB", Value = txt_dob.Text.Trim() });
                    //lstParms.Add(new SqlParameter { ParameterName = "@Current_Nationality", Value = txt_nationality.Text.Trim() });
                    //lstParms.Add(new SqlParameter { ParameterName = "@Passport_No", Value = txt_passport.Text.Trim() });
                    //lstParms.Add(new SqlParameter { ParameterName = "@Passport_issue", Value = txt_date_issue.Text.Trim() });
                    //lstParms.Add(new SqlParameter { ParameterName = "@Passport_valid", Value = txt_valid.Text.Trim() });
                    //lstParms.Add(new SqlParameter { ParameterName = "@issued_country", Value = ddl_country.SelectedValue });
                    //lstParms.Add(new SqlParameter { ParameterName = "@Address", Value = txt_address.Text.Trim() });
                    //lstParms.Add(new SqlParameter { ParameterName = "@travel_arrangement", Value = rb_day1.SelectedValue });
                    lstParms.Add(new SqlParameter { ParameterName = "@Delegate_type", Value = rdbdelegate.SelectedItem.Text });
                    lstParms.Add(new SqlParameter { ParameterName = "@Professional", Value = ddlprof.SelectedValue });
                    lstParms.Add(new SqlParameter { ParameterName = "@Contact_No", Value = txt_contact.Text.Trim() });

                    lstParms.Add(new SqlParameter { ParameterName = "@User_type", Value = user_type_c });
                    lstParms.Add(new SqlParameter { ParameterName = "@invitee_link", Value = invitee_link });
                    lstParms.Add(new SqlParameter { ParameterName = "@pwd", Value = pwd });
                    lstParms.Add(new SqlParameter { ParameterName = "@nominate_by", Value = pwd });

                    //string Query = $"Insert into drishti_UserProfile (Candidate_ID,User_Title,Email_ID,Last_name,Middle_name,First_name,Org_name,Designation,Address,Country,Zip_code,State,Gender,City,Mobile_No," +
                    //    $"Contact_No,Active_Status,modp,Entry_Date,User_type)" +
                    //           $" values (@Candidate_ID,@User_Title,@Email_ID,@Last_name,@Middle_name,@First_name,@Org_name,@Designation,@Address,@Country,@Zip_code,@State,@Gender,@City,@Mobile_No,@modp" +
                    //           $"@Contact_No,1,getdate(),@User_type)";
                    string Query = "Insert into drishti_UserProfile (Candidate_ID,User_Title,Email_ID,Last_name,Middle_name,First_name,Org_name,Designation,Address,Country,Zip_code,State,Gender,City,Mobile_No,Contact_No,Active_Status,modp,Entry_Date,User_type,Professional,Delegate_type) values (@Candidate_ID,@User_Title,@Email_ID,@Last_name,@Middle_name,@First_name,@Org_name,@Designation,@Address,@Country,@Zip_code,@State,@Gender,@City,@Mobile_No,@Contact_No,1,@modp,getdate(),@User_type,@Professional,@Delegate_type)";

                    status = act.CmdWrite(Query, lstParms.ToArray());
                    if (status > 0)
                    {


                        string IsSent = cm.SendMail(txt_email.Text.Trim(), "ICBLE 2023 - Registration Successful", "Dear Delegate, <br>Thank you for registering. We look forward to hosting you. The event team will contact you shortly for further details. <br> For further details contact at icble2023@icar.gov.in <br>From Office of Deputy Director General (Agricultural Education) & National Director (NAHEP) ICAR, New Delhi, India.");

                        if (IsSent == "mail Send")
                        {
                            ClearForm();
                        }
                        else
                        {
                            ClearForm();

                        }

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
                ScriptManager.RegisterStartupScript(this.Page, GetType(), "SweetAlert", $"swal('Registration','Something went wrong !!!','error'); ", true);
                //this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Error!', 'Email already exist!!!', 'error');", true);

                return true;
            }
            else
            {
                return false;
            }
        }
        private void ClearForm()
        {
            txt_address.Text = "";
            txt_city.Text = "";
            //ddl_code.ClearSelection();
            txt_designation.Text = "";
            txt_email.Text = "";
            txt_mobile.Text = "";
            txt_name.Text = "";
            txt_org.Text = "";
            ddl_title.Text = "";
            txt_zip.Text = "";
            //ddl_country.ClearSelection();
            ddl_Gender.ClearSelection();
            ddl_title.ClearSelection();
            ddl_country.ClearSelection();
            ddl_indiastates.ClearSelection();
            ddl_nationality.ClearSelection();
            // ddl_usertype.ClearSelection();
            txt_contact.Text = "";
            txt_middle.Text = "";
            txt_otherct.Text = "";
            ddlorg.ClearSelection();
            txt_last.Text = "";
            //rb_day1.ClearSelection();
            //rb_day2.ClearSelection();
            //rb_day3.Text = "";
            //rb_VisaSupport.ClearSelection();
            //ddl_nationality.SelectedIndex = 0;


            //ddl_nationality.SelectedValue = "notselect";

            lbl_indian.Visible = false;

            ddl_indiastates.Visible = false;
            lbl_others.Visible = false;
            ddl_country.Visible = false;
            lbl_city.Visible = false;
            txt_city.Visible = false;
            lbl_pin.Visible = false;
            txt_zip.Visible = false;
            lbl_other_state.Visible = false;
            txt_other_state.Visible = false;

            rfv_counntry.Visible = false;
            rfv_state.Visible = false;
            rfv_otherstate.Visible = false;
            rfv_city.Visible = false;
            rfv_otherrct.Visible = false;
            rfv_pin.Visible = false;
            rfv_state.Visible = false;
        }


        private void Bindorg()

        {
            DataSet ds = cm.GetDataByQuery($"SELECT UnivName FROM  [ICBLE_Univ]");
            ddlorg.DataSource = ds;
            ddlorg.DataTextField = "UnivName";
            ddlorg.DataValueField = "UnivName";
            ddlorg.DataBind();
            ddlorg.Items.Insert(0, new ListItem("-- Please Select--", "0"));


        }


        protected void rb_day1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rb_day1.SelectedValue == "0")
            {
                txt_org.Visible = true;
                rfv_org.Visible = true;
                ddlorg.Visible = false;
            }
            else
            {
                Bindorg();
                ddlorg.Visible = true;
                txt_org.Visible = false;
                rfv_org.Visible = false;

            }
        }




        protected void btn_clear_Click(object sender, EventArgs e)
        {
            ClearForm();
            //txt_address.Text = "";
            //txt_city.Text = "";
            ////ddl_code.ClearSelection();
            //txt_designation.Text = "";
            //txt_email.Text = "";
            //txt_mobile.Text = "";
            //txt_name.Text = "";
            //txt_org.Text = "";
            //ddl_title.Text = "";
            //txt_zip.Text = "";
            ////ddl_country.ClearSelection();
            //ddl_Gender.ClearSelection();
            ////rb_day1.ClearSelection();
            ////rb_day2.ClearSelection();
            ////rb_day3.Text = "";
            ////rb_VisaSupport.ClearSelection();
            //ddl_title.ClearSelection();
            ////rb_day3.ClearSelection();

            //Response.Redirect("/attending_conference.aspx");


        }


        protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (ddl_nationality.SelectedValue)
            {
                case "1":
                    lbl_indian.Visible = true;

                    ddl_indiastates.Visible = true;
                    lbl_others.Visible = false;
                    ddl_country.Visible = false;
                    lbl_city.Visible = true;
                    txt_city.Visible = true;
                    lbl_pin.Visible = true;
                    txt_zip.Visible = true;
                    lbl_other_state.Visible = false;
                    txt_other_state.Visible = false;
                    break;
                case "2":
                    lbl_indian.Visible = false;

                    ddl_indiastates.Visible = false;
                    lbl_others.Visible = true;
                    ddl_country.Visible = true;
                    lbl_city.Visible = true;
                    txt_city.Visible = true;
                    lbl_other_state.Visible = true;
                    txt_other_state.Visible = true;
                    lbl_pin.Visible = true;
                    txt_zip.Visible = true;

                    break;

                case "0":
                    lbl_indian.Visible = false;

                    ddl_indiastates.Visible = false;
                    lbl_others.Visible = false;
                    ddl_country.Visible = false;
                    lbl_city.Visible = false;
                    txt_city.Visible = false;
                    lbl_pin.Visible = false;
                    txt_zip.Visible = false;
                    lbl_other_state.Visible = false;
                    txt_other_state.Visible = false;

                    break;
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



        //protected void ddlother_changed(object sender, EventArgs e)
        //{
        //    if (ddl_country.SelectedValue == "others")
        //    {
        //        lbl_otherct.Visible = true;
        //        txt_otherct.Visible = true;

        //    }

        //}


    }
}