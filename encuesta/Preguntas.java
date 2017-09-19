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
public class Preguntas {
    private int idPregunta;
    private String descripcion;
    private int tipo;
    private int dia;

    public Preguntas(int idPregunta, String descripcion, int tipo, int dia) {
        this.idPregunta = idPregunta;
        this.descripcion = descripcion;
        this.tipo = tipo;
        this.dia = dia;
    }

    public int getIdPregunta() {
        return idPregunta;
    }

    public void setIdPregunta(int idPregunta) {
        this.idPregunta = idPregunta;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }

    public int getDia() {
        return dia;
    }

    public void setDia(int dia) {
        this.dia = dia;
    }

    @Override
    public String toString() {
        return "Preguntas{" + "idPregunta=" + idPregunta + ", descripcion=" + descripcion + ", tipo=" + tipo + ", dia=" + dia + '}';
    }
    
    
   

        
    
}
