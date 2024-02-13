using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Yanshufim_Gmar3._0
{
    public partial class Log_In : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Session["email"] = Request.Form["Mail"];
                Session["pwd"] = Request.Form["Pwd"];

                string filename = "Yanshufim_ProjectDB";
                string str = "select * from users where email ='" + Session["email"] + "'" + " and pwd='" + Session["pwd"] + "'";


                bool exist = Helper.IsExist(filename, str);


                if (exist)
                {
                    Response.Write("you logged  in successfuly");

                    DataTable dt = Helper.ExecuteDataTable(filename, str);
                    Session["uname"] = dt.Rows[0]["Uname"];
                    Session["fname"] = dt.Rows[0]["UserFname"];
                    Session["lname"] = dt.Rows[0]["UserLname"];
                    // Session["admin"] = dt.Rows[0]["admin"];
                    Session["email"] = dt.Rows[0]["UserEmail"];    // upsate the session with data from database
                    Session["pwd"] = dt.Rows[0]["UserPassword"];
                    Session["pNumber"] = dt.Rows[0]["Pnumber"];
                    Session["city"] = dt.Rows[0]["UserCity"];
                    Session["mikud"] = dt.Rows[0]["UserMikud"];
                    Session["serviceterms"] = dt.Rows[0]["Terms"];
                    Session["notifications"] = dt.Rows[0]["Notifications"];

                    Application["counter"] = (int)Application["counter"] + 1; // update the user counter


                }
                else
                {

                    Response.Write("account dont exist");
                }

            }
        }   }
}