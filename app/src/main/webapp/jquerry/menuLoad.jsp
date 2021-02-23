<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><title>class.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
	ul,li {  padding : 0px; margine : 0px;}
	.menu { border : 1px solid blue; 
	        background-color: gray; 
	        display: inline; }
	.active { background-color: yellowgreen; }
</style>
<script>
$(function(){
	//클래스가 메뉴인 클래스를 클릭하면 data-url에 해당하는 jsp 페이지를 요청하고 그 결과를 div에 출력
	//$("#result").load("login.jsp");
	 // var url = $(this).data("url")+ ".jsp";
	    $(".menu").on("click", function(){
		$.ajax({
			url : $(this).data("url")+ ".jsp",
			success : function(obj){ $("#result").append(obj); }
		})
	});
});
</script>
</head>
<body>
<ul>
	<li class="menu" data-url="board">게시판</li>
	<li class="menu" data-url="member">회원가입</li>
	<li class="menu active" data-url="login">로그인</li>
</ul>
<div id="result">페이지 조회</div>
</body>
</html>