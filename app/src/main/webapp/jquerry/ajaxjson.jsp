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
	$("#btn1").on("click", function() {
		
	//1.post : ( url [, data ] [, success ] [, dataType ] )
	$.post("../JsonServ", function(obj) {
		//var obj = Json.parse(response);
		$("#demo").append(obj[0]);
	}, "json")       //[, success ] function뒤에 받아오는 데이터 타입 json 적어주면 
	                 //var obj = Json.parse(response); 생략해도 알아서 parse 해줌
	
	//2.ajax
	$.ajax({
		url : "../JsonServ",
		success : function(obj){ $("#demo").append(obj[1]); },
		dataType : "json"
	  });
	})
});	
	//버튼2 클릭하면 FindMember의 서버 결과에서 name과 첫번째 취미를 출력 (ajax)
	$(function(){
	$("#btn2").on("click", function(){
		$.ajax({
			url : "../FindMember",
			success : function(obj){ 
				                     $("#demo").append(obj.name+ ":" +obj.hobbys[0]);
			                       },
			dataType : "json"
		})
	});
});
</script>
</head>
<body>
<div id="demo">
<h2>The XMLHttpRequest Object</h2>
</div>
<button type="button" id="btn1">JsonServ</button>
<button type="button" id="btn2">FindMember</button>
</body>
</html>