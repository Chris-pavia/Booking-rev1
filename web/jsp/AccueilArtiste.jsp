<%-- 
    Document   : AccueilArtiste
    Created on : 23 mai 2013, 10:44:37
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
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>JSP Page</title>
        </head>
        <body>
            <h1>Booking © côté Artiste...</h1>
       
        
        
        <article id="centre">
                <%
                    String lsFragment = "";

                    if(request.getParameter("fragment") == null) {
                        lsFragment = "_inscription.jsp";
                    }
                    else {
                        lsFragment = request.getParameter("fragment") + ".jsp";
                    }
                %>
                <!-- Inclusion d'un fragment -->
                <f:subview id="svPied">
                    <jsp:include page="<%= lsFragment %>" flush="true">
                        <jsp:param name="nomDeParametre" value="1" />
                    </jsp:include>
                </f:subview>
            </article>
            
        </body>
    </html>
</f:view>
