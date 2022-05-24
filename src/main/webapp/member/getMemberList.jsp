<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path1" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
</head>
<body>
<h2>회원정보</h2>
<jsp:include page="../header.jsp"></jsp:include>
<div id="content" class="content_wrap">
	<table>
		<thead>
			<tr>
				<th>아이디</th>
				<th>비밀빈호</th>
				<th>이메일</th>
				<th>전화번호</th>
				<th>주소</th>
				<th>가입일</th>
				<th>생년월일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="vo" varStatus="status">
				<tr>
					
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>