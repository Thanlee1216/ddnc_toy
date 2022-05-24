<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="t" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<s:eval var="activeProfile" expression="@environment.getActiveProfiles()" />

<fmt:setLocale value="ko"/>

<!DOCTYPE html>
<html lang="ko">
<head>

    <c:set var="now" value="<%=new java.util.Date()%>" />
    <c:set var="sysDate"><fmt:formatDate value="${now}" pattern="yyyyMMddhhmmss" /></c:set>

    <c:if test="${activeProfile[0] == 'prod'}">
    </c:if>

    <title>아스타 웹</title>
    <link rel="canonical" href="https://www.xxxx.co.kr/">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <meta name="_csrf" content="${_csrf.token}"/>
    <meta name="description" content="카피라이트">
    <!-- default header name is X-CSRF-TOKEN -->
    <meta name="_csrf_header" content="${_csrf.headerName}"/>

    <!-- Favicon -->
    <link href="/resources/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500&family=Jost:wght@500;600;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/resources/lib/animate/animate.min.css" rel="stylesheet">
    <link href="/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="/resources/lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/resources/css/style.css" rel="stylesheet">
</head>
<body>


<div class="container-xxxl bg-white p-0">
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->
    <t:insertAttribute name="header" />
    <t:insertAttribute name="body" />
    <t:insertAttribute name="footer" />
</div>

<%--<div class="xet-layout-body">--%>
<%--    <t:insertAttribute name="header" />--%>
<%--    <t:insertAttribute name="body" />--%>
<%--    <t:insertAttribute name="footer" />--%>
<%--</div>--%>

<%--<div class="xet-push-nav xet-push-nav-left visible-xs visible-sm hidden-md">--%>
<%--    <div class="xet-mobile-top">--%>
<%--        <button class="xet-toggle-menu active">Menu<span></span></button>--%>
<%--        <div class="xet-mobile-acc xet-clearfix">--%>
<%--            <div class="float-left">--%>
<%--                <security:authorize access="isAnonymous()">--%>
<%--                    <a href="/login">로그인 하기</a>--%>
<%--                </security:authorize>--%>
<%--                <security:authorize access="hasRole('MEMBER')">--%>
<%--                    <security:authentication var="user" property="principal"/>--%>
<%--                    ${member.memberName} 님--%>
<%--                </security:authorize>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="xet-mobile-acc-b xet-clearfix">--%>
<%--            <div class="col-xs-4"><a href="/mypage/"><br>아스타<br>서비스 </a></div>--%>
<%--            <div class="col-xs-4"><a href="/mypage/"><br>나의 정보</a></div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="/resources/lib/wow/wow.min.js"></script>
<script src="/resources/lib/easing/easing.min.js"></script>
<script src="/resources/lib/waypoints/waypoints.min.js"></script>
<script src="/resources/lib/counterup/counterup.min.js"></script>
<script src="/resources/lib/owlcarousel/owl.carousel.min.js"></script>
<script src="/resources/lib/isotope/isotope.pkgd.min.js"></script>
<script src="/resources/lib/lightbox/js/lightbox.min.js"></script>

<!-- Template Javascript -->
<script src="/resources/js/main.js"></script></body>
</html>
