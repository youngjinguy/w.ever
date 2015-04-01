<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"	scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사용자 등록</title>
</head>
<body>
	<form action="${ctx}/user/${user.id}" method="post">
		<table>
			<tr>
				<td>아이디</td>
				<td>
					<input type="hidden" name="id" value="${user.id}"/> 
					${user.id}
				</td>
			</tr>	
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email" value="${user.email}"/></td>
				</tr>
			<tr>
				<td>핸드폰번호</td>
				<td><input type="text" name="cellPhoneNo" value="${user.cellPhoneNo}"/></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input type="text" name="birthDate" value="${user.birthDate}"/></td>
			</tr>
		</table>
		<input type="submit" value="수정"/>
	</form>
</body>
</html>