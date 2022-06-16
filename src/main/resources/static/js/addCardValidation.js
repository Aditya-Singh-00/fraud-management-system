function validate() {
    var cardNo = document.getElementById("cardNo").value;
    var userId = document.getElementById("userId").value;
    var cardHolderName = document.getElementById("cardHolderName").value;
    var cardType = document.getElementById("cardType").value;
    var accountNo = document.getElementById("accountNo").value;
    var expiryDate = document.getElementById("expiryDate").value;
    var transactionDate = document.getElementById("transactionDate").value;
    var transactionDetails = document.getElementById("transactionDetails").value;
    var remarks = document.getElementById("remarks").value;
    var fraudLevel = document.getElementById("fraudLevel").value;
    var isValid = true;

    if (cardNo == null || cardNo.trim().length == 0) {
        document.getElementById("cardNo").classList.add("class","errorField");
        isValid = false;
        window.alert("Card No. is blank");
        return false;
    } else {
        document.getElementById("cardNo").classList.remove("class","errorField");
        isValid = true;
    }

    if (userId == null || userId.trim().length == 0) {
        document.getElementById("userId").classList.add("class","errorField");
        isValid = false;
        window.alert("User ID is blank");
        return false;
    } else {
        document.getElementById("userId").classList.remove("class","errorField");
        isValid = true;
    }
    if (cardHolderName == null || cardHolderName.trim().length == 0) {
        document.getElementById("cardHolderName").classList.add("class","errorField");
        isValid = false;
        window.alert("Card Holder Name is blank");
        return false;
    } else {
        document.getElementById("cardHolderName").classList.remove("class","errorField");
        isValid = true;
    }
    if (cardType == null || cardType.trim().length == 0) {
        document.getElementById("cardType").classList.add("class","errorField");
        isValid = false;
        window.alert("Please select card type");
        return false;
    } else {
        document.getElementById("cardType").classList.remove("class","errorField");
        isValid = true;
    }
    if (accountNo == null || accountNo.trim().length == 0) {
        document.getElementById("accountNo").classList.add("class","errorField");
        isValid = false;
        window.alert("Account No is blank");
        return false;
    } else {
        document.getElementById("accountNo").classList.remove("class","errorField");
        isValid = true;
    }
    if (expiryDate == null || expiryDate.trim().length == 0) {
        document.getElementById("expiryDate").classList.add("class","errorField");
        isValid = false;
        window.alert("Expiry date is blank");
        return false;
    } else {
        document.getElementById("expiryDate").classList.remove("class","errorField");
        isValid = true;
    }
    if (transactionDate == null || transactionDate.trim().length == 0) {
        document.getElementById("transactionDate").classList.add("class","errorField");
        isValid = false;
        window.alert("Transaction date is blank");
        return false;
    } else {
        document.getElementById("transactionDate").classList.remove("class","errorField");
        isValid = true;
    }
    if (transactionDetails == null || transactionDetails.trim().length == 0) {
        document.getElementById("transactionDetails").classList.add("class","errorField");
        isValid = false;
        window.alert("Transaction details is blank");
        return false;
    } else {
        document.getElementById("transactionDetails").classList.remove("class","errorField");
        isValid = true;
    }
    if (remarks == null || remarks.trim().length == 0) {
        document.getElementById("remarks").classList.add("class","errorField");
        isValid = false;
        window.alert("Remarks is blank");
        return false;
    } else {
        document.getElementById("remarks").classList.remove("class","errorField");
        isValid = true;
    }
    if (fraudLevel == null || fraudLevel.trim().length == 0) {
        document.getElementById("fraudLevel").classList.add("class","errorField");
        isValid = false;
        window.alert("Please select fraud level");
        return false;
    } else {
        document.getElementById("fraudLevel").classList.remove("class","errorField");
        isValid = true;
    }

    return isValid;
    
}