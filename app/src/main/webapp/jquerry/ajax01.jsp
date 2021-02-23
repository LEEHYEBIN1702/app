<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax01.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(function(){
    	$("#btn").on("click", function(){  		
    	 var param = "userid=" + $("#userid").val()
    	 var url = "../FindName";
//1.load
      // $("#demo").load(url +"?"+ param);
//2. post/get  .get( url [, data ] [, success ] [, dataType ] )
         param = { userid : $("#userid").val(), dept : "개발" } //?userid=aaa&dept=개발
         $.post(url, param, function(r){
         $("#demo").append("post: ", r);
         });
//3. ajax post/get은 무조건 비동기이지만 동기/비동기를 설정하고 싶으면 ajax 사용하고 async 지정해주면 됨
         $.ajax( url, {
        	 async: true, //true : 비동기 false : 동기
        	 success : function(r){
                       $("#demo").append("ajax: ", r);
                       },
             data : param
           });
    	});
    });
</script>
</head>
<body>
<div id="demo">
<h2>The XMLHttpRequest object</h2>
</div>
<input id="userid">
<button type="button" id="btn">Change Content</button>
</body>
</html>