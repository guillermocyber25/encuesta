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
public class Encuesta {
    private int id_pregunta;
    private int id_encuesta;
    private int calificacion;

    public Encuesta(int id_pregunta, int id_encuesta, int calificacion) {
        this.id_pregunta = id_pregunta;
        this.id_encuesta = id_encuesta;
        this.calificacion = calificacion;
    }

    public int getId_pregunta() {
        return id_pregunta;
    }

    public void setId_pregunta(int id_pregunta) {
        this.id_pregunta = id_pregunta;
    }

    public int getId_encuesta() {
        return id_encuesta;
    }

    public void setId_encuesta(int id_encuesta) {
        this.id_encuesta = id_encuesta;
    }

    public int getCalificacion() {
        return calificacion;
    }

    public void setCalificacion(int calificacion) {
        this.calificacion = calificacion;
    }
   

   

    
    
    

    
    
}
