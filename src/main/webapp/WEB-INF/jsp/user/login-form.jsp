<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
    <head>
        <title>User Login</title>
    </head>
    <body>
        <div class="container">
            <font color="red">${errorMessage}</font>
            <form method="post">
                <fieldset class="form-group">
                    <label>User ID</label> <input class="form-control" type="text"
                        name="userId" placeholder="Enter Your ID" autofocus required />
                </fieldset>
                <fieldset class="form-group mt-3">
                    <label>Password</label> <input class="form-control" type="password"
                        name="password" placeholder="Enter Password" required />
                </fieldset>
                <input class="btn btn-success mt-3" type="submit" value="Submit" />
            </form>
        </div>
        
        <div class="container">
            Don't have an account? <a href="/user-registration">Click here</a>
            to Create a new account
        </div>
    </body>
</html>