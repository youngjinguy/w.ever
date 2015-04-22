<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"	scope="request" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="${ctx}/question/regist" method="POST">
	
	학생유형 :
	<select name="studentType">
		<option value=""> 선택 </option>
		<option value="ELE"> 초등학교 </option>
		<option value="JUNIOR"> 중학교 </option>
		<option value="HIGH"> 고등학교 </option>
	</select>
	<br/>
	
	과목 :
	<select name="questionType">
		<option value=""> 선택 </option>
		<option value="LANGUAGE"> 국어 </option>
		<option value="MATH"> 수학 </option>
		<option value="ENGLISH"> 영어 </option>
	</select>
	<br/>
	
	정답 : <br/>
	
	문제 제목 : <input type="text" name="questionTitle"/> <br/>
	
	기출 : <input type="text" name="questionYearMonth"/> <br/>
	
	URI : <input type="text" name="questionUri"/> <br/>
	
	
	<input type="submit" value="등록"/>
	<input type="reset" value="취소"/>
</form>

</body>
</html>