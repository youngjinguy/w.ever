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

<script type="text/javascript">

	function modifyQuestion()
	{
		if(document.getElementById("title").value == '' ){
			alert("제목은 필수입니다.");
		}
		else
			document.getElementById("modifyForm").submit();
	}
	
	function deleteQuestion()
	{
		document.getElementById("deleteForm").submit();
	}


</script>

</head>

	<div class="container">
		<div class="page-header">
        	<h1>문제 수정</h1>
      	</div>
      	
		<form class="form-horizontal" id="modifyForm" action="${ctx}/question/${question.id}" method="POST">
		
			<div class="form-group">
			    <label for="studentType" class="col-sm-2 control-label">학생유형</label>
			    <div class="col-sm-10">
			      <select name="studentType" class="form-control" id="studentType">>
					  <option value=""> 선택 </option>
					  <option value="ELE" <c:if test="${question.studentType == 'ELE'}">selected="selected"</c:if>> 초등학교 </option>
				  	  <option value="JUNIOR"<c:if test="${question.studentType == 'JUNIOR'}">selected="selected"</c:if>> 중학교 </option>
				  	  <option value="HIGH" <c:if test="${question.studentType == 'HIGH'}">selected="selected"</c:if>> 고등학교 </option>
				  </select>
			    </div>
		  	</div>

			<div class="form-group">
			    <label for="questionType" class="col-sm-2 control-label">과목</label>
			    <div class="col-sm-10">
			      <select name="questionType" class="form-control" id="questionType">>
					  <option value=""> 선택 </option>
					  <option value="LANGUAGE" <c:if test="${question.studentType == 'LANGUAGE'}">selected="selected"</c:if>> 국어 </option>
					  <option value="MATH" <c:if test="${question.studentType == 'MATH'}">selected="selected"</c:if>> 수학 </option>
					  <option value="ENGLISH" <c:if test="${question.studentType == 'ENGLISH'}">selected="selected"</c:if>> 영어 </option>
				  </select>
			    </div>
		  	</div>

			<div class="form-group">
			    <label for="questionAnswer" class="col-sm-2 control-label">정답</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="questionAnswer" placeholder="정답" name="questionAnswer" value="${question.rightAnswer}">
			    </div>
		  	</div>
		  	
			<div class="form-group">
			    <label for="questionTitle" class="col-sm-2 control-label">문제 제목</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="questionTitle" placeholder="문제제목" name="questionTitle" value="${question.questionTitle}">
			    </div>
		  	</div>
			
			<div class="form-group">
			    <label for="questionYearMonth" class="col-sm-2 control-label">기출 날짜</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="questionYearMonth" placeholder="기출 날짜" name="questionYearMonth" value="${question.questionYearMonth}">
			    </div>
		  	</div>
		  	
		  	<div class="form-group">
			    <label for="questionUri" class="col-sm-2 control-label">URI</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="questionUri" placeholder="URI" name="questionUri" value="${question.questionUri}">
			    </div>
		  	</div>		  				
				
		</form>
		
		<input type="submit" value="저장" onClick="modifyQueston();" class="btn btn-default btn-primary"/>
		<input type="submit" value="삭제" onClick="deleteQueston();" class="btn btn-default"/>
			
		<form class="form-horizontal" id="deleteForm" action="${ctx}/question/${question.id}/delete" method="POST">
		</form>
	</div>
</body>
</html>