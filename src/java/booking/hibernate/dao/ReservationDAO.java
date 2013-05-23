/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package booking.hibernate.dao;

import org.hibernate.Session;
import booking.hibernate.dao.HibernateUtil;
import booking.hibernate.entities.Reservation;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;

public class ReservationDAO {
    private Session session = null;
    
    // -------------
    public ReservationDAO() {
        this.session = HibernateUtil.getSessionFactory().openSession();
    } /// constructeur
    
    public List<Reservation> getReservation(int nb) {
        // ----------------------------
        List<Reservation> res = null;

        try {
            // --- FROM NomDeClasse
            String requet = "FROM Reservation WHERE id_art="+nb;
           Query q = this.session.createQuery(requet);
            
            res = (List<Reservation>) q.list();
        } catch (HibernateException he) {
            he.printStackTrace();
        }

        return res;
    }/// select
}
