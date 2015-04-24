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
	<div class="container">
		<div class="page-header">
        	<h1>문제 등록</h1>
      	</div>
		<form class="form-horizontal" action="${ctx}/question/regist" method="POST">			
			
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
			
			<div class="form-group">
			    <label for="questionTitle" class="col-sm-2 control-label">문제 제목</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="questionTitle" placeholder="문제제목" name="questionTitle">
			    </div>
		  	</div>
			
			<div class="form-group">
			    <label for="questionYearMonth" class="col-sm-2 control-label">기출 날짜</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="questionYearMonth" placeholder="기출 날짜" name="questionYearMonth">
			    </div>
		  	</div>
		  	
		  	<div class="form-group">
			    <label for="questionUri" class="col-sm-2 control-label">URI</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="questionUri" placeholder="URI" name="questionUri">
			    </div>
		  	</div>
			
	
	
	<input type="submit" value="등록" class="btn btn-default btn-primary"/>
	<input type="reset" value="취소" class="btn btn-default"/>
</form>
</div>
</body>
</html>