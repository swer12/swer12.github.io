using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Yanshufim_Gmar3._0
{
    public partial class Sign_Up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Session["Uname"] = Request.Form["Uname"];
                Session["UserFname"] = Request.Form["Fname"];
                Session["UserLname"] = Request.Form["Lname"];
                Session["UserEmail"] = Request.Form["Mail"];       // update all the users data in to the session
                Session["UserPhone"] = Request.Form["Pnumber"];
                Session["UserPassword"] = Request.Form["Pwd"];
                Session["UserCity"] = Request.Form["City"];
                Session["UserMikud"] = Request.Form["Mikud"];
                Session["Terms"] = Request.Form["Accept"];
                Session["Notifications"] = Request.Form["Accept_notifications"];


                //Check if user already exists
                string filename = "Yanshufim_ProjectDB.mdf";
                string str = "SELECT * FROM users WHERE UserEmail = '" + Session["UserEmail"] + "'"; 
                bool exist = Helper.IsExist(filename, str);
                if (exist)
                {
                    Response.Write("User already exists");
                    

                }
                else
                {
                    // adding all of the data from the session to the Database
                    string strinsertall = $"INSERT INTO users (Uname,UserFname,UserLname,UserEmail,UserPhone,UserPassword,UserCity,UserMikud,Terms,Notifications,IsAdmin) VALUES ('{Session["uname"]}','{Session["fname"]}','{Session["lname"]}','{Session["UserEmail"]}','{Session["pNumber"]}','{Session["pwd"]}','{Session["city"]}','{Session["mikud"]}','{Session["serviceterms"]}','{Session["notifications"]}',{0});";
                    
                    Helper.DoQuery(filename, strinsertall);
                    
                }
            }
            else
            {


            }
        }
    }
}