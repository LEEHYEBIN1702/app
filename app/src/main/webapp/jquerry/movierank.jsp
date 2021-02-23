<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movierank.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){
	//버튼 클릭하면 박스오피스 정보를 조회해서 영화제목과 영화코드를 rank div에 출력
	$("#btn").on("click", function(){
		$.ajax({
			url : "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20120221",
		    success : function(obj){ 
            list = obj.boxOfficeResult.dailyBoxOfficeList;
            for (m of list) {
            	$("#result").append(m.movieNm+ ":" +m.movieCd);
                } 	
            },
            dataType : "json"                       
		});
	})
});
</script>
</head>
<body>
<button id="btn">박스오피스 조회</button>
<div id="result"></div>
<div id="info"></div>
</body>
</html>