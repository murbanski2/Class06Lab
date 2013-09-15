<%-- 
    Document   : displaymenu
    Created on : Sep 15, 2013, 2:22:06 PM
    Author     : Mark
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Sandwich Shop Menu</title>
    </head>
    <body>
        <h1>Choose from the menu and then submit</h1>
        <%
            List menu = (List)request.getAttribute("menu");
            Iterator it = menu.iterator();
            while(it.hasNext()) {
            
            out.print("<br> " + it.next());
        }
        %>
    </body>
</html>
