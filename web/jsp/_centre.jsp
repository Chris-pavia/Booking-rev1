<%-- 
    Document   : newjsf
    Created on : 22 mai 2013, 16:29:44
    Author     : stagiaire
--%>

<%@page import="booking.hibernate.entity.Artiste"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="booking.hibernate.entity.ArtisteDAO"%>

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
            <div id="artiste"<%=element.getIdArt() %> class="hero-unit span3">
            <h3><%=element.getLibPrenom()%> <%=element.getLibNom()%></h3>
            <img class="img-rounded" src="../images/artiste/<%=element.getLibPhoto().trim()%>" />
            
            <p>catégorie : <%=element.getIdCatgArt()%></p>
            
            <p>budget : <%=element.getNumTarifJour()%> €</p>
            
            </div>
            
            <%
                    }
                } /// if
%>
            <br/><br/>

            <!-- Execute l'action de navigation -->



        </article> <!-- FIN CENTRE -->
        </div>