<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){
	//자바 스크립트에서 add였다면 제이쿼리는 append..
	//버튼 클릭하면 option 태그 생성해서 추가
	$("#btnAdd").on("click", function(){
	var op = $("<option>").html($("#fruit").val())
	$("#list").append(op);
	
	});
})
</script>
</head>
<body>
<input id="fruit">
<button type="button" id="btnAdd">등록</button>
<select id="list" size=10></select>
<table id="tbl">
</table>
</body>
</html>