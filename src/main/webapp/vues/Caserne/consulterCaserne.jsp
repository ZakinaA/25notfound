<%-- 
    Document   : consulterCaserne
    Created on : 27 mars 2025, 11:39:50
    Author     : AlexandreVillain
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Caserne"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SDIS WEB</title>
    </head>
    <body>
         <%
            Caserne c = (Caserne)request.getAttribute("cCaserne");
        %>
        <h1>Caserne de  <%  out.println(c.getVille());%></h1>
        <table>
            <tr>
                <td>nom : </td><td><%  out.println(c.getNom());%></td>
            </tr>
            <tr>
                <td>address : </td><td><%  out.println(c.getCpos());%> <%  out.println(c.getVille());%> <%  out.println(c.getRue());%></td>
            </tr>
        </table>
    </body>
</html>
