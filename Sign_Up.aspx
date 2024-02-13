<%@ Page Title="" Language="C#" MasterPageFile="~/Forms.Master" AutoEventWireup="true" CodeBehind="Sign_Up.aspx.cs" Inherits="Yanshufim_Gmar3._0.Sign_Up" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <div class="wrapper">
        <div class="form_wrap">
        <div class="form_1 data_info">
           <center>
               <form id="Registration" method="post" runat="server">
                <h2>פרטים אישיים</h2>
                 <div class="form_container">
                        <div class="input_wrap">
                            <label for="User_Name">שם משתמש</label>
                            <input type="text" id="Uname" name="Uname" />
                        </div>
                        <div class="input_wrap">
                            <label for="First_Name">שם פרטי</label>
                            <input type="text" id="Fname" name="Fname" />
                        </div>
                        <div class="input_wrap">
                            <label for="Last_Name">שם משפחה</label>
                            <input type="text" id="Lname" name="Lname" />
                        </div>
                    </div>


                <br />
                <h3 id="msg1"></h3>
                <br />
                <h2>פרטי אבטחה ותקשורת</h2>
                <div class="form_container">
                        <div class="input_wrap">
                            <label for="Email">אימייל</label>
                            <input type="email" id="Mail" name="Mail" />
                        </div>
                        <div class="input_wrap">
                            <label for="Pnumber">מספר טלפון</label>
                            <input type="tel" id="Pnumber" name="Pnumber" />
                        </div>
                        <div class="input_wrap">
                            <label for="Password">סיסמא</label>
                            <input type="password" id="Pwd" name="Pwd" />
                        </div>
                        <div class="input_wrap">
                            <label for="confirm_password">אשר סיסמא</label>
                            <input type="password" id="Pwd2" name="Pwd2" />
                        </div>
                    </div>

                <br />
                <h3 id="msg2"></h3>
                <br />
                <h2>פרטי מיקום</h2>
                 <div class="form_container">
                        <div class="input_wrap">
                            <center>
                                <select id="City" name="City">
                                    <option value="No_Select">בחר עיר</option>
                                    <option value="Ein_Sarid">עין שריד</option>
                                    <option value="Tel_Aviv">תל אביב</option>
                                    <option value="Haifa">חיפה</option>
                                </select>
                            </center>
                        </div>
                        <div class="input_wrap">
                            <label for="Mikud">מיקוד</label>
                            <input type="text" id="Mikud" name="Mikud" />
                        </div>
                        <div class="input_wrap">
                            <center>
                                <label for="checkbox">אני מאשר את תנאי השימוש</label>
                                <input type="checkbox" id="Accept" name="Accept" />
                            </center>
                        </div>
                        <div class="input_wrap">
                            <center>
                                <label for="checkbox">אני מאשר שליחת התראות מהאתר</label>
                                <input type="checkbox" id="Accept_notifications" name="Accept_notifications" />
                            </center>
                        </div>

                    </div>



                <br />
                 <h3 id="msg3"></h3>
                <br />

                           
                   <div class="wrapper">
                   <button class="">
                   <span>Submit</span>
                   <div class="success">
                   <svg xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 29.756 29.756" style="enable-background:new 0 0 29.756 29.756;" xml:space="preserve">
      
                   <path d="M29.049,5.009L28.19,4.151c-0.943-0.945-2.488-0.945-3.434,0L10.172,18.737l-5.175-5.173   c-0.943-0.944-2.489-0.944-3.432,0.001l-0.858,0.857c-0.943,0.944-0.943,2.489,0,3.433l7.744,7.752   c0.944,0.943,2.489,0.943,3.433,0L29.049,8.442C29.991,7.498,29.991,5.953,29.049,5.009z" />
                   </svg>
                   </div>
                   </button>
                   </div>

                  <%-- <div class="btns_wrap">
                       <div class="btn_done">
                       <div class="button-34">
                       <input type="submit" value="Register">    
                       </div>
                       </div>
                       
                   </div>--%>
                   

      
                   <%--  <div class="btns_wrap">
            
            
            <div class="common_buttons form_3_buttons" style="display: none;">
                <button type="button" class="btn_done" onclick="CheckUname(); CheckFname(); 
                    CheckLname(); CheckEmail(); CheckPassword(); Check_Passwords(); CheckPhone(); 
                    CheckCity(); CheckMikud(); CheckBox1(); CheckBox2();">
                    סיום
                    <span class="icon"></span>
                </button>
            </div>
        </div>--%>

            </form>
           </center> 
            

    
    </div>

    
          


        

        </div>
    </div>

         <div class="modal_wrapper">
        <div class="shadow"></div>
        <div class="success_wrap">
            <span class="modal_icon">
                <ion-icon name="checkmark-outline"></ion-icon>
            </span>
            <p>נרשמת בהצלחה</p>
        </div>
    </div>

    <script type="text/javascript" src="Master.js"></script>

</asp:Content>