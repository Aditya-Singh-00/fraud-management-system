<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <title>New Password</title>
</head>

<body>
    <h1>New Password</h1>
    <form method="post">
        <label>New Password</label>
        <input type="password" name="newPassword" placeholder="" autofocus required />
        <label>Confirm New Password</label>
        <input type="password" name="confirmNewPassword" placeholder="" required />
        <button type="submit">Reset</button>
    </form>
</body>

</html>