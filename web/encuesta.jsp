<%-- 
    Document   : encuesta
    Created on : 6/09/2017, 02:43:25 PM
    Author     : jmendoza
--%>
<%@page import="encuesta.ConexionBD"%>
<%@page import="encuesta.Preguntas" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Iterator" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Formulario encuesta</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link rel="stylesheet" type="text/css" href="css/estilos2.css" media="screen" />
    </head>
    <body>
    <div id="contact-form">    
     
        
        <div> 
        <h1>Encuesta</h1>
        <h4><%
            
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
            
        
            %></h4>
        </div>
        
        <p id="failure">Oopsie...message not sent.</p>  
        <p id="success">Your message was sent successfully. Thank you!</p>
        
        <form action="procesaEncuesta.jsp" method="get" enctype="multipart/form-data">
       
        <br>
       
            
            
        <%
            ConexionBD con = new ConexionBD();
            ArrayList preguntas = con.recuperaPreguntas();
            Iterator it = preguntas.iterator();
           //con.relacion(id_usuario);
           out.println(" <h4>Organización del evento</h4>"); 
           while(it.hasNext()){
                Preguntas p = (Preguntas)it.next();
                
            
        %>
       
        
        
        
            
            <%
                if(p.getTipo() == 1){
                    
                
            %>
           
           <div>
               <label for="subject">
                    <span><%=p.getDescripcion()%></span>
            
                <select id="subject" name="pregunta<%=p.getIdPregunta()%>" tabindex="4">
                    <option value="0">Seleccione una opción</option>
                    <option value="1">Bueno</option>
                    <option value="2">Malo</option>
                    <option value="3">Regular</option>
                </select>
            </label>
           </div>
            <%}%>
       
       <%}%>
      
        
        
         <br>
       
       <%   
           //ArrayList preguntas2 = con.recuperaPreguntas();
           Iterator it2 = preguntas.iterator();
           //con.relacion(id_usuario);
           out.println(" <h4>Conferencias y actividades</h4>"); 
           out.println(" <h5>Inauguración y conferencia magistral martes 8 de noviembre</h5>"); 
           while(it2.hasNext()){
                Preguntas p = (Preguntas)it2.next();
                
            
        %>
     
      
            
            <%
                if(p.getTipo() == 2){
                   if(p.getDia() == 2){
                
            %>
            <div>
               <label for="subject">
                    <span><%=p.getDescripcion()%></span>
            
                <select id="subject" name="pregunta<%=p.getIdPregunta()%>" tabindex="4">
                    <option value="0">Seleccione una opción</option>
                    <option value="1">Bueno</option>
                    <option value="2">Malo</option>
                    <option value="3">Regular</option>
                </select>
            </label>
           </div>
            <%} 
                }%>
        
       <%}%>
       
       
       
       <%   
           //ArrayList preguntas2 = con.recuperaPreguntas();
           Iterator it3 = preguntas.iterator();
           //con.relacion(id_usuario);
           //out.println(" <h4>Conferencias y actividades</h4>"); 
           out.println(" <h5>Conferencias y foro estudiantil miercoles 9 de noviembre</h5>"); 
           while(it3.hasNext()){
                Preguntas p = (Preguntas)it3.next();
                
            
        %>
       
       
      
            
            <%
                if(p.getTipo() == 2){
                   if(p.getDia() == 3){
                
            %>
            <div>
               <label for="subject">
                    <span><%=p.getDescripcion()%></span>
            
                <select id="subject" name="pregunta<%=p.getIdPregunta()%>" tabindex="4">
                    <option value="0">Seleccione una opción</option>
                    <option value="1">Bueno</option>
                    <option value="2">Malo</option>
                    <option value="3">Regular</option>
                </select>
            </label>
           </div>
            <%} 
                }%>
        
       <%}%>
       
        <%   
           //ArrayList preguntas2 = con.recuperaPreguntas();
           Iterator it4 = preguntas.iterator();
           //con.relacion(id_usuario);
           //out.println(" <h4>Conferencias y actividades</h4>"); 
           out.println(" <h5>Conferencias y foro estudiantil jueves 10 de noviembre</h5>"); 
           while(it4.hasNext()){
                Preguntas p = (Preguntas)it4.next();
                
            
        %>
      
      
            
            <%
                if(p.getTipo() == 2){
                   if(p.getDia() == 4){
                
            %>
            <div>
               <label for="subject">
                    <span><%=p.getDescripcion()%></span>
            
                <select id="subject" name="pregunta<%=p.getIdPregunta()%>" tabindex="4">
                    <option value="0">Seleccione una opción</option>
                    <option value="1">Bueno</option>
                    <option value="2">Malo</option>
                    <option value="3">Regular</option>
                </select>
            </label>
           </div>
            <%} 
                }%>
        
       <%}%>
       
        <div>
        <button type="submit" id="submit" >ENVIAR</button> 
        </div>
        </form>
        
        
      	</div>      
    </body>
    
</html>
