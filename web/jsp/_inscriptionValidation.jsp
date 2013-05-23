<%-- 
    Document   : _inscriptionValidation
    Created on : 23 mai 2013, 12:13:57
    Author     : stagiaire
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<article>
    <h1>Inscription Validée !</h1>
    <h:form id="formSommaire">
        <h:commandLink action="VersConsulterProfil" value="confirmation" />
    </h:form>
</article>