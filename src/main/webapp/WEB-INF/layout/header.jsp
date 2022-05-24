<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script>
  $(function () {
    var token = $("input[name='_csrf']").val();
    var header = "X-CSRF-TOKEN";

    $(document).ajaxSend(function(e, xhr, options) {
      xhr.setRequestHeader(header, token);
    });

    $.ajaxSetup({
      error: function(xhr, status, err) {
        if (xhr.status == 401) {
//          alert("인증실패(401)");
          alert("잘못된 접근입니다. 로그인 페이지로 이동합니다.");
          location.href = "/login";
        } else if (xhr.status == 403) {
          //          alert("세션만료(403)");
          alert("잘못된 접근입니다. 로그인 페이지로 이동합니다.");
          location.href = "/login";
        }
      }
    });
  });

  var agent = navigator.userAgent.toLowerCase();
  if ( (navigator.appName == 'Netscape' && agent.indexOf('trident') != -1) || (agent.indexOf("msie") != -1)) {
      // ie일 경우
      if(window.location.pathname!=="/notSupported"){
          alert("인터넷 익스플로러는 지원하지 않습니다.")
          location.href="/notSupported"
      }
  }
</script>

<%--오렌지(주황)--%>
<%--블루(하늘)--%>
<%--보라색--%>
<%--핑크 + 레드--%>
<%--회색 배이스+오렌지--%>

<!-- Navbar & Hero Start -->
<div class="container-xxl position-relative p-0">
    <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
        <a href="/" class="navbar-brand p-0">
            <h1 class="m-0">MoCa</h1>
            <!-- <img src="img/logo.png" alt="Logo"> -->
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="fa fa-bars"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav mx-auto py-0">
                <a href="/service" class="nav-item nav-link">시작하기</a>
                <a href="/service" class="nav-item nav-link">고객센터</a>
<%--                <div class="nav-item dropdown">--%>
<%--                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>--%>
<%--                    <div class="dropdown-menu m-0">--%>
<%--                        <a href="team.html" class="dropdown-item">Our Team</a>--%>
<%--                        <a href="testimonial.html" class="dropdown-item">Testimonial</a>--%>
<%--                        <a href="404.html" class="dropdown-item">404 Page</a>--%>
<%--                    </div>--%>
<%--                </div>--%>
            </div>
            <a href="" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">로그인</a>
            <a href="" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">회원가입</a>
        </div>
    </nav>
</div>
<!-- Navbar & Hero End -->


<%--<header id="xet-header" class="header fixed">--%>
<%--    <div class="xet-container" id="headerLeft">--%>
<%--        <!--// Mobile 로그인 버튼 //-->--%>
<%--        <div class="float-right visible-xs visible-sm hidden-md">--%>
<%--            <!--// 로그인 후 //-->--%>
<%--            <security:authorize access="hasRole('MEMBER')">--%>
<%--                <security:authentication var="user" property="principal"/>--%>
<%--                <a href="#" class="logout " onclick="javascript:document.logoutForm.submit();" >로그아웃</a>--%>
<%--            </security:authorize>--%>

<%--            <!--// 로그인 전 //-->--%>
<%--            <security:authorize access="isAnonymous()">--%>
<%--                <a href="/login" class="m-login r5">로그인</a>--%>
<%--            </security:authorize>--%>
<%--        </div>--%>

<%--        <div class="inner">--%>
<%--            <h1 class="logo"><a href="/"><img src="/resources/images/logo.png" alt=""></a></h1>--%>
<%--            <nav id="nav">--%>
<%--                <div>--%>
<%--                    <ul class="main_menu xet-nav-ul xet-clearfix" id="pcSection">--%>
<%--                        <li class="nav-li">--%>
<%--                            <span><a href="#">아스타 서비스</a></span>--%>
<%--                            <div class="sub_menu" style="margin-left: 35px">--%>
<%--                                <a href="/mypage/salesAnalysis"><span>아스타 바로가기</span></a>--%>
<%--                            </div>--%>
<%--                        </li>--%>
<%--                        <li class="nav-li">--%>
<%--                            <span><a href="#">선정산 서비스</a></span>--%>
<%--                            <div class="sub_menu" style="margin-left: 10px">--%>
<%--                                <a href="/mypage/factoring/list"><span>아스타 바로가기</span></a>--%>
<%--                                <a href="/intro/factoringServiceIntro"><span>아스타 소개</span></a>--%>
<%--                            </div>--%>
<%--                        </li>--%>
<%--                        <li class="nav-li">--%>
<%--                            <span><a href="#">고객센터</a></span>--%>
<%--                            <div class="sub_menu" style="margin-left: 10px">--%>
<%--                                <a href="/news/list"><span>뉴스보기</span></a>--%>
<%--                                <a href="/notice"><span>공지사항</span></a>--%>
<%--                            </div>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--                <!--// PC 로그인 버튼 //-->--%>
<%--                <div class="float-right xet-acc hidden-xs hidden-sm visible-md-block">--%>
<%--                    <ul class="xet-clearfix" id="pcSection2">--%>
<%--                        <!--// 로그인 후 //-->--%>
<%--                        <security:authorize access="hasRole('MEMBER')">--%>
<%--                            <security:authentication var="user" property="principal"/>--%>
<%--                            <li class="dropdown dropdown-main" style="margin-top: 35px;">--%>
<%--                                <a class="dropdown-toggle" data-toggle="dropdown" href="#"> ${member.memberName}님 <i class="fa fa-caret-down" aria-hidden="true"></i></a>--%>
<%--                                <ul class="dropdown-menu" id="headerMinuMenu">--%>
<%--                                    <li><a href="/mypage/"> 아스타</a></li>--%>
<%--                                    <li><a href="/mypage/list"> 아스타 서비스</a></li>--%>
<%--                                    <li><a href="/mypage/"> 아스타 변경</a></li>--%>
<%--                                    <li><a href="#" onclick="javascript:document.logoutForm.submit();" > 로그아웃</a></li>--%>
<%--                                </ul>--%>
<%--                            </li>--%>
<%--                            <fmt:formatDate var="expiredPasswordDt" value="${member.expiredPasswordDt}" pattern="yyyyMMddHHmmss"/>--%>
<%--                            <input type="hidden" id="expired-password-dt" value="${expiredPasswordDt}">--%>
<%--                        </security:authorize>--%>

<%--                        <!--// 로그인 전 //-->--%>
<%--                        <security:authorize access="isAnonymous()">--%>
<%--                            <li><a href="/login" class="xet-btn login r5">로그인</a></li>--%>
<%--                            <li><a href="/member/registerForm" >회원가입</a></li>--%>
<%--                        </security:authorize>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--            </nav>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</header>--%>

<%--<form name="logoutForm" method="post" action="/user/logout">--%>
<%--    <input type="hidden" name="${_csrf.parameterName}" 	value="${_csrf.token}" />--%>
<%--</form>--%>
