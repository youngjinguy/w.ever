<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"	scope="request" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${ctx}/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="${ctx}/resources/css/bootstrap-theme.min.css">
<script src="${ctx}/resources/js/jquery-1.11.2.min.js"></script>
<script src="${ctx}/resources/js/bootstrap.min.js"></script>
<c:set var="submenu" >
    <decorator:getProperty property='meta.submenu' />
</c:set>
<decorator:head />
	<div class="container">
      <!-- Static navbar -->
      <nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" href="#">w.ever project</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="dropdown <c:if test="${submenu eq 'user'}">active</c:if>">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">사용자<span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="${ctx}/user">사용자목록</a></li>
                  <li><a href="${ctx}/user/regist">사용자등록</a></li>
                </ul>
              </li>
              <li class="dropdown <c:if test="${submenu eq 'question'}">active</c:if>">
                <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">문제<span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="${ctx}/question">문제목록</a></li>
                  <li><a href="${ctx}/question/regist">문제등록</a></li>
                </ul>
              </li>
              <li class="dropdown <c:if test="${submenu eq 'notice'}">active</c:if>">
                <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">공지사항<span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="${ctx}/notice">공지사항목록</a></li>
                  <li><a href="${ctx}/notice/regist">공지사항등록</a></li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </div>
</head>
<body>
<%-- body S --%>
		<decorator:body/>
<%-- body E --%>
</body>
</html>