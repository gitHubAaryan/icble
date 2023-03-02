using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System;

namespace icble
{
   
    internal class Actions
    {
        public Actions()
        {
            ErrorPageName = "ErrorPage.aspx";
            //
            // TODO: Add constructor logic here
            //
        }
        public string ErrorPageName { get; set; }


        public int CmdWrite(string nQuery, SqlParameter[] param = null)
        {
            int rows = 0;
            try
            {
                Connection connection = new Connection();
                SqlConnection con = new SqlConnection(connection.CS);
                SqlCommand cmd = new SqlCommand(nQuery, con);
                cmd.CommandType = CommandType.Text;
                if (param != null)
                    cmd.Parameters.AddRange(param.ToArray());
                con.Open();
                rows = cmd.ExecuteNonQuery();
                con.Close();
                return rows;
            }
            catch (Exception ex)
            {

                return rows;
            }
        }

        public int CmdWriteOtherDb(string nQuery, SqlParameter[] param = null)
        {
            int rows = 0;
            try
            {
                //Connection connection = new Connection("pgsConnectionString");
                SqlConnection con = new SqlConnection("Data Source=10.100.3.91;Initial Catalog=auams_rlbcau;User ID=auams_rlbcau;Password=R!bc@u0409");
                SqlCommand cmd = new SqlCommand(nQuery, con);
                cmd.CommandType = CommandType.Text;
                if (param != null)
                    cmd.Parameters.AddRange(param.ToArray());
                con.Open();
                rows = cmd.ExecuteNonQuery();
                con.Close();
                return rows;
            }
            catch (Exception ex)
            {

                return rows;
            }
        }



        //public string GetErrorWithLineNumber(Exception ex)
        //{
        //    var lineNumber = 5;
        //    const string lineSearch = ":line ";
        //    var index = ex.StackTrace.LastIndexOf(lineSearch);
        //    if (index != -1)
        //    {
        //        var lineNumberText = ex.StackTrace.Substring(index + lineSearch.Length);
        //        if (int.TryParse(lineNumberText, out lineNumber))
        //        {
        //        }
        //    }


        //    //System.Diagnostics.StackTrace trace = new System.Diagnostics.StackTrace(ex, true);

        //    return ex.Message.ToString() + " Error Line no :- " + lineNumber.ToString();
        //    //return ex.Message +" Error Line no :- " + trace.GetFrame(0).GetFileLineNumber();
        //}
    }
}