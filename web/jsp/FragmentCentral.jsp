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
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta name="description" content="">
            <meta name="author" content="">

            <!-- Le styles -->
            <link href="../css/bootstrap.css" rel="stylesheet">
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
            <link href="../css/bootstrap-responsive.css" rel="stylesheet">

            <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
            <!--[if lt IE 9]>
              <script src="../assets/js/html5shiv.js"></script>
            <![endif]-->

            <!-- Fav and touch icons -->
            <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
            <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
            <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
            <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
            <link rel="shortcut icon" href="/ico/favicon.png">
        </head>

        <body>
            <%--
                On va boucler sur un contenu Html neuf fois en changeant au fur
                et à mesure ses valeur pour le positionnement CSS ainsi que pour le contenu
                de chaques acteurs
            --%>
            <%@include file="_header.jsp" %>

            <%@include file="_centre.jsp" %>

            <%@include file="_footer.jsp" %>

            <!-- Le javascript
                ================================================== -->
            <!-- Placed at the end of the document so the pages load faster -->
            <script src="js/jquery.js"></script>
            <script src="js/bootstrap.js"></script>
            
        </body>

    </html>
</f:view>
