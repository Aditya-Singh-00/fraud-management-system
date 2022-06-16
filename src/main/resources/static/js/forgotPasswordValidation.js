function validate() {
    var userId = document.getElementById("userId").value;
    var firstAnswer = document.getElementById("firstAnswer").value;
    var secondAnswer = document.getElementById("secondAnswer").value;
    var thirdAnswer = document.getElementById("thirdAnswer").value;
    var isValid = true;
    if (userId == null || userId.trim().length == 0) {
        document.getElementById("userId").classList.add("class","errorField");
        isValid = false;
        window.alert("User ID is blank");
        return false;
    } else {
        document.getElementById("userId").classList.remove("class","errorField");
        isValid = true;
    }
    if (firstAnswer == null || firstAnswer.trim().length == 0) {
        document.getElementById("firstAnswer").classList.add("class","errorField");
        isValid = false;
        window.alert("Answer all security question");
        return false;
    }else {
        document.getElementById("firstAnswer").classList.remove("class","errorField");
        isValid = true;
    }
    
    if (secondAnswer == null || secondAnswer.trim().length == 0) {
        document.getElementById("secondAnswer").classList.add("class","errorField");
        isValid = false;
        window.alert("Answer all security question");
        return false;
    }else {
        document.getElementById("secondAnswer").classList.remove("class","errorField");
        isValid = true;
    }
    
    if (thirdAnswer == null || thirdAnswer.trim().length == 0) {
        document.getElementById("thirdAnswer").classList.add("class","errorField");
        isValid = false;
        window.alert("Answer all security question");
        return false;
    }else {
        document.getElementById("thirdAnswer").classList.remove("class","errorField");
        isValid = true;
    }
    return isValid;
}