<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.ArrayList"%>
<%@page import = "com.cognizant.fraudmanagementsystem.model.Claim"%>
<%@page import = "com.cognizant.fraudmanagementsystem.util.CurrentUser"%>
<html>
    <head>
        <title>Claim Frauds</title>
        <script type="text/javascript" src="js/export.js"></script>
    </head>
    <body>
        <a href="/add-claim-fraud">Add Claim Fraud</a>
        <a href="/logout">Logout</a>
        <form method="post" action="/claim-search">
            <input type="text" name="query" placeholder="query">
            <select name="type">
                <option value="cardType">Card Type</option>
                <option value="userId">User Id</option>
                <option value="fraudLevel">FraudLevel</option>
            </select>
            <button type="submit">Search</button>
        </form>
        <h1>Claim Frauds</h1>
        <% 
            String type = CurrentUser.type;
            if (type.equals("Admin")) {%>
            <button onclick="exportData()">Export</button>
        <%}%>
        <table id="data">
            <thead>
                <tr>
                    <td>Name</td>
                    <td>Account No.</td>
                    <td>Card No.</td>
                    <td>Fraud Level</td>
                    <td>Transaction Details</td>
                    <td>Action</td>
                </tr>
            </thead>
    
            <% ArrayList<Claim> claims = (ArrayList<Claim>)request.getAttribute("claims");
            for(Claim claim : claims){ %>
                <tbody>
                    <tr>
                        <td><%=claim.getCardHolderName()%></td>
                        <td><%=claim.getAccountNo()%></td>
                        <td><%=claim.getCardNo()%></td>
                        <td><%=claim.getFraudLevel()%></td>
                        <td><%=claim.getTransactionDetails()%></td>
                        <td>
                            <%  String id = CurrentUser.id;
                            if (type.equals("Admin")){%>
                            <form method="post" action="/claim-delete-admin">
                                <button type="submit" name="id" value=<%=claim.getId()%>>Delete</button>
                            </form>
                        <%} else if(claim.getUserId().equals(id)) {%>
                            <form method="post" action="/claim-delete">
                                <button type="submit" name="id" value=<%=claim.getId()%>>Delete</button>
                            </form>
                        </td>
                        <%}%>
                    </tr>
                </tbody>
                <%}%>
        </table>
    </body>
</html>