<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Document</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>"/>
</head>
<body>
<header class="header--main-page">
    <%@include file="adminHeader.jsp"%>
    <div class="slogan container container--90">
        <div class="slogan--item">
            <h1>
                Panel Administracyjny<br />
                Edytuj, zmieniaj, zarządzaj!
            </h1>
        </div>
    </div>
</header>

<section id="stats" class="stats">
    <div class="container container--85">
        <div class="stats--item">
            <em>${countBags}</em>
            <h3>Oddanych worków</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius est beatae, quod accusamus illum tempora!</p>
        </div>

        <div class="stats--item">
            <em>${countDonations}</em>
            <h3>Przekazanych darów</h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Laboriosam magnam, sint nihil cupiditate quas quam.</p>
        </div>

    </div>
</section>

<section id="institutions" class="steps">
    <h2>Lista fundacji</h2>

        <table class="custom-table">
            <thead>
                <tr class="custom-tr-dark">
                    <th class="custom-th">Id</th>
                    <th>Nazwa</th>
                    <th>Cel</th>
                    <th>Akcja</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${institutions}" var="institution">
                <tr class="custom-tr">
                    <td class="custom-td">${institution.id}</td>
                    <td class="custom-td">${institution.name}</td>
                    <td class="custom-td">${institution.description}</td>
                    <td class="custom-td">
                        <a href="/admin/institution/edit/${institution.id}" class="btn btn--without-border">Edytuj</a>
                        <a href="/admin/institution/delete/${institution.id}" class="btn btn--without-border">Usuń</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

    <a href="/admin/institution/add" class="btn btn--large">Dodaj fundację</a>
</section>
<hr class="custom-hr">
<section id="users" class="steps">
    <h2>Lista użytkowników</h2>

    <a href="#" class="btn btn--large">Dodaj użytkownika</a>
</section>

<%--<section id="steps" class="steps">--%>
<%--    <h2>Wystarczą 4 proste kroki</h2>--%>

<%--    <div class="steps--container">--%>
<%--        <div class="steps--item">--%>
<%--            <span class="icon icon--hands"></span>--%>
<%--            <h3>Wybierz rzeczy</h3>--%>
<%--            <p>ubrania, zabawki, sprzęt i inne</p>--%>
<%--        </div>--%>
<%--        <div class="steps--item">--%>
<%--            <span class="icon icon--arrow"></span>--%>
<%--            <h3>Spakuj je</h3>--%>
<%--            <p>skorzystaj z worków na śmieci</p>--%>
<%--        </div>--%>
<%--        <div class="steps--item">--%>
<%--            <span class="icon icon--glasses"></span>--%>
<%--            <h3>Zdecyduj komu chcesz pomóc</h3>--%>
<%--            <p>wybierz zaufane miejsce</p>--%>
<%--        </div>--%>
<%--        <div class="steps--item">--%>
<%--            <span class="icon icon--courier"></span>--%>
<%--            <h3>Zamów kuriera</h3>--%>
<%--            <p>kurier przyjedzie w dogodnym terminie</p>--%>
<%--        </div>--%>
<%--    </div>--%>

<%--    <a href="#" class="btn btn--large">Załóż konto</a>--%>
<%--</section>--%>
<script src="<c:url value="/resources/js/app.js"/>"></script>
</body>
</html>