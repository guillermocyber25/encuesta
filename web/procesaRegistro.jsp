<%-- 
    Document   : procesaRegistro
    Created on : 6/09/2017, 12:43:04 PM
    Author     : jmendoza
--%>

<%@page import="encuesta.Usuario"%>
<%@page import="encuesta.ConexionBD"%>

<%
   
   String nombre = request.getParameter("nombre");
    
   String apellidoP = request.getParameter("aPaterno");
   String apellidoM = request.getParameter("aMaterno");
   String email = request.getParameter("email");
   String pasword = request.getParameter("password");
   
   Usuario us = new Usuario(0, nombre, apellidoP, apellidoM, email, pasword);
   ConexionBD con = new ConexionBD();
   
   con.insertaUsuario(us);
   
   out.print("Registro creado exitosamente");

//response.sendRedirect("exito.html");
%>