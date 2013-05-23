package booking.hibernate.entities;
// Generated 23 mai 2013 12:27:33 by Hibernate Tools 3.2.1.GA



/**
 * Reservation generated by hbm2java
 */
public class Reservation  implements java.io.Serializable {


     private ReservationId id;
     private Artiste artiste;
     private StatutResa statutResa;
     private String libTheme;
     private String libLieu;
     private String libNomClient;
     private String libPrenomClient;
     private String numMobileClient;
     private String libEmailClient;

    public Reservation() {
    }

	
    public Reservation(ReservationId id, Artiste artiste, String libTheme) {
        this.id = id;
        this.artiste = artiste;
        this.libTheme = libTheme;
    }
    public Reservation(ReservationId id, Artiste artiste, StatutResa statutResa, String libTheme, String libLieu, String libNomClient, String libPrenomClient, String numMobileClient, String libEmailClient) {
       this.id = id;
       this.artiste = artiste;
       this.statutResa = statutResa;
       this.libTheme = libTheme;
       this.libLieu = libLieu;
       this.libNomClient = libNomClient;
       this.libPrenomClient = libPrenomClient;
       this.numMobileClient = numMobileClient;
       this.libEmailClient = libEmailClient;
    }
   
    public ReservationId getId() {
        return this.id;
    }
    
    public void setId(ReservationId id) {
        this.id = id;
    }
    public Artiste getArtiste() {
        return this.artiste;
    }
    
    public void setArtiste(Artiste artiste) {
        this.artiste = artiste;
    }
    public StatutResa getStatutResa() {
        return this.statutResa;
    }
    
    public void setStatutResa(StatutResa statutResa) {
        this.statutResa = statutResa;
    }
    public String getLibTheme() {
        return this.libTheme;
    }
    
    public void setLibTheme(String libTheme) {
        this.libTheme = libTheme;
    }
    public String getLibLieu() {
        return this.libLieu;
    }
    
    public void setLibLieu(String libLieu) {
        this.libLieu = libLieu;
    }
    public String getLibNomClient() {
        return this.libNomClient;
    }
    
    public void setLibNomClient(String libNomClient) {
        this.libNomClient = libNomClient;
    }
    public String getLibPrenomClient() {
        return this.libPrenomClient;
    }
    
    public void setLibPrenomClient(String libPrenomClient) {
        this.libPrenomClient = libPrenomClient;
    }
    public String getNumMobileClient() {
        return this.numMobileClient;
    }
    
    public void setNumMobileClient(String numMobileClient) {
        this.numMobileClient = numMobileClient;
    }
    public String getLibEmailClient() {
        return this.libEmailClient;
    }
    
    public void setLibEmailClient(String libEmailClient) {
        this.libEmailClient = libEmailClient;
    }




}


