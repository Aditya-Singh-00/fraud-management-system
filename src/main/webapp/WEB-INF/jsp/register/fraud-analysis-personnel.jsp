<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <title>Register</title>
</head>

<body>
    <h1>Register as Fraud Analysis Personnel</h1>
    <form method="post" modelAttribute="user">
        <label>User ID</label>
        <input type="text" name="id" placeholder="Enter Your ID" autofocus required />
        <label>First Name</label>
        <input type="text" name="firstName" placeholder="Enter your first name" required />
        <label>Last Name</label>
        <input type="text" name="lastName" placeholder="Enter your last name" required />
        <label>Date of Birth</label>
        <input type="text" name="dob" placeholder="Enter your date of birth" required />
        <label>Gender</label>
        <select name="gender">
            <option value="">Select your gender</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Other">Other</option>
        </select>
        <label>Contact No.</label>
        <input type="text" name="contactNo" placeholder="Enter your contact no." required />
        <label>Email</label>
        <input type="email" name="email" placeholder="Enter your email" required />
        <label>Password</label>
        <input type="password" name="password" placeholder="Enter password" required />
        <label>What is your favourite colour?</label>
        <input type="text" name="firstAnswer" placeholder="Green" required />
        <label>Which animal do you like?</label>
        <input type="text" name="secondAnswer" placeholder="Dog" required />
        <label>Which mobile company phone do you use?</label>
        <input type="text" name="thirdAnswer" placeholder="Mobile Company" required />
        <input type="submit" value="Register" />
    </form>
</body>

</html>