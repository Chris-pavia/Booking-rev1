<%-- 
    Document   : _accueilArtiste
    Created on : 23 mai 2013, 16:40:04
    Author     : stagiaire
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<article>
    <h1>Connexion</h1>
    <h:form id="Login">  
        <h:outputLabel value="Login" />
        <h:inputText id="login" />
        <h:outputLabel value="Mot de passe" />
        <h:inputText id="mdp" />
        <br />
        <h:commandButton action="VersConsulterProfil" value="Valider"/>
        <br />
        <p>Pas encore inscrit?, inscrivez vous <h:commandLink action="VersInscription" value="ici !"/></p>
    </h:form>

</article>