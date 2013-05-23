<%-- 
    Document   : _inscription
    Created on : 23 mai 2013, 11:06:58
    Author     : stagiaire
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@page import="booking.hibernate.entities.Artiste"%>

<article id="inscription">
    <h:form id="Inscription" >  
        <h:outputLabel value="Nom" />
        <h:inputText value=""  />
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
            <f:selectItem itemValue="" itemLabel="Autre (me contacter)"/>
            <f:selectItem itemValue="" itemLabel="Ile-de-France"/>
            <f:selectItem itemValue="" itemLabel="Région est"/>
            <f:selectItem itemValue="" itemLabel="Région ouest"/>
            <f:selectItem itemValue="" itemLabel="Région nord"/>
            <f:selectItem itemValue="" itemLabel="Région sud-est"/>
            <f:selectItem itemValue="" itemLabel="Région sud-ouest"/>
        </h:selectOneMenu>
        <br />
        <h:selectManyListbox id="langages" title="Choix multiple possible">
            <f:selectItem itemValue="1" itemLabel="DJ'"/>
            <f:selectItem itemValue="2" itemLabel="Musicien/Pianiste"/>
            <f:selectItem itemValue="3" itemLabel="Musicien/Batteur"/>
            <f:selectItem itemValue="4" itemLabel="Magicien"/>
            <f:selectItem itemValue="5" itemLabel="Clown"/>
            <f:selectItem itemValue="6" itemLabel="Chanteur Variété"/>
            <f:selectItem itemValue="7" itemLabel="Animateur"/>
        </h:selectManyListbox>
        <br />
        <h:commandButton value="Enregistrer !" id="bouton_enregistrer" type="" title="enregistrer" action="VersInscriptionConfirmation" />
    </h:form>
</article>

