<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <title>Login</title>
</head>

<body>
    <h1>Login as Admin</h1>
    <form method="post">
        <label>User ID</label>
        <input type="text" name="id" placeholder="Enter Your ID" autofocus required />
        <label>Password</label>
        <input type="password" name="password" placeholder="Enter Password" required />
        <input type="submit" value="Login" />
        <a href="/admin-forgot-password">Forgot Password?</a>
        <a href="/register/admin">Don't have an account? Signup</a>
    </form>
</body>

</html>