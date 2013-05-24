<%-- 
    Document   : _consulterProfil
    Created on : 23 mai 2013, 12:16:50
    Author     : stagiaire
--%>
<%@page import="booking.hibernate.dao.ArtisteDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="booking.hibernate.entities.Reservation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="booking.hibernate.dao.ReservationDAO"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<h1>CONSULTATION PROFIL</h1>
<div>
    <article id="centre" >


        <%
            //-recuperation de l'id de lartiste en fonction de ses login mdp
            ArtisteDAO ArtisteDAO = new ArtisteDAO();
            int idArtiste=ArtisteDAO.getIdArtistes(request.getParameter("email"),request.getParameter("mdp"));
            
            ReservationDAO ReservationDAO = new ReservationDAO();
            List<Reservation> listeReservation = ReservationDAO.getReservation(idArtiste);

            if (listeReservation != null) {
                Iterator<Reservation> itr = listeReservation.iterator();
                while (itr.hasNext()) {
                    Reservation element = itr.next();
        %>
        <div id="Reservation"<%=element.getId()%>>
            <h3><%=element.getLibNomClient()%> <%=element.getLibPrenomClient()%></h3>
            <h4>souhaite vous avoir pour :</h4>    
            <h4><%=element.getLibTheme()%></h4>
            <h4>à <%=element.getLibLieu()%></h4>
            <h4>tel :<%=element.getNumMobileClient()%></h4> 
            <h4>Email : <%=element.getLibEmailClient()%></h4>
            <form action="ReservationValider.jsp">
                <input type="hidden" value="<%=element.getId()%>">
                <input type="submit" value="Accepter">
            </form>
            <form action="ReservationAnnuler.jsp">
                <input type="hidden" value="<%=element.getId()%>">
                <input type="submit" value="Refuser">
            </form>
        </div>

        <%
                }
            } else{%>
            
            <h4>Aucune reservation n'est en attente !!</h4>
            <%
                
    }
%>
        <br/><br/>

        <!-- Execute l'action de navigation -->



    </article> <!-- FIN CENTRE -->
</div>