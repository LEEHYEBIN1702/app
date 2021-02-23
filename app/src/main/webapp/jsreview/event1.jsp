<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event.jsp</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){ //$(window).bind("load", function() 이렇게 다 적어줄 필요 없이 function만 써주면 됨. 같다고 보면 된다.
	 $("#btnAdd").on("click", function(){ // .bind ("click") 대신 .click 함수를 써도 됨..
		   $("#result").append( $("<li>").html("jsp")
				                         .css("color", "red") 
	                                     .attr("id", "book")  //attr은 어트리뷰트 약자임.. 속성 지정할 때 씀
	                                     .prop("alt", "text")
	                                     .data("num", "10") ); 
	   });     
     $("ul").on("click","li", function(){
    	 $(event.target).remove();
    	 console.log(this)
     });
});

/*
$(window).bind("load", function(){ //addEventListener = bind 자바 스크립트에서 했던 실습을
   $("#btnAdd").bind ("click", function(){  //제이쿼리로 그대로 바꿔보는 중.. 무슨 차이가 있나...
	   $("#result").append( $("<li>").html("jsp") ); //innerHTML = .html
   });         
});
*/
	//페이지 로드 이벤트
	/*
	window.addEventListener("load", function(event) {
		        document.getElementsByTagName("ul")[0].addEventListener("click", function() {
            	//this.remove(); //ul태그 밑에 li태그를 찾는 거기 때문에 디스 안되고 타겟으로 찾아야 함.
            	event.target.parentNode.removeChild(event.target);
		        }); 
		        
				document.getElementById("btnAdd")
				.addEventListener("click", function(){
					//li태그 생성
					var li = document.createElement("li");
					li.innerHTML = "자바"
					document.getElementById("result").appendChild(li);
					
			});
});
	*/
</script>
</head>
<body>
	<button type="button" id="btnAdd">추가</button>
	<ul id="result">
	<li >스프링</li>
	</ul>

</body>
</html>