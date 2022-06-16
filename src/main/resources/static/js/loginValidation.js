function validate() {
   
    var id = document.getElementById("userId").value;
    var password = document.getElementById("password").value;
    var isValid = true;
   
    if (id == null || id.trim().length == 0) {
        document.getElementById("userId").classList.add("class","errorField");
        isValid = false;
        window.alert("User ID is blank");
        return false;
    } else {
        document.getElementById("userId").classList.remove("errorField");
        isValid = true;
    }
    if (password == null || password.trim().length == 0) {
        document.getElementById("password").classList.add("class","errorField");
        isValid = false;
        window.alert("Password is blank");
        return false;
    } else {
        document.getElementById("passwordError").classList.remove("class","errorField");
        isValid = true;
    }

    return isValid; 
}