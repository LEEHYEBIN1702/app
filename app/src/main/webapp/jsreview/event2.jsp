<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event2.jsp</title>

</head>
<body>
<div id="result">event test</div>
<script>

result.addEventListener("click", function(){ //div 아이디가 하나밖에 없기 때문에 바로 접근 가능
	alert(this.innerHTML);
});
result.addEventListener("click", function(){
	alert("click!!!");
});

</script>
</body>
</html>