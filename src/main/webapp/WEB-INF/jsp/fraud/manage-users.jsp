<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.ArrayList"%>
<%@page import = "com.cognizant.fraudmanagementsystem.model.FraudAnalysisPersonnel"%>
<%@page import = "com.cognizant.fraudmanagementsystem.util.CurrentUser"%>
<html>
    <head>
        <title>Manage Users</title>
        <script type="text/javascript" src="js/export.js"></script>
    </head>
    <body>
        <a href="/add-user">Add User</a>
        <a href="/logout">Logout</a>
        <h1>Fraud Analysis Personnels</h1>
        <button onclick="exportData()">Export</button>
        <table id="data">
            <thead>
                <tr>
                    <td>Id</td>
                    <td>Name</td>
                    <td>Gender</td>
                    <td>Email</td>
                    <td>Authorization</td>
                    <td>Action</td>
                </tr>
            </thead>
    
            <% ArrayList<FraudAnalysisPersonnel> users = (ArrayList<FraudAnalysisPersonnel>)request.getAttribute("users");
            for(FraudAnalysisPersonnel user : users){ %>
                <tbody>
                    <tr>
                        <td><%=user.getId()%></td>
                        <td><%=user.getFirstName() + " " + user.getLastName()%></td>
                        <td><%=user.getGender()%></td>
                        <td><%=user.getEmail()%></td>
                        <td>
                            <%if(user.getIsAuthorized() == 0) { %>
                                Rejected
                            <%} else if(user.getIsAuthorized() == 1) { %> 
                                Pending
                            <%} else { %> 
                                Authorized
                            <%}%>
                        </td>
                        <td>
                            <%if(user.getIsAuthorized() == 0) { %>
                                <form method="post" action="/accept-user">
                                    <button type="submit" name="id" value=<%=user.getId()%>>Accept</button>
                                </form>
                            <%} else if(user.getIsAuthorized() == 1) { %> 
                                <form method="post" action="/accept-user">
                                    <button type="submit" name="id" value=<%=user.getId()%>>Accept</button>
                                </form>
                                <form method="post" action="/reject-user">
                                    <button type="submit" name="id" value=<%=user.getId()%>>Reject</button>
                                </form>
                            <%} else { %> 
                                <form method="post" action="/reject-user">
                                    <button type="submit" name="id" value=<%=user.getId()%>>Reject</button>
                                </form>
                            <%}%>
                        </td>
                    </tr>
                </tbody>
                <%}%>
        </table>
    </body>
</html>