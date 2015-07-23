<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"	scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문제 등록</title>
</head>
<body>
	<div class="container">
		<form class="form-horizontal" action="${ctx}/question" method="post">			
		  	<div class="form-group">
			    <label for="section" class="col-sm-2 control-label">과목</label>
			    <div class="col-sm-10">
			      <select name="section" class="form-control" id="questionSection">>
					  <option value=""> 선택 </option>
					  <option value="LANGUAGE"> 국어 </option>
					  <option value="MATH"> 수학 </option>
					  <option value="ENGLISH"> 영어 </option>
				  </select>
			    </div>
		  	</div>
			
			<div class="form-group">
			    <label for="content" class="col-sm-2 control-label">내용</label>
			    <div class="col-sm-10">
			      <input type="textbox" class="form-control" id="content" placeholder="내용" name="content">
			    </div>
		  	</div>
			
			<div class="form-group">
			    <label for="answer" class="col-sm-2 control-label">정답</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="answer" placeholder="정답" name="answer">
			    </div>
		  	</div>
		  	
		  	<div class="form-group">
			    <label for="selection1" class="col-sm-2 control-label">보기1</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="selection1" placeholder="보기1" name="selection1">
			    </div>
		  	</div>
		  	
		  	<div class="form-group">
			    <label for="selection2" class="col-sm-2 control-label">보기2</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="selection2" placeholder="보기2" name="selection2">
			    </div>
		  	</div>
		  	
		  	<div class="form-group">
			    <label for="selection3" class="col-sm-2 control-label">보기3</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="selection3" placeholder="보기3" name="selection3">
			    </div>
		  	</div>
		  	
		  	<div class="form-group">
			    <label for="selection4" class="col-sm-2 control-label">보기4</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="selection4" placeholder="보기4" name="selection4">
			    </div>
		  	</div>
		  	
		  	<div class="form-group">
			    <label for="selection5" class="col-sm-2 control-label">보기5</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="selection5" placeholder="보기5" name="selection5">
			    </div>
		  	</div>
			
			<div class="form-group">
			    <label for="keyword" class="col-sm-2 control-label">문제 키워드</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="keyword" placeholder="문제 키워드" name="keyword">
			    </div>
		  	</div>			
	
	
	<input type="submit" value="등록" class="btn btn-default btn-primary"/>
	<input type="reset" value="취소" class="btn btn-default"/>
	</form>
</div>
</body>
</html>