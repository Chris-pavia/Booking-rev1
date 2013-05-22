/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package booking.hibernate.dao;

import org.hibernate.Session;
import booking.hibernate.dao.HibernateUtil;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;

// -----------------
public class ArtisteDAO {

    private Session session = null;

    // -------------
    public ArtisteDAO() {
        this.session = HibernateUtil.getSessionFactory().openSession();
    } /// constructeur

    public List<Artiste> getArtistes() {
        // ----------------------------
        List<Artiste> res = null;

        try {
            // --- FROM NomDeClasse
            Query q = this.session.createQuery("FROM Artiste");
            res = (List<Artiste>) q.list();
        } catch (HibernateException he) {
            he.printStackTrace();
        }

        return res;
    }/// select
    
    public List<Artiste> getArtistes(int nb) {
        // ----------------------------
        List<Artiste> res = null;

        try {
            // --- FROM NomDeClasse
            Query q = this.session.createQuery("FROM Artiste ORDER BY RAND()").setMaxResults(nb);
            res = (List<Artiste>) q.list();
        } catch (HibernateException he) {
            he.printStackTrace();
        }

        return res;
    }/// select

    // ------------------------
    public void fermerSession() {
        try {
            this.session.close();
        } catch (Exception e) {
        }
    } /// fermerSession
} /// class ArtisteDAO
