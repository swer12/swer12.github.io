var msg = " ";

function CheckCity() {
    var Selected = document.getElementById("City").selectedIndex;
    if (Selected == 0) {
        msg += " <br> בחר עיר";
        document.getElementById("msg1").innerHTML = msg;
        return false;
    }
    else {
        return true;
    }
}
function CheckPetType() {
    var Selected = document.getElementById("PetType").selectedIndex;
    if (Selected == 0) {
        msg += " <br> בחר סוג חיה";
        document.getElementById("msg1").innerHTML = msg;
        return false;
    }
    else {
        return true;
    }
}
function CheckPetColor() {
    var Selected = document.getElementById("PetColor").selectedIndex;
    if (Selected == 0) {
        msg += " <br> בחר צבע חיה";
        document.getElementById("msg1").innerHTML = msg;
        return false;
    }
    else {
        return true;
    }
}
function CheckPetSubType() {
    var Selected = document.getElementById("PetSubType").selectedIndex;
    if (Selected == 0) {
        msg += " <br> בחר את גזע החיה";
        document.getElementById("msg1").innerHTML = msg;
        return false;
    }
    else {
        return true;
    }
}
function CheckPetSex() {
    var Selected = document.getElementById("PetSex").selectedIndex;
    if (Selected == 0) {
        msg += " <br> בחר את מין החיה";
        document.getElementById("msg1").innerHTML = msg;
        return false;
    }
    else {
        return true;
    }
}

function CheckPetName() {
    var fnamelength = document.getElementById("pet_name").value.length;
    if (fnamelength > 2) {
        return true;
    }
    else {
        msg += " <br> שם החיה לא נכון";
        document.getElementById("msg1").innerHTML = msg;
        return false;
    }
}