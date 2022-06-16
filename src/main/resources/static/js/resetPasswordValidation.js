function validate() {
    var password = document.getElementById("password").value;
    var confirmNewPassword = document.getElementById("confirmNewPassword").value;
    var isValid = true;

    if (password == null || password.trim().length == 0) {
        document.getElementById("password").classList.add("class","errorField");
        isValid = false;
        window.alert("Password is blank");
        return false;
    } else {
        document.getElementById("password").classList.remove("class","errorField");
        isValid = true;
    }

    if (confirmNewPassword == null || confirmNewPassword.trim().length == 0) {
        document.getElementById("confirmNewPassword").classList.add("class","errorField");
        isValid = false;
        window.alert("Confirm new password is blank");
        return false;
    } else {
        document.getElementById("confirmNewPassword").classList.remove("class","errorField");
        isValid = true;
    }

    if (confirmNewPassword != null && password != null) {
        if (confirmNewPassword != password) {
            document.getElementById("confirmNewPassword").classList.add("class","errorField");
            isValid = false;
            window.alert("Password does not match");
            return false;
        } else {
            document.getElementById("confirmNewPassword").classList.remove("class","errorField");
            isValid = true;
        }
    } 

    return isValid;
}