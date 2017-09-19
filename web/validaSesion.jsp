<%-- 
    Document   : validaSesion
    Created on : 6/09/2017, 01:33:17 PM
    Author     : jmendoza
--%>

<%@page import="encuesta.ConexionBD"%>
<%@page import="encuesta.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    //<input type="hidden" name="descripcion1" value="Traslados a la CDMX">    
    String usuario =request.getParameter("email");
    String pwd =request.getParameter("password");
    
    ConexionBD bd = new ConexionBD();
    boolean valido = bd.validaUsuario(usuario, pwd);
    
    if(valido){
        
        System.out.println("Usuario valido");
        boolean sesionValida = true;
        session.setAttribute("usuarioSesion", usuario);
        session.setAttribute("pwdSesion", pwd);  
        session.setAttribute("sesionValida", sesionValida);
        Usuario us = bd.recuperaUsuario(usuario);
        session.setAttribute("id_usuario", us.getIdUsuario());
        session.setAttribute("nombre", us.getNombre());
        
        response.sendRedirect("encuesta.jsp");
        
        
        
    }
   else{
        out.println("Usuario Invalido");
        //se redirecciona a login
        // response.sendRedirect("login.jsp");
        }
        
    
%>
