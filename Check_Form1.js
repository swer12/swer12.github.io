var msg = " ";
var count = 0;

//function CheckAll1() {
//    var msg = " ";
//    var ok1 = true;
//    ok1 = CheckUname && ok1;
//    ok1 = CheckFname && ok1;
//    ok1 = CheckLname && ok1;

//    if (ok1) {
//        //msg = " <br/>Thank you for filling the form. ";
//        //document.getElementById("msg1").innerHTML = msg;
//        return true;
//    }
//    else {
//        //msg += " <br/> Please fill all the details. ";
//        //document.getElementById("msg1").innerHTML = msg;
//        return false;
//    }
//}

//function CheckAll2() {
//    var msg = " ";
//    var ok2 = true;
//    ok2 = CheckEmail && ok2;
//    ok2 = CheckPassword && ok2;
//    ok2 = Check_Passwords && ok2;
//    ok2 = CheckPhone && ok2;

//    if (ok2) {
//        //msg = " <br/>Thank you for filling the form. ";
//        //document.getElementById("msg2").innerHTML = msg;
//        return true;
//    }
//    else {
//        //msg += " <br/> Please fill all the details. ";
//        //document.getElementById("msg2").innerHTML = msg;
//        return false;
//    }
//}

//function CheckAll3() {
//    var msg = " ";
//    var ok3 = true;
//    ok3 = CheckMikud && ok3;
//    ok3 = CheckBox1 && ok3;
//    ok3 = CheckBox2 && ok3;
//    ok3 = CheckCity && ok3;

//    if (ok3) {
//        //msg = " <br/>Thank you for filling the form. ";
//        //document.getElementById("msg3").innerHTML = msg;
//        return true;
//    }
//    else {
//        //msg += " <br/> Please fill all the details. ";
//        //document.getElementById("msg3").innerHTML = msg;
//        return false;
//    }
//}

function CheckUname() {
    msg = " ";
    count = 0;
    var unamelength = document.getElementById("Uname").value.length;
    if (unamelength > 2) {
        return true;
    }
    else {
        msg += " <br/> שם המשתמש לא נכון";
        count++;
        document.getElementById("msg1").innerHTML = msg;
        return false;
    }
}

function CheckFname() {
    var fnamelength = document.getElementById("Fname").value.length;
    if (fnamelength > 2) {
        return true;
    }
    else {

        msg += " <br/> השם הפרטי לא נכון";
        count++;
        document.getElementById("msg1").innerHTML = msg;
        return false;
    }
}

function CheckLname() {
    var lnamelength = document.getElementById("Lname").value.length;
    var Fname_value = document.getElementById("Fname").value;
    var Lname_value = document.getElementById("Lname").value;
    if (lnamelength > 2 && Fname_value != Lname_value) {
        return false;
    }
    else {
        msg += " <br/> שם המשפחה לא נכון";
        count++;
        document.getElementById("msg1").innerHTML = msg;
        return true;
    }
}

function CheckEmail() {
    msg = " ";
    count = 0;
    var Mail = document.getElementById("Mail").value;
    if ((Mail.length == 0) || (Mail.split("@").length != 2) || (Mail.indexOf(".") == 0) || (Mail.lastIndexOf(".") == Mail.length - 1)) {
        msg += " <br/> אימייל לא טוב";
        count++;
        document.getElementById("msg2").innerHTML = msg;
        return false;
    }
    else {
        return true;
    }
}

function CheckPassword() {
    var password1 = document.getElementById("Pwd").value;
    var small = false;
    var big = false;
    var len = password1.length;
    var length = false;
    for (var i = 0; i < len; i++) {
        var char = password1[i];
        if ("a" <= char && char <= "z") {
            small = true;
        }
        if ("A" <= char && char <= "Z") {
            big = true;
        }
        if (len > 5 && len < 30) {
            length = true;
        }
    }
    if ((big) && (small) && (length)) {
        return true;
    }
    else {
        msg += " <br/> סיסמא חלשה מדי";
        count++;
        document.getElementById("msg2").innerHTML = msg;
        return false;
    }
}

function Check_Passwords() {
    var PWD1 = document.getElementById("Pwd").value;
    var PWD2 = document.getElementById("Pwd2").value;
    if (PWD1 == PWD2) {
        return true;
    }
    else {
        msg += " <br/> הסיסמאות לא זהות";
        count++;
        document.getElementById("msg2").innerHTML = msg;
        return false;
    }
}

function CheckPhone() {
    var Phone = document.getElementById("Pnumber").value;
    var Phone_length = document.getElementById("Pnumber").value.length;
    var letters1 = true;
    var letters2 = true;
    var Length = true;
    for (var i = 0; i < Phone_length; i++) {
        var char = Phone[i];
        if ("a" <= char && char <= "z") {
            letters1 = false;
        }
        if ("A" <= char && char <= "Z") {
            letters2 = false;
        }
    }
    if (Phone_length < 10) {
        Length = false;
    }
    if ((letters2) && (letters1) && (Length)) {

        return true;
    }
    else {
        msg += " <br/> טלפון לא טוב";
        count++;
        document.getElementById("msg2").innerHTML = msg;
        return false;
    }
}

function CheckMikud() {
    msg = " ";
    count = 0;
    var Index = document.getElementById("Mikud").value;
    var X = true;
    var Y = true;
    var length = false;
    for (var i = 0; i < Index.length; i++) {
        var j = Index[i];
        if ("a" <= j && j <= "z") {
            X = true;
        }
        if ("A" <= j && j <= "Z") {
            Y = true;
        }
        if (len > 2 && len < 15) {
            length = true;
        }
    }
    if ((X) && (Y) && (length)) {

        return true;
    }
    else {
        msg += " <br/< מיקוד לא טוב";
        count++;
        document.getElementById("msg3").innerHTML = msg;
        return false;
    }
}

function CheckBox1() {
    if (document.getElementById("Accept").checked == false) {
        msg += " <br/> עליך לאשר את תנאי השימוש כדי להמשיך";
        count++;
        document.getElementById("msg3").innerHTML = msg;
        return false;
    }
    else {
        return true;
    }

}

function CheckBox2() {
    if (document.getElementById("Accept_notifications").checked == false) {
        msg += " <br/> לא אישרת התראות";
        document.getElementById("msg3").innerHTML = msg;
        return true;
    }
    else {
        msg += " <br/> אישרת התראות";
        document.getElementById("msg3").innerHTML = msg;
        return true;
    }
}

function CheckCity() {
    var Selected = document.getElementById("City").selectedIndex;
    if (Selected == 0) {
        msg += " <br/> בחר עיר";
        count++;
        document.getElementById("msg3").innerHTML = msg;
        return false;
    }
    else {
        return true;
    }
}
