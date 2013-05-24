/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package booking.hibernate.dao;

import booking.hibernate.entities.Artiste;
import java.sql.PreparedStatement;
import org.hibernate.Session;
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
    
    public int getIdArtistes(String email ,String mdp) {
        // ----------------------------
       int res=-1;
        try {
            // --- FROM NomDeClasse
            String lsSQL = "SELECT id_art FROM artiste WHERE lib_email=? AND lib_mdp=?";
            PreparedStatement lpst = this.session.connection().prepareStatement(lsSQL);
            lpst.setString(1, email);
            lpst.setString(2, mdp);
            res=lpst.executeUpdate();
            
        } catch (HibernateException he) {
            he.printStackTrace();
        }catch (Exception e){
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
