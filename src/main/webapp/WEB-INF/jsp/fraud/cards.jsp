<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.ArrayList"%>
<%@page import = "com.cognizant.fraudmanagementsystem.model.Card"%>
<%@page import = "com.cognizant.fraudmanagementsystem.util.CurrentUser"%>
<html>
    <head>
        <title>Card Frauds</title>
        <script type="text/javascript" src="js/export.js"></script>
    </head>
    <body>
        <a href="/add-card-fraud">Add Card Fraud</a>
        <a href="/logout">Logout</a>
        <form method="post" action="/card-search">
            <input type="text" name="query" placeholder="query">
            <select name="type">
                <option value="cardType">Card Type</option>
                <option value="userId">User Id</option>
                <option value="fraudLevel">FraudLevel</option>
            </select>
            <button type="submit">Search</button>
        </form>
        <h1>Card Frauds</h1>
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
    
            <% ArrayList<Card> cards = (ArrayList<Card>)request.getAttribute("cards");
            for(Card card : cards){ %>
                <tbody>
                    <tr>
                        <td><%=card.getCardHolderName()%></td>
                        <td><%=card.getAccountNo()%></td>
                        <td><%=card.getCardNo()%></td>
                        <td><%=card.getFraudLevel()%></td>
                        <td><%=card.getTransactionDetails()%></td>
                        <td>
                            <%  String id = CurrentUser.id;
                            if (type.equals("Admin")) {%>
                            <form method="post" action="/card-delete-admin">
                                <button type="submit" name="id" value=<%=card.getId()%>>Delete</button>
                            </form>
                        <%} else if (card.getUserId().equals(id)) {%>
                            <form method="post" action="/card-delete">
                                <button type="submit" name="id" value=<%=card.getId()%>>Delete</button>
                            </form>
                        <%}%>
                        </td>
                    </tr>
                </tbody>
                <%}%>
        </table>
    </body>
</html>