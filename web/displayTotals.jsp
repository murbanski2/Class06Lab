<%-- 
    Document   : displayTotals
    Created on : Sep 15, 2013, 10:03:29 PM
    Author     : Mark
--%>

<%@page import="model.MenuItem"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Totals</title>
    </head>
    <body>
        <h1>Your Order</h1> <br/>
        <%
            String[] choices = request.getParameterValues("item");
            List menu = (List)request.getAttribute("menu");
            String total = request.getParameter("total");
            String tax = request.getParameter("tax");
            String tip = request.getParameter("tip");
            double grandTotal = Double.parseDouble(total) 
                    + Double.parseDouble(tax);
        %>
        <%
        
            for(String s: choices) {
                int i = Integer.parseInt(s);
                MenuItem item = (MenuItem)menu.get(i);
                String outItem = item.getItem() + "    $" + item.getPrice();
        %>
            <p><%= outItem %></p>            
        <%
            }
            
        %>
        <br/>
        <p>Total = <%= total %></p>
        <p>Tax = <%= tax %></p>
        <p>Grand Total = <%= grandTotal %></p>
        <p>Suggested Tip = <%= tip %></p>
    </body>
</html>
