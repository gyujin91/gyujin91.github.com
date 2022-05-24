<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />  
<%
	String sid = "";
	if(session !=null) sid = (String) session.getAttribute("sid");  
%>
<header id="header" class="panel-heading">
	<div class="hd_wrap">
		<nav class="navbar" role="navigation" aria-label="main navigation">
		  <div class="navbar-brand">
		    <a class="navbar-item" href="${path }/index.jsp" id="logo">
		      <img src="${path }/img/logo.png" width="150" height="50">
		    </a>
		
		    <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
		      <span aria-hidden="true"></span>
		      <span aria-hidden="true"></span>
		      <span aria-hidden="true"></span>
		    </a>
		  </div>
		
		  <div id="gnb" class="navbar-menu">
		    <div class="navbar-start">
		      <div class="navbar-item has-dropdown is-hoverable">
		        <a class="navbar-link">
		          모터사이클
		        </a>
		
		        <div class="navbar-dropdown">
		          <a class="navbar-item">
		            2022 모터사이클
		          </a>
		          <a class="navbar-item">
		            2021 모터사이클
		          </a>
		        </div>
		      </div>
		      <div class="navbar-item has-dropdown is-hoverable">
		        <a class="navbar-link">
		          새소식
		        </a>
		        <div class="navbar-dropdown">
		          <a class="navbar-item">
		            프로모션
		          </a>
		          <a class="navbar-item">
		            이벤트
		          </a>
		          <a class="navbar-item">
		            최신 뉴스
		          </a>
		        </div>
		      </div>
		      <div class="navbar-item has-dropdown is-hoverable">
		        <a class="navbar-link">
		          할리스토리
		        </a>
		
		        <div class="navbar-dropdown">
		          <a class="navbar-item">
		            라이더 스토리
		          </a>
		          <a class="navbar-item">
		            사진 갤러리
		          </a>
		          <a class="navbar-item">
		            비디오 갤러리
		          </a>
		           <a class="navbar-item">
		            브랜드 매거진
		          </a>
		        </div>
		      </div>
		      <div class="navbar-item has-dropdown is-hoverable">
		        <a class="navbar-link">
		          회사소개
		        </a>
		
		        <div class="navbar-dropdown">
		          <a class="navbar-item">
		            지점안내
		          </a>
		          <a class="navbar-item">
		            서비스팀
		          </a>
		          <a class="navbar-item">
		            HOG™
		          </a>
		          <a class="navbar-item">
		            회사소개
		          </a>
		          <a class="navbar-item">
		            연혁
		          </a>
		          <a class="navbar-item">
		            인재채용
		          </a>
		        </div>
		      </div>
		      <div class="navbar-item has-dropdown is-hoverable">
		        <a class="navbar-link">
		          고객센터
		        </a>		
		        <div class="navbar-dropdown">
		          <a class="navbar-item" href="GetBoardListCtrl">
		            공지사항
		          </a>
		          <a class="navbar-item">
		            1:1 문의
		          </a>
		          <a class="navbar-item">
		            자주하는 질문 및 답변
		          </a>
		          <hr class="navbar-divider">
		          <a class="navbar-item">
		            반품안내
		          </a>
		        </div>
		      </div>
		    </div>
			<c:if test="${empty sid }">		
		    <div class="navbar-end">
		      <div class="navbar-item">
		        <div class="buttons">
		          <a class="button is-primary" href="./member/join.jsp">
		            <strong>회원가입</strong>
		          </a>
		          <a class="button is-light">
		            로그인
		          </a>
		        </div>
		      </div>
		      </c:if>
		      <c:if test="${!empty sid }">
		      <!-- 로그인 사용자 -->
		      <div class="navbar-item">
		        <div class="buttons">
		          <a class="button is-primary">
		            <strong>회원정보수정</strong>
		          </a>
		          <a class="button is-light">
		            마이페이지
		          </a>
		          <a class="button is-light">
		            로그아웃
		          </a>
		        </div>
		      </div>
		      </c:if>
		      <!-- 관리자 -->
		      <c:if test="${sid=='admin' }">
		      <div class="navbar-item">
		        <div class="buttons">
		          <a class="button is-primary">
		            <strong>글 관리</strong>
		          </a>
		          <a class="button is-light" href="./member/getMemberList.jsp">
		            회원관리
		          </a>
		          <a class="button is-light">
		            제품관리
		          </a>
		          <a class="button is-light">
		            판매관리
		          </a>
		          <a class="button is-light">
		            로그아웃
		          </a>
		        </div>
		      </div>
		      </c:if>
		    </div>
		  </div>
		</nav>
	</div>
</header>