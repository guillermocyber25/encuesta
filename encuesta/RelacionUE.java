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
public class RelacionUE {
    int id_usuario;
    int id_encuesta;

    public RelacionUE(int id_usuario, int id_encuesta) {
        this.id_usuario = id_usuario;
        this.id_encuesta = id_encuesta;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public int getId_encuesta() {
        return id_encuesta;
    }

    public void setId_encuesta(int id_encuesta) {
        this.id_encuesta = id_encuesta;
    }
    
    
}
