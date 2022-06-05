<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
    <head>
        <title>User Registration</title>
    </head>
    <body>
        <div class="container">
            <form:form method="post" modelAttribute="user">
                <fieldset class="form-group">
                    <form:label path="firstName">First Name</form:label>
                    <form:input class="form-control" type="text" path="firstName"
                        placeholder="Your First Name" autofocus="true" required="true" />
                    <form:errors path="firstName" cssClass="text-warning" />
                </fieldset>
                <fieldset class="form-group">
                    <form:label path="lastName">Last Name</form:label>
                    <form:input class="form-control" type="text" path="lastName"
                        placeholder="Your Last Name" required="true" />
                    <form:errors path="lastName" cssClass="text-warning" />
                </fieldset>
        
            <fieldset class="form-group">
                    <form:label path="dob">Date of Birth</form:label>
                    <form:input path="dob" type="text" class="form-control"
                        placeholder="Your Date of Birth" required="required" />
                    <form:errors path="dob" cssClass="text-warning" />
                </fieldset>
        
                <fieldset class="form-group">
                    <form:label path="gender">Gender</form:label>
                    <form:select path="gender" cssClass="form-select">
                        <option value="">Select Your Gender</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                    </form:select>
                    <form:errors path="gender" cssClass="text-warning" />
                </fieldset>
        
                <fieldset class="form-group">
                    <form:label path="contactNo">Contact Number</form:label>
                    <form:input class="form-control" type="text" path="contactNo"
                        placeholder="Your Contact Number" required="true" />
                    <form:errors path="contactNo" cssClass="text-warning" />
                </fieldset>
            <fieldset class="form-group">
                    <form:label path="userId">User ID</form:label>
                    <form:input class="form-control" type="text" path="userId"
                        placeholder="Create Your User-ID" required="true" />
                    <form:errors path="userId" cssClass="text-warning" />
                </fieldset>
            <fieldset class="form-group">
                    <form:label path="email">Email-Id</form:label>
                    <form:input class="form-control" type="email" path="email"
                        placeholder="Create Your Password" required="true" />
                    <form:errors path="email" cssClass="text-warning" />
                </fieldset>
        
                <fieldset class="form-group">
                    <form:label path="password">Password</form:label>
                    <form:input class="form-control" type="password" path="password"
                        placeholder="Create Your Password" required="true" />
                    <form:errors path="password" cssClass="text-warning" />
                </fieldset>
                <button class="btn btn-success mt-3" type="submit">Submit</button>
            </form:form>
            <div>
                Already have an account? <a href="/user-login">Click here</a> to
                Login
            </div>
        </div>
    </body>
</html>