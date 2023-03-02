using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Web.UI;
using System;

namespace icble
{
  
    internal class CommonMethods
    {
        //List<UniversityRoute> universityRoutes = new List<UniversityRoute>();
        DataSet ds = new DataSet();


        public CommonMethods()
        {

        }




        public string SendMail(string recipient, string subject, string body)
        {
            try
            {
                MailMessage email = new MailMessage();

                email.IsBodyHtml = true;
                email.From = new MailAddress("icble2023@icar.gov.in");
                MailAddress address = new MailAddress(recipient);

                email.To.Add(address);
                email.Subject = subject;
                email.Body = body;


                //email.Body = "";
                SmtpClient SmtpServer = new SmtpClient("10.100.3.109");

                SmtpServer.Send(email);


                return "mail Send";
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }


        public bool GetStatusPaymentByCustomerIdMaster(string ApplicationId)
        {
            DataSet ds = GetDataByQuery($"select SuccessFlag from TransactionDetail where AdditionalInfo3 = '{ApplicationId}' ");

            if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                if (ds.Tables[0].Rows[0]["SuccessFlag"].ToString() == "S")
                {
                    return true;
                }
                else
                {

                    return false;
                }
            }

            return false;

        }

        public bool GetFinalstatusByCustomerId(string ApplicationId)
        {
            DataSet ds = GetDataByQuery($"select final_status from ASRB_PostAppliedDetails where Sec_Application_id = '{ApplicationId}' ");

            if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                if (ds.Tables[0].Rows[0]["final_status"].ToString() == "1")
                {
                    return true;
                }
                else
                {

                    return false;
                }
            }

            return false;

        }

        public bool GetStatusPaymentByCustomerId(string ApplicationId)
        {
            DataSet ds = GetDataByQuery($"select SuccessFlag from TransactionDetail where CustomerId = '{ApplicationId}' ");

            if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                if (ds.Tables[0].Rows[0]["SuccessFlag"].ToString() == "S")
                {
                    return true;
                }
                else
                {

                    return false;
                }
            }

