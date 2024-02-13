<%@ Page Title="" Language="C#" MasterPageFile="~/Forms.Master" AutoEventWireup="true" CodeBehind="Log_In.aspx.cs" Inherits="Yanshufim_Gmar3._0.Log_In" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="wrapper">

        <div class="form_wrap">
            <div class="form_1 data_Info">
                <h2>התחברות למשתמש קיים</h2>
                <form method="post">
                    <div class="form_container">
                        <div class="input_wrap">
                            <label for="Email">אימייל</label>
                            <input type="email" id="Mail" name="Mail" />
                        </div>
                        <div class="input_wrap">
                            <label for="Password">סיסמא</label>
                            <input type="password" id="Pwd" name="Pwd" />
                        </div>
                    </div>


                </form>
                 <h3 id="msg1"></h3>
            </div>
            <div class="form_2 data_info" style="display: none;">
               <h2>חזרה לעמוד הבית</h2>
                <center>
                    <a href="Home.aspx"target="_self">
                        <img src="img/click here 222.png" width="200" height="75" />
                    </a>
                </center>
            </div>
              <div class="btns_wrap">
            <div class="common_buttons form_1_buttons">
                <button type="button" class="btn_next" onclick="CheckUname(); CheckFname(); CheckLname();">
                    הבא
                    <span class="icon"><ion-icon name="arrow-forward-outline"></ion-icon></span>
                </button>
            </div>

        </div>     
        </div>
       
       
    </div>
    


    

    <div class="modal_wrapper">
        <div class="shadow"></div>
        <div class="success_wrap">
            <span class="modal_icon">
                <ion-icon name="checkmark-outline"></ion-icon>
            </span>
            <p>התחברת בהצלחה</p>
        </div>
    </div>

    <script type="text/javascript" src="Scripts_Login.js"></script>
    <script type="text/javascript" src="Check_Form1.js"></script>

</asp:Content>
