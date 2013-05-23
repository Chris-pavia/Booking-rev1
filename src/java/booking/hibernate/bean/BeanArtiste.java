/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package booking.hibernate.bean;

/**
 *
 * @author stagiaire
 */
public class BeanArtiste {
    // --- Propriétés

    private String idArtiste;
    private String nomArtiste;
    private String prenomArtiste;

    // --- Constructeur sans argument
    public BeanArtiste() {
    }

    // --- Méthodes (Setters et Getters)
    // -------------------------------
    public void setIdArtiste(String idArtiste) {
        this.idArtiste = idArtiste;
    }
    // ---------------------

    public String getIdArtiste() {
        return this.idArtiste;
    }

    public String getNomArtiste() {
        return nomArtiste;
    }

    public void setNomArtiste(String nomArtiste) {
        this.nomArtiste = nomArtiste;
    }

    public String getPrenomArtiste() {
        return prenomArtiste;
    }

    public void setPrenomArtiste(String prenomArtiste) {
        this.prenomArtiste = prenomArtiste;
    }
} /// class

