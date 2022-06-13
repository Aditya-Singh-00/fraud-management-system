<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <title>Add Transaction Fraud</title>
</head>

<body>
    <h1>Add a transaction fraud</h1>
    <a href="/logout">Logout</a>
    <form method="post" modelAttribute="transaction">
        <label>Card No.</label>
        <input type="text" name="cardNo" placeholder="Enter your card no." required />
        <label>User Id</label>
        <input type="text" name="userId" placeholder="Enter user id." required />
        <label>Card Holder Name</label>
        <input type="text" name="cardHolderName" placeholder="Enter card holder name." required />
        <label>Card Type</label>
        <select name="cardType">
            <option value="">Select card type</option>
            <option value="Debit">Debit</option>
            <option value="Credit">Credit</option>
        </select>
        <label>Account No.</label>
        <input type="text" name="accountNo" placeholder="Enter your account no." required />
        <label>Card expiry date</label>
        <input type="text" name="expiryDate" placeholder="Enter your card expiry date" required />
        <label>Transaction Date</label>
        <input type="text" name="transactionDate" placeholder="Transaction date" required />
        <label>Transaction Details</label>
        <input type="text" name="transactionDetails" placeholder="" required />
        <label>Remarks</label>
        <input type="text" name="remarks" placeholder="" required />
        <label>Fraud Level</label>
        <select name="fraudLevel">
            <option value="">Select fraud level</option>
            <option value="Extreme">Extreme</option>
            <option value="High">High</option>
            <option value="Medium">Medium</option>
            <option value="Low">Low</option>
        </select>
        <input type="submit" value="Add" />
    </form>
</body>

</html>