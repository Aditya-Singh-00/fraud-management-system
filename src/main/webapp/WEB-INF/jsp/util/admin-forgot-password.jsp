<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <title>Forgot Password</title>
</head>

<body>
    <h1>Forgot Password</h1>
    <form method="post">
        <label>User Id</label>
        <input type="text" name="id" placeholder="" required />
        <label>What is your favourite colour?</label>
        <input type="text" name="firstAnswer" placeholder="" required />
        <label>Which animal do you like?</label>
        <input type="text" name="secondAnswer" placeholder="" required />
        <label>Which mobile company phone do you use?</label>
        <input type="text" name="thirdAnswer" placeholder="" required />
        <button type="submit">Next</button>
    </form>
</body>

</html>