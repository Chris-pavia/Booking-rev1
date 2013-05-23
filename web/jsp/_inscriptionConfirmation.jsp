<%-- 
    Document   : _inscriptionConfirmation
    Created on : 23 mai 2013, 11:32:57
    Author     : stagiaire
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<article>
<h1>Confirmation d'inscription</h1>

<h:form id="formSommaire">
    <h:commandLink action="VersInscriptionValidation" value="Valider !" />
</h:form>
</article>