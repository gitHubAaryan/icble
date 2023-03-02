using System.Configuration;

namespace icble
{
  

    internal class Connection
    {
        public string CS;


        public Connection()
        {
            CS = ConfigurationManager.ConnectionStrings["drishti"].ConnectionString.ToString();
        }


    }
}