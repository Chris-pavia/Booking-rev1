<%-- 
    Document   : newjsf
    Created on : 22 mai 2013, 16:29:44
    Author     : stagiaire
--%>

<%@page import="booking.hibernate.entities.Reservation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="booking.hibernate.dao.ReservationDAO"%>

<div>
    <article id="centre" >


        <%
            int idArtiste=6;
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
            } /// if
%>
        <br/><br/>

        <!-- Execute l'action de navigation -->



    </article> <!-- FIN CENTRE -->
</div>