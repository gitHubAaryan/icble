using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;
using System.Data.SqlClient;
using QRCoder;
using static System.Runtime.CompilerServices.RuntimeHelpers;

namespace icble
{
    public partial class barcode : System.Web.UI.Page
    {
        List<SqlParameter> lstParms = new List<SqlParameter>();
        Actions act = new Actions();
        CommonMethods cm = new CommonMethods();
        string barCode = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ID"] != null)
            {
                barCode = Request.QueryString["ID"].ToString();

                using (Bitmap bitMap = new Bitmap(barCode.Length * 40, 80))
                {
                    using (Graphics graphics = Graphics.FromImage(bitMap))
                    {
                        Font oFont = new Font("IDAutomationHC39M Free Version", 16);
                        PointF point = new PointF(2f, 2f);
                        SolidBrush blackBrush = new SolidBrush(Color.Black);
                        SolidBrush whiteBrush = new SolidBrush(Color.White);
                        graphics.FillRectangle(whiteBrush, 0, 0, bitMap.Width, bitMap.Height);
                        graphics.DrawString("*" + barCode + "*", oFont, blackBrush, point);
                    }
                    using (MemoryStream ms = new MemoryStream())
                    {
                        bitMap.Save(ms, ImageFormat.Png);
                        imgBarcode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(ms.ToArray());
                        imgBarcode.Visible = false;
                    }
                }


                DataTable dt = new DataTable();
                dt = cm.GetDataTableByQuery("select * from drishti_UserProfile where Candidate_ID='" + barCode + "'");

                lblname.Text = dt.Rows[0]["User_Title"].ToString() + " "+ dt.Rows[0]["First_name"].ToString() + " " + dt.Rows[0]["Last_Name"].ToString() +"( " + dt.Rows[0]["User_type"].ToString() + " )";
                lblusertype.Text = dt.Rows[0]["User_type"].ToString();

                GenrateQR(dt.Rows[0]["User_Title"].ToString() + " " + dt.Rows[0]["First_name"].ToString() + " " + dt.Rows[0]["Last_Name"].ToString() + "( " + dt.Rows[0]["User_type"].ToString() + " )");
            }
            

        }

        private void GenrateQR(string DataForQRCode)
        {
            QRCodeGenerator qrGenerator = new QRCodeGenerator();
            QRCodeGenerator.QRCode qrCode = qrGenerator.CreateQrCode(DataForQRCode, QRCodeGenerator.ECCLevel.Q);
            System.Web.UI.WebControls.Image imgBarCode = new System.Web.UI.WebControls.Image();
            imgBarCode.Height = 150;
            imgBarCode.Width = 150;
            using (Bitmap bitMap = qrCode.GetGraphic(20))
            {
                using (MemoryStream ms = new MemoryStream())
                {
                    bitMap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                    byte[] byteImage = ms.ToArray();
                    imgBarCode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage);
                }
                plBarCode.Controls.Add(imgBarCode);
            }
        }

        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            string code = txtCode.Text;
            QRCodeGenerator qrGenerator = new QRCodeGenerator();
            QRCodeGenerator.QRCode qrCode = qrGenerator.CreateQrCode(code, QRCodeGenerator.ECCLevel.Q);
            System.Web.UI.WebControls.Image imgBarCode = new System.Web.UI.WebControls.Image();
            imgBarCode.Height = 150;
            imgBarCode.Width = 150;
            using (Bitmap bitMap = qrCode.GetGraphic(20))
            {
                using (MemoryStream ms = new MemoryStream())
                {
                    bitMap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                    byte[] byteImage = ms.ToArray();
                    imgBarCode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage);
                }
                plBarCode.Controls.Add(imgBarCode);
            }
        }
    }
}