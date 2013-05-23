<%-- 
    Document   : _inscription
    Created on : 23 mai 2013, 11:06:58
    Author     : stagiaire
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<article id="inscription">
    <h:form id="Inscription">  
        <h:outputLabel value="Nom" />
        <h:inputText value="" id="nom" />
        <br />
        <h:outputLabel value="Prénom" />
        <h:inputText value="" id="prenom" />
        <br />
        <h:outputLabel value="Mot de passe" />
        <h:inputSecret id="mdp" />
        <br />
        <h:outputLabel value="E-Mail" />
        <h:inputText value="" id="email" />
        <br />  
        <h:outputLabel value="Téléphone" />
        <h:inputText value="" id="telephone" />
        <br />
        <h:outputLabel value="Votre Tarif" />
        <h:inputText value="" id="tarif" />
        <br />
        <h:outputLabel value="Déscription" />
        <h:inputTextarea value="" id="description" />
        <br />
        <h:selectOneMenu id="ville" title="Choix unique!">
            <f:selectItem itemValue="75000" itemLabel="Paris"/>
            <f:selectItem itemValue="69000" itemLabel="Lyon"/>
            <f:selectItem itemValue="13000" itemLabel="Marseille"/>
        </h:selectOneMenu>
        <br />
        <h:selectManyListbox id="langages" title="Choix multiple possible">
            <f:selectItem itemValue="1" itemLabel="PHP"/>
            <f:selectItem itemValue="2" itemLabel="Java"/>
            <f:selectItem itemValue="3" itemLabel="HTML"/>
            <f:selectItem itemValue="4" itemLabel="JavaScript"/>
            <f:selectItem itemValue="5" itemLabel="VB .net"/>
            <f:selectItem itemValue="6" itemLabel="ASP .net"/>
            <f:selectItem itemValue="7" itemLabel="C"/>
        </h:selectManyListbox>
        <br />
        <h:commandButton value="Enregistrer !" id="bouton_enregistrer" type="" title="enregistrer" action="VersInscriptionConfirmation"/>
    </h:form>
</article>

