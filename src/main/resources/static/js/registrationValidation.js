function validate() {
   
    var id = document.getElementById("userId").value;
    var firstName = document.getElementById("firstName").value;
    var lastName = document.getElementById("lastName").value;
    var dob = document.getElementById("dob").value;
    var gender = document.getElementById("gender").value;
    var contactNo = document.getElementById("contactNo").value;
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;
    var firstAnswer = document.getElementById("firstAnswer").value;
    var secondAnswer = document.getElementById("secondAnswer").value;
    var thirdAnswer = document.getElementById("thirdAnswer").value;
    var isValid = true;
    var dobPattern =/^([0-9]{1,2})\/([0-9]{1,2})\/([0-9]{4})$/;
    var contactNoPattern = /^[1-9]{1}[0-9]{9}/;
   
    if (id == null || id.trim().length == 0) {
        document.getElementById("userId").classList.add("class","errorField");
        isValid = false;
        window.alert("User ID is blank");
        return false;
    } else {
        document.getElementById("userId").classList.remove("class","errorField");
        isValid = true;
    }
    if (firstName == null || firstName.trim().length == 0) {
        document.getElementById("firstName").classList.add("class","errorField");
        isValid = false;
        window.alert("First Name is blank");
        return false;
    } else {
        document.getElementById("firstName").classList.remove("class","errorField");
        isValid = true;
    }
    if (lastName == null || lastName.trim().length == 0) {
        document.getElementById("lastName").classList.add("class","errorField");
        isValid = false;
        window.alert("Last Name is blank");
        return false;
    } else {
        document.getElementById("lastName").classList.remove("class","errorField");
        isValid = true;
    }
    if (dob == null || dob.trim().length == 0) {
        document.getElementById("dob").classList.add("class","errorField");
        isValid = false;
        window.alert("Date of birth is blank");
        return false;
    } else if (!dobPattern.test(dob)) {
        document.getElementById("dob").classList.add("class","errorField");
        isValid = false;
        window.alert("Please Enter valid Date of birth");
        return false;
    } else {
        document.getElementById("dob").classList.remove("class","errorField");
        isValid = true;
    }
    if (gender == null || gender.trim().length == 0) {
        document.getElementById("gender").classList.add("class","errorField");
        isValid = false;
        window.alert("Gender not selected");
        return false;
    } else {
        document.getElementById("gender").classList.remove("class","errorField");
        isValid = true;
    }
    if (contactNo == null || contactNo.trim().length == 0) {
        document.getElementById("contactNo").classList.add("class","errorField");
        isValid = false;
        window.alert("Contact No is blank");
        return false;
    } else if (!contactNoPattern.test(contactNo)) {
        document.getElementById("contactNo").classList.add("class","errorField");
        isValid = false;
        window.alert("Contact No is invalid");
        return false;
    } else {
        document.getElementById("contactNo").classList.remove("class","errorField");
        isValid = true;
    }
    if (email == null || email.trim().length == 0) {
        document.getElementById("email").classList.add("class","errorField");
        isValid = false;
        window.alert("Email is blank");
        return false;
    } else {
        document.getElementById("email").classList.remove("class","errorField");
        isValid = true;
    }
    if (password == null || password.trim().length == 0) {
        document.getElementById("password").classList.add("class","errorField");
        isValid = false;
        window.alert("Password is blank");
        return false;
    } else {
        document.getElementById("password").classList.remove("class","errorField");
        isValid = true;
    }
    if (firstAnswer == null || firstAnswer.trim().length == 0) {
        document.getElementById("firstAnswer").classList.add("class","errorField");
        isValid = false;
        window.alert("Please enter your favourite color");
        return false;
    } else {
        document.getElementById("firstAnswer").classList.remove("class","errorField");
        isValid = true;
    }
    if (secondAnswer == null || secondAnswer.trim().length == 0) {
        document.getElementById("secondAnswer").classList.add("class","errorField");
        isValid = false;
        window.alert("Please enter your favourite animal");
        return false;
    } else {
        document.getElementById("secondAnswer").classList.remove("class","errorField");
        isValid = true;
    }
    if (thirdAnswer == null || thirdAnswer.trim().length == 0) {
        document.getElementById("thirdAnswer").classList.add("class","errorField");
        isValid = false;
        window.alert("Please enter which company phone do you use");
        return false;
    } else {
        document.getElementById("thirdAnswer").classList.remove("class","errorField");
        isValid = true;
    }

    return isValid; 
}