<%-- 
    Document   : cierraSesion
    Created on : 7/09/2017, 05:11:38 PM
    Author     : jmendoza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
boolean sesionValida = false;
session.setAttribute("sesionValida", sesionValida);
 response.sendRedirect("login.jsp");
%>