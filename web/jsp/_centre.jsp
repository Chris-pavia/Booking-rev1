<%-- 
    Document   : newjsf
    Created on : 22 mai 2013, 16:29:44
    Author     : stagiaire
--%>

<%@page import="booking.hibernate.entities.Artiste"%>
<%@page import="booking.hibernate.entities.CategorieArt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="booking.hibernate.dao.ArtisteDAO"%>

<div class="container-fluid">
    
  <article id="centre" class="row">

            
<%
    ArtisteDAO artitesDAO = new ArtisteDAO();
    List<Artiste> listeArtites = artitesDAO.getArtistes(9);

    if (listeArtites != null) {
        Iterator<Artiste> itr = listeArtites.iterator();
        while (itr.hasNext()) {
            Artiste element = itr.next();
%>
                if (listeArtites != null) {
                    Iterator<Artiste> itr = listeArtites.iterator();
                    while (itr.hasNext()) {
                        Artiste element = itr.next(); 
            %>

            <div id="artiste"<%=element.getIdArt() %> class="hero-unit span3">
            <h3><%=element.getLibPrenom()%> <%=element.getLibNom()%></h3>
            <img class="img-rounded image-petite" src="../images/artiste/<%=element.getLibPhoto().trim()%>" />
            
            <p>catégorie : <%=element.getCategorieArt().getLibCatg()%></p>
            
            <p>budget : <%=element.getNumTarifJour()%> €</p>
            <form action="FragmentReservation.jsp" method="post">
                <input type="hidden" value="<%=element.getLibNom()%>" name="nomArtiste">
                <input type="hidden" value="<%=element.getLibPrenom()%>" name="prenomArtiste">
                <input type="hidden" value="<%=element.getIdArt() %>" name="idArtiste">
                <input type="submit" value="Reserver" />
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
