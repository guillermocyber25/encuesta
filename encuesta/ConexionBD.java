/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package encuesta;

/**
 *
 * @author jmendoza
 */

import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Date;

public class ConexionBD {

    private Connection con = null;
    
    public ConexionBD(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://mysql30615-env-3713061.jl.serv.net.mx/encuesta";
            String user = "root";
            String password = "FAHvvy13592";
            con= DriverManager.getConnection(url, user, password);
            System.out.println("Estamos conectados");
        } catch(java.lang.ClassNotFoundException e){
            System.out.println("No se encuentra la clase ");
            
        } catch(SQLException e){
            System.out.println("No se puede conectar");
            e.printStackTrace();
            System.out.println("mensaje "+ e.getMessage());
        }
    }
    
    public void insertaUsuario(Usuario u){
        Statement stmt = null;
        try{
            stmt = con.createStatement();
            
            String sql = "INSERT INTO usuario " + 
                    "(id_usuario, nombre, apellidoP, apellidoM, email, pasword) "+
                    "VALUES (" +u.getIdUsuario()+",  '"+
                    u.getNombre()+"', '"+ 
                    u.getaPaterno()+"', '"+
                    u.getaMaterno()+"', '"+
                    u.getEmail()+"', '"+
                    u.getPassword()+"');";
            System.out.println("sql: "+sql);
            stmt.execute(sql);
            stmt.close();
        }
        catch(SQLException e){
            System.out.println("mensaje: "+ e.getMessage());
            e.printStackTrace();
        }
    }
    
    public void insertaEncuesta(Encuesta en){
        Statement stmt = null;
        try{
            stmt = con.createStatement();
            
            String sql = "INSERT INTO encuesta " + 
                    "(id_pregunta, id_encuesta, calificacion) "+
                    "VALUES ("+en.getId_pregunta()+", "+
                    en.getId_encuesta()+", "+ 
                    en.getCalificacion()+")";
            System.out.println("sql: "+sql);
            stmt.execute(sql);
            stmt.close();
        }
        catch(SQLException e){
            System.out.println("mensaje: "+ e.getMessage());
            e.printStackTrace();
        }
    }
    
    public void relacion(int a){
        Statement stmt = null;
        try{
            stmt = con.createStatement();
            
            String sql = "INSERT INTO rel_usuario_encuesta " + 
                    "(id_usuario) "+
                    "VALUES ("+a+");";
            System.out.println("sql: "+sql);
            stmt.execute(sql);
            stmt.close();
        }
        catch(SQLException e){
            System.out.println("mensaje: "+ e.getMessage());
            e.printStackTrace();
        }
    }
    
    
    
    public boolean validaUsuario(String usuario, String pwd){
        boolean valido = false;
        Statement stmt = null;
        ResultSet rs = null;
        
        try{
             stmt = con.createStatement();
             String sql = "SELECT * FROM usuario WHERE email = '"+usuario+"' AND pasword = '"+pwd+"'";
             rs = stmt.executeQuery(sql);
             if(rs.next())
                 valido = true;
             stmt.close();
         }
         catch(SQLException e){
            System.out.println("mensaje: "+ e.getMessage());
            e.printStackTrace();
        }
        return valido;
    }
    
   public Usuario recuperaUsuario(String email){
            Usuario user = null;
            Statement stmt = null;
            ResultSet rs = null;
            try{
              stmt = con.createStatement();
              String sql = "SELECT * FROM usuario "+
                      "WHERE email='" + email +"';";
              rs = stmt.executeQuery(sql);
                System.out.println(sql);
              if(rs.next()){
                  
                  int id_usuario = rs.getInt("id_usuario");
                  String nombre = rs.getString("nombre");
                  String aPaterno = rs.getString("apellidoP");
                  String aMaterno = rs.getString("apellidoP");
                  String email1 = rs.getString("email");
                  String pasword = rs.getString("pasword");
                  user = new Usuario(id_usuario, nombre, aPaterno, aMaterno, email1, pasword);
                  
                  
              }
              stmt.close();
            }
            catch(SQLException e){
              System.out.println("Error al ejecutar la sentencia");
              System.out.println("mensaje: "+ e.getMessage());
              e.printStackTrace();
             }
            return user;
    }
   
   public RelacionUE recuperaEncuesta(int idUsuario){
            RelacionUE en = null;
            Statement stmt = null;
            ResultSet rs = null;
            
            try{
              stmt = con.createStatement();
              String sql = "SELECT * FROM rel_usuario_encuesta "+
                      "WHERE id_usuario=" + idUsuario +";";
              rs = stmt.executeQuery(sql);
                System.out.println(sql);
              if(rs.next()){
                  
                  int id_usuario = rs.getInt("id_usuario");
                  int id_encuesta = rs.getInt("id_encuesta");
                  en = new RelacionUE(id_usuario, id_encuesta);
                  
                  
              }
              stmt.close();
            }
            catch(SQLException e){
              System.out.println("Error al ejecutar la sentencia");
              System.out.println("mensaje: "+ e.getMessage());
              e.printStackTrace();
             }
            return en;
    }

   public ArrayList recuperaPreguntas(){
        ArrayList listaPreguntas = new ArrayList();
        Statement stmt = null;
        ResultSet rs = null;
        try{
            
            stmt = con.createStatement();
            
            String sql = "SELECT * FROM preguntas;";
            
            rs = stmt.executeQuery(sql);
            
            
            while(rs.next()){
                
                int id_pregunta = rs.getInt("id_pregunta");
                String descripcion = rs.getString("descripcion");
                int tipo = rs.getInt("tipo");
                int dia = rs.getInt("dia");
                
                Preguntas d = new Preguntas(id_pregunta, descripcion, tipo, dia);
                
                listaPreguntas.add(d);
            }
        }catch(SQLException e){
              System.out.println("Error al ejecutar la sentencia");
              System.out.println("mensaje: "+ e.getMessage());
              e.printStackTrace();
        }
        return listaPreguntas;
    }
   
   
   
}

