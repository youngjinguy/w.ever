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

	function modifyQuiz()
	{
		if(document.getElementById("title").value == '' ){
			alert("제목은 필수입니다.");
		}
		else
			document.getElementById("modifyForm").submit();
	}
	
	function deleteQuiz()
	{
		document.getElementById("deleteForm").submit();
	}


</script>
		
</head>

	<div class="container">
		<div class="page-header">
        	<h1>문제 수정</h1>
      	</div>
      	
		<form class="form-horizontal" id="modifyForm" action="${ctx}/quiz/${quiz.id}" method="POST">
		
			<div class="form-group">
			    <label for="section" class="col-sm-2 control-label">문제유형</label>
			    <div class="col-sm-10">
			      <select name="section" class="form-control" id="section">>
					  <option value=""> 선택 </option>
					  <option value="KOREAN" <c:if test="${quiz.section eq 'KOREAN'}">selected="selected"</c:if>> 언어 </option>
				  	  <option value="MATH"<c:if test="${quiz.section eq 'MATH'}">selected="selected"</c:if>> 수리 </option>
				  	  <option value="ENGLISH" <c:if test="${quiz.section eq 'ENGLISH'}">selected="selected"</c:if>> 외국어 </option>
				  </select>
			    </div>
		  	</div>
		  	
			<div class="form-group">
			    <label for="content" class="col-sm-2 control-label">문제</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="content" placeholder="문제" name="content" value="${quiz.content}">
			    </div>
		  	</div>

			<div class="form-group">
			    <label for="answer" class="col-sm-2 control-label">정답</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="answer" placeholder="정답" name="answer" value="${quiz.answer}">
			    </div>
		  	</div>
		  	
		  	<div class="form-group">
			    <label for="selection1" class="col-sm-2 control-label">보기1</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="selection1" placeholder="보기1" name="selection1" value="${quiz.selection1}">
			    </div>
		  	</div>
		  	
		  	<div class="form-group">
			    <label for="selection2" class="col-sm-2 control-label">보기2</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="selection2" placeholder="보기2" name="selection2" value="${quiz.selection2}">
			    </div>
		  	</div>
		  	<div class="form-group">
			    <label for="selection3" class="col-sm-2 control-label">보기3</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="selection3" placeholder="보기3" name="selection3" value="${quiz.selection3}">
			    </div>
		  	</div>
		  	<div class="form-group">
			    <label for="selection4" class="col-sm-2 control-label">보기4</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="selection4" placeholder="보기4" name="selection4" value="${quiz.selection4}">
			    </div>
		  	</div>
		  	<div class="form-group">
			    <label for="selection5" class="col-sm-2 control-label">보기5</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="selection5" placeholder="보기5" name="selection5" value="${quiz.selection5}">
			    </div>
		  	</div>
			
		  	<div class="form-group">
			    <label for="keyword" class="col-sm-2 control-label">문제키워드</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="keyword" placeholder="키워드" name="keyword" value="${quiz.keyword}">
			    </div>
		  	</div>		  				
				
		</form>
		
		<input type="submit" value="저장" onClick="modifyQuiz();" class="btn btn-default btn-primary"/>
		<input type="submit" value="삭제" onClick="deleteQuiz();" class="btn btn-default"/>
			
		<form class="form-horizontal" id="deleteForm" action="${ctx}/quiz/${quiz.id}/delete" method="POST">
		</form>
	</div>
</body>
</html>