/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package booking.hibernate.dao;


import booking.hibernate.entities.Reservation;
import org.hibernate.HibernateException;
import org.hibernate.Session;

/**
 *
 * @author stagiaire
 */
public class FaireReservationDAO {
    
    private Session session = null;

    // -------------
    public FaireReservationDAO() {
        this.session = HibernateUtil.getSessionFactory().openSession();
    } /// constructeur

    
    public void faireReservation(Reservation reservation) {
      String lsMessage = "";
      org.hibernate.Transaction tx = this.session.beginTransaction();

      try {
         this.session.save(reservation);
         tx.commit();
         lsMessage = "Insertion OK";
      }
      catch(HibernateException e) {
         tx.rollback();
         lsMessage = e.getMessage();
      }
   } /// ajouter

    // ------------------------
    public void fermerSession() {
        try {
            this.session.close();
        } catch (Exception e) {
        }
    } /// fermerSession
}