            return false;

        }




        public string NumberToWords(int number)
        {
            if (number == 0)
                return "zero";

            if (number < 0)
                return "minus " + NumberToWords(Math.Abs(number));

            string words = "";

            if ((number / 1000000) > 0)
            {
                words += NumberToWords(number / 1000000) + " million ";
                number %= 1000000;
            }

            if ((number / 1000) > 0)
            {
                words += NumberToWords(number / 1000) + " thousand ";
                number %= 1000;
            }

            if ((number / 100) > 0)
            {
                words += NumberToWords(number / 100) + " hundred ";
                number %= 100;
            }

            if (number > 0)
            {
                if (words != "")
                    words += "and ";

                var unitsMap = new[] { "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen" };
                var tensMap = new[] { "zero", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety" };

                if (number < 20)
                    words += unitsMap[number];
                else
                {
                    words += tensMap[number / 10];
                    if ((number % 10) > 0)
                        words += "-" + unitsMap[number % 10];
                }
            }

            return words;
        }
        public string GetMemberTypeById(string Id)
        {
            if (Id == "CHRM")
            {
                return "Chairmen";
            }
            else if (Id == "MSCR")
            {
                return "Member Secretary";
            }
            else if (Id == "MEMB")
            {
                return "Member";
            }

            return "";
        }
        public int major_function_type(string Candidate_ID, string appli_id)
        {
            int major_function = 0;
            string q = "select * from ASRB_PostAppliedDetails where active_status='Y' and  Candidate_ID='" + Candidate_ID.Trim() + "' and Application_Id='" + appli_id + "'";
            DataTable dt = GetDataTableByQuery(q);
            if (dt.Rows.Count > 0)
            {
                if (dt.Rows[0]["Major_function"].ToString() != null && dt.Rows[0]["Major_function"].ToString() != "")
                    major_function = Convert.ToInt32(dt.Rows[0]["Major_function"].ToString());
            }

            return major_function;
        }

        public int getupdatedmarks(string finalMarks, string remark, string remarksby, string candidateId, string applicationId, string tablename, string id)
        {
            int getmarks = 0;
            string q = "select * from {tablename} where active_status='Y' and  Candidate_ID='" + candidateId.Trim() + "' and Application_Id='" + applicationId + "' and and ID='" + id + "'";
            DataTable dt = GetDataTableByQuery(q);
            if (dt.Rows.Count > 0)
            {
                if (dt.Rows[0]["finalmarks"].ToString() != null && dt.Rows[0]["finalmarks"].ToString() != "")
                    getmarks = Convert.ToInt32(dt.Rows[0]["finalmarks"].ToString());
            }

            return getmarks;
        }

        public string setExpertiese()
        {
            ds = GetDataByQuery("select * from Expert_Users");
            int count = 0;
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                DataSet ds2 = GetDataByQuery($"select top 1 * from Expert_Disc_Expertises where User_id = '{row["User_id"]}'");

                if (ds2 != null && ds2.Tables[0].Rows.Count > 0)
                {
                    Actions act = new Actions();

                    act.CmdWrite($"update Expert_Users set " +
                        $"User_Discipline_Expertise = '{ds2.Tables[0].Rows[0]["Disc_Exp_ID"]}' where " +
                        $"User_id = '{row["User_id"]}'");
                    count++;
                }
            }
            return count.ToString();
        }


        public int UpdateTechnicalMarks(string finalMarks, string remarks, string remarksby, string candidateId, string applicationId, string tablename, string id)
        {

            Actions act = new Actions();

            int status = act.CmdWrite($"update {tablename} set  finalMarks = '" + finalMarks + "',remarks='" + remarks + "',remarksby='" + remarksby + "' where " +
                 $"Candidate_ID = '" + candidateId + "' and Application_Id='" + applicationId + "' and ID='" + id + "'");
            return status;

        }

        public int UpdateTechnicalMarksNo(string finalMarks, string remarks, string remarksby, string candidateId, string applicationId, string tablename, string id, string type = "")
        {

            Actions act = new Actions();

            int status = act.CmdWrite($"update {tablename} set  finalMarks = '" + finalMarks + "',remarks='" + remarks + "',remarksby='" + remarksby + "' where " +
                 $"Candidate_ID = '" + candidateId + "' and Application_Id='" + applicationId + "' and ID='" + id + "'");
            return status;
        }


        public string GetNameFromDDlById(string PostId, string TableCode)
        {
            string Query = "";

            if (TableCode == "Post_Designation")
            {
                Query = $"select Post_Name as Name from [dbo].[ASRB_Post_Designation] where Post_ID = {PostId}";
            }
            else if (TableCode == "Qualification")
            {
                Query = $"select Qualification_List as Name from [dbo].[ASRB_Qualification_List] where  ID = {PostId}";
            }
            else if (TableCode == "Year")
            {
                Query = $"select ASRB_Year as Name from [dbo].[ASRB_Year] where  ID = {PostId}";
            }
            else if (TableCode == "Fellowship")
            {
                Query = $"select Fellowship_name as Name from [dbo].[ASRB_Postdoc_Fellowship_List] where  ID = {PostId}";
            }

            DataSet data = GetDataByQuery(Query);

            if (data != null && data.Tables[0].Rows.Count > 0)
            {
                return data.Tables[0].Rows[0]["Name"].ToString();
            }

            return "";

        }

        public string GetAge(string DOB)
        {
            // Save today's date.
            var today = DateTime.Today;
            DateTime dt;
            DateTime.TryParse(DOB, out dt);
            var birthdate = dt;
            // Calculate the age.
            var age = today.Year - birthdate.Year;
            // Go back to the year the person was born in case of a leap year
            if (birthdate.Date > today.AddYears(-age)) age--;

            return age.ToString();
        }
        public string ReturnHtml5DateFormatString(string DateFromControl)
        {
            string fullDate = "";
            try
            {
                DateTime dt = Convert.ToDateTime(DateFromControl);

                string Month, Day;
                if (dt.Month <= 9)
                {
                    Month = "0" + dt.Month.ToString();
                }
                else
                {
                    Month = dt.Month.ToString();
                }

                if (dt.Day <= 9)
                {
                    Day = "0" + dt.Day.ToString();
                }
                else
                {
                    Day = dt.Day.ToString();
                }

                fullDate = dt.Year.ToString() + "-" + Month + "-" + Day;


            }
            catch (Exception)
            {

            }

            return fullDate;

        }
        public static string ReturnDate(string date)
        {
            DateTime dt = new DateTime();
            DateTime.TryParse(date, out dt);
            return dt.ToString("ddd, dd MMM yyyy");
        }

        public static string ReturnDateWithOutDay(string date)
        {
            DateTime dt = new DateTime();
            DateTime.TryParse(date, out dt);
            return dt.ToString("dd MMMM yyyy");
        }
        public static string ReturnDateWithTime(string date)
        {
            DateTime dt = new DateTime();
            DateTime.TryParse(date, out dt);
            return dt.ToString("ddd, dd MMM yyyy, HH:mm:ss");
        }









        public DataSet GetDataByQuery(string Query, SqlParameter[] param = null)
        {

            Connection con = new Connection();
            DataSet ds = new DataSet();
            SqlCommand cmd = new SqlCommand(Query, new SqlConnection(con.CS));

            if (param != null)
                cmd.Parameters.AddRange(param.ToArray());

            using (SqlDataAdapter da = new SqlDataAdapter(cmd))
            {
                da.Fill(ds);
            }

            return ds;
        }

        public DataSet GetDataByQueryWithOtherDB(string Query, string CS, SqlParameter[] param = null)
        {

            //Connection con = new Connection(CS);
            DataSet ds = new DataSet();
            //SqlCommand cmd = new SqlCommand(Query, new SqlConnection("Data Source=10.100.3.91;Initial Catalog=auams_rlbcau;User ID=auams_rlbcau;Password=R!bc@u0409"));
            SqlCommand cmd = new SqlCommand(Query, new SqlConnection(ConfigurationManager.ConnectionStrings[CS].ConnectionString.ToString()));

            if (param != null)
                cmd.Parameters.AddRange(param.ToArray());

            using (SqlDataAdapter da = new SqlDataAdapter(cmd))
            {
                da.Fill(ds);
            }

            return ds;
        }
        public SqlDataReader GetDataReaderByQuery(string Query, SqlParameter[] param = null)
        {
            Connection con = new Connection();
            SqlConnection cn = new SqlConnection(con.CS);


            SqlCommand cmd = new SqlCommand(Query, new SqlConnection(con.CS));
            cn.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            //if (param != null)
            //    cmd.Parameters.AddRange(param.ToArray());

            //using (SqlDataAdapter da = new SqlDataAdapter(cmd))
            //{
            //    da.Fill(ds);
            //}

            return rdr;
        }


        public DataTable GetDataTableByQuery(string Query, SqlParameter[] param = null)
        {
            Connection con = new Connection();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand(Query, new SqlConnection(con.CS));

            if (param != null)
                cmd.Parameters.AddRange(param.ToArray());

            using (SqlDataAdapter da = new SqlDataAdapter(cmd))
            {
                da.Fill(dt);
            }
            return dt;
        }

        public void MessageBox(string msz, System.Web.UI.Page page)
        {
            ScriptManager.RegisterClientScriptBlock(page, this.GetType(), "alertMessage", "alert('" + msz + "')", true);
            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('"+msz+"')", true);
        }





    }
}