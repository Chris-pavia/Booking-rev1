<%-- 
    Document   : FragmentCentral
    Created on : 22 mai 2013, 12:22:17
    Author     : stagiaire
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<f:view>
    <html>

        <head>
            <meta charset="utf-8" />
            <title>JSP Page avec JSF</title>
        </head>

        <body>
            <%--
                On va boucler sur un contenu Html neuf fois en changeant au fur
                et à mesure ses valeur pour le positionnement CSS ainsi que pour le contenu
                de chaques acteurs
            --%>

            <%!

            %>

            <%
                for (int i = 0; i < 9; i++) {
            %>
            <div id="artiste<%=i%>" >
                <label>Nom Artiste</label><br />
                <img src="../images/artiste.png" /><br />
                <label>catégorie</label><br />
                <label>budget</label> <br />
                <label>tranche de prix </label> 
             </div>
            <%
                }

            %>



        </body>

    </html>
</f:view>
