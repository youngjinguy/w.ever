<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="kr.whenever.domain.Question" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"	scope="request" />
<html>
<% Question question = new Question(); 
	question = (Question)request.getAttribute("question");
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<form action="${ctx}/question/${question.id}" method="POST">

	학생 유형 : 
	<select name="studentType">
		<option value=""> 선택 </option>
		<option value="ELE" <%="ELE".equals(question.getStudentType())?"selected":"" %>> 초등학교 </option>
		<option value="JUNIOR" <%="JUNIOR".equals(question.getStudentType())?"selected" : "" %>> 중학교 </option>
		<option value="HIGH" <%="HIGH".equals(question.getStudentType())?"selected" : "" %>> 고등학교 </option>
	</select><br/>
	과목 : 
	<select name="questionType">
		<option value=""> 선택 </option>
		<option value="LANGUAGE" <%="LANGUAGE".equals(question.getQuestionType())?"selected" : "" %>> 국어 </option>
		<option value="MATH" <%="MATH".equals(question.getQuestionType())?"selected" : "" %>> 수학 </option>
		<option value="ENGLISH" <%="ENGLISH".equals(question.getQuestionType())?"selected" : "" %>> 영어 </option>
	</select><br/>
	정답 : <input type="text" name="rightAnswer" value="${question.rightAnswer}"/><br/>
	문제제목 : <input type="text" name="questionTitle" value="${question.questionTitle}"/><br/>
	기출 : <input type="text" name="questionYearMonth" value="${question.questionYearMonth}"/><br/>
	URI : <input type="text" name="questionTitle" value="${question.questionUri}"/><br/>
	
	<input type="submit" value="저장" />
</form>

<form action="${ctx}/question/${question.id}/delete" method="POST">
	<input type="submit" value="삭제" />
</form>
</body>
</html>