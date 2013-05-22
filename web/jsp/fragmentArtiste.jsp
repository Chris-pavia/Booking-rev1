<%@page import="booking.hibernate.entity.Artiste"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="booking.hibernate.entity.ArtisteDAO"%>


<html>
    <head>
        <meta charset="UTF-8">
        <title>Artiste</title>
    </head>
<link href="../css/bootstrap.css" rel="stylesheet">
    <body>
        <article id="centre">

            
            <%
                ArtisteDAO artitesDAO = new ArtisteDAO();
                List<Artiste> listeArtites = artitesDAO.getArtistes();

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



        <style type="text/css">
            body {
                padding-top: 60px;
                padding-bottom: 40px;
            }
            .sidebar-nav {
                padding: 9px 0;
            }

            @media (max-width: 980px) {
                /* Enable use of floated navbar text */
                .navbar-text.pull-right {
                    float: none;
                    padding-left: 5px;
                    padding-right: 5px;
                }
            }
        </style>

    </body>
</html>
