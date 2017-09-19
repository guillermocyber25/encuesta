/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package encuesta;
import java.util.ArrayList;
import java.util.Iterator;
/**
 *
 * @author jmendoza
 */
public class EncuestaMain {
    public static void main(String[] args) {
        ConexionBD con = new ConexionBD();
        //Usuario us = new Usuario(0, "guillermo", "islas", "arreola", "guillermocyber@gmail.com", "123456");
        //con.insertaUsuario(us);
       //Encuesta en = new Encuesta(0,3, "PRUEBA", 3,3,3);
       //con.insertaEncuesta(en);
       Usuario us = con.recuperaUsuario("nuevo@hotmail.com");
       us.toString();
       //con.validaUsuario("nuevo@nuevo.com", "123456");
        //System.out.println(us.getNombre());
        System.out.println(us.toString());
        
           /*
            ArrayList preguntas = con.recuperaPreguntas();
            Iterator it = preguntas.iterator();
            while(it.hasNext()){
                Preguntas p = (Preguntas)it.next();
                System.out.println(p.getIdPregunta());
                System.out.println("");
                System.out.println(p.getDescripcion());
                System.out.println("");
                System.out.println(p.getTipo());
                
            }*/
    }
}
