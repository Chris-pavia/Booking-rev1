


<%@page import="booking.hibernate.dao.Artiste"%>
<%@page import="booking.hibernate.dao.ArtisteDAO"%>
<!DOCTYPE html>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>


<html>
    <head>
        <meta charset="UTF-8">
        <title>Artiste</title>
        <link href="../css/bootstrap.css" rel="stylesheet">
    </head>

    <body>
        <article id="centre">


            <%
                ArtisteDAO artitesDAO = new ArtisteDAO();
                List<Artiste> listeArtites = artitesDAO.getArtistes(9);

                if (listeArtites != null) {
                    Iterator<Artiste> itr = listeArtites.iterator();
                    while (itr.hasNext()) {
                        Artiste element = itr.next();
            %>
            <div id="artiste"<%=element.getIdArt()%> class="hero-unit span3">
                <h3><%=element.getLibPrenom()%> <%=element.getLibNom()%></h3>
                <img class="img-rounded" src="../images/artiste/<%=element.getLibPhoto().trim()%>" />

                <p>catégorie : <%=element.getCategorieArt()%></p>

                <p>budget : <%=element.getNumTarifJour()%> ?</p>

            </div>
                
                <%
                    }
                        %>

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
