<%-- 
    Document   : procesaEncuesta
    Created on : 6/09/2017, 02:54:00 PM
    Author     : jmendoza
--%>

<%@page import="encuesta.Encuesta"%>
<%@page import="encuesta.ConexionBD"%>
<%@page import="encuesta.RelacionUE"%>

<%
            
            String usuario = (String)session.getAttribute("usuarioSesion");
            String pwd = (String)session.getAttribute("pwdSesion");
            Object s = session.getAttribute("sesionValida");
            String nombre = (String)session.getAttribute("nombre");
            int id_usuario = (Integer)session.getAttribute("id_usuario");
            int pregunta = 1;
            if (s != null){
                Boolean b = (Boolean)s;
                if(b.booleanValue() == true){
                    
                    System.out.println("Sesion valida: encuesta.jsp");
                    out.println("Bienvenido: " + nombre + "<br />");
                    out.println("<a href='cierraSesion.jsp'>Cierra sesion</a>");
                    out.println("<br /><br />");
                }
                else{
                    
                    response.sendRedirect("login.jsp");
                }
            }else{
            response.sendRedirect("login.jsp"); 
            }
            
        
            %>
<%
   /*
   String descripcion1 = new String(request.getParameter("descripcion1").getBytes("ISO-8859-1"),"UTF-8");    
   String apellidoP = new String(request.getParameter("aPaterno").getBytes("ISO-8859-1"),"UTF-8");
   String apellidoM = new String(request.getParameter("aMaterno").getBytes("ISO-8859-1"),"UTF-8");
   String email = new String(request.getParameter("email").getBytes("ISO-8859-1"),"UTF-8");
   String pasword = new String(request.getParameter("password").getBytes("ISO-8859-1"),"UTF-8");
   */
   int respuesta[]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
   
   
   
   ConexionBD bd = new ConexionBD();
   
   bd.relacion(id_usuario);
   
   RelacionUE en = bd.recuperaEncuesta(id_usuario); 
   Encuesta enc;
   out.println("identificador ==" + en.getId_encuesta()); 
   
   for(int i=0;i < 18; i++){
       respuesta[i] = Integer.parseInt(request.getParameter("pregunta"+(i+1)));
       enc = new Encuesta((i+1), en.getId_encuesta(),respuesta[i]);
       bd.insertaEncuesta(enc);
   }
   //Usuario us = new Usuario(0, nombre, apellidoP, apellidoM, email, pasword);
   //ConexionBD con = new ConexionBD();
   
   //con.insertaUsuario(us);
   
   out.print("<h1>Registro creado exitosamente<h1>");

//response.sendRedirect("exito.html");
%>
