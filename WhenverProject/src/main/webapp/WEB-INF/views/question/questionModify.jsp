<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"	scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
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
			    <label for="section" class="col-sm-2 control-label">학생유형</label>
			    <div class="col-sm-10">
			      <select name="section" class="form-control" id="section">>
					  <option value=""> 선택 </option>
					  <option value="KOREAN" <c:if test="${question.section eq 'KOREAN'}">selected="selected"</c:if>> 언어 </option>
				  	  <option value="MATH"<c:if test="${question.section eq 'MATH'}">selected="selected"</c:if>> 수리 </option>
				  	  <option value="ENGLISH" <c:if test="${question.section eq 'ENGLISH'}">selected="selected"</c:if>> 외국어 </option>
				  </select>
			    </div>
		  	</div>
		  	
			<div class="form-group">
			    <label for="content" class="col-sm-2 control-label">문제</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="content" placeholder="문제" name="content" value="${question.content}">
			    </div>
		  	</div>

			<div class="form-group">
			    <label for="answer" class="col-sm-2 control-label">정답</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="answer" placeholder="정답" name="answer" value="${question.answer}">
			    </div>
		  	</div>
			
		  	<div class="form-group">
			    <label for="keyword" class="col-sm-2 control-label">문제키워드</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="keyword" placeholder="키워드" name="keyword" value="${question.keyword}">
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