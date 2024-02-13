<%@ Page Title="" Language="C#" MasterPageFile="~/Forms.Master" AutoEventWireup="true" CodeBehind="Rep_Lost.aspx.cs" Inherits="Yanshufim_Gmar3._0.Rep_Lost" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="wrapper">

        <div class="form_wrap">
            <div class="form_1 data_Info">
                <h2>דיווח על חיית מחמד שאבדה</h2>
                <form method="post">
                    <div class="form_container">
                        <div class="input_wrap">
                            <center>
                                <select id="PetType" name="PetType">
                                    <option value="No_Select">בחר את סוג החיה</option>
                                    <option value="Dog">כלב</option>
                                    <option value="Cat">חתול</option>
                                    <option value="Bunny">ארנב</option>
                                </select>
                            </center>
                        </div>
                        <div class="input_wrap">
                            <center>
                                <select id="PetColor" name="PetColor">
                                    <option value="No_Select">בחר את צבע החיה</option>
                                    <option value="Black">שחור</option>
                                    <option value="White">לבן</option>
                                    <option value="Grey">אפור</option>
                                </select>
                            </center>
                        </div>
                        <div class="input_wrap">
                            <center>
                                <select id="PetSubType" name="PetSubType">
                                    <option value="No_Select">בחר את גזע החיה</option>
                                    <option value="Maltez">מלטז</option>
                                    <option value="Lavrador">לברדור</option>
                                    <option value="Siami">סיאמי</option>
                                </select>
                            </center>
                        </div>
                        <div class="input_wrap">
                            <center>
                                <select id="PetSex" name="PetSex">
                                    <option value="No_Select">בחר את מין החיה</option>
                                    <option value="Male">זכר</option>
                                    <option value="Female">נקבה</option>
                                </select>
                            </center>
                        </div>
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
                            <label for="Date"> תאריך מציאה</label>
                            <input type="date" id="found_date" name="found_date" />
                        </div>
                        <div class="input_wrap">
                            <label for="PetName">שם החיה</label>
                            <input type="text" id="pet_name" name="pet_name" />
                        </div>
                        <div class="input_wrap">
                            <label for="ExtraDetails">פרטים נוספים</label>
                            <input type="text" id="extra_details" name="extra_details" />
                        </div>
                        <div class="input_wrap">
                            <label for="Image">תמונה</label>
                            <input type="file" id="pet_image" name="pet_image" />
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

        </div>
        <div class="btns_wrap">
            <div class="common_buttons form_1_buttons">
                <button type="button" class="btn_next" onclick="CheckPetType(); CheckPetColor(); CheckPetSubType(); CheckPetSex(); CheckCity(); CheckPetName();">
                    הבא
                    <span class="icon"><ion-icon name="arrow-forward-outline"></ion-icon></span>
                </button>
            </div>

        </div>
    </div>


    <div class="modal_wrapper">
        <div class="shadow"></div>
        <div class="success_wrap">
            <span class="modal_icon">
                <ion-icon name="checkmark-outline"></ion-icon>
            </span>
            <p>דיווחת בהצלחה</p>
        </div>
    </div>

    <script type="text/javascript" src="Scripts_Login.js"></script>
    <script type="text/javascript" src="Check_Reports.js"></script>

</asp:Content>
