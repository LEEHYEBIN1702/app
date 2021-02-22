<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movierank.jsp</title>
</head>
<body>
<button id="btn" onclick="loadMovie()">박스오피스 조회</button>
<div id="result"></div>
<div id="info"></div>
<script>
    function loadInfo(movieCd){
    	//console.log(movieCd)
    	//코드에 해당하는 영화의 상세정보를 조회 - 감독, 출연배우, ...
    	 var xhttp = new XMLHttpRequest();
    	    xhttp.onload = function() {
    	    	//parse
    	    	var rank = JSON.parse(this.responseText)
    	    	var list = rank.boxOfficeResult.dailyBoxOfficeList;
    	    	this.responseText;
    	    	//for 이름만 출력
    	    	for (movie of list) {
    	    	document.getElementById("result").innerHTML =
    	    		"<div>"+ movie.movieNm + ":" + movie.movieCd + "</div>";
    	    	}
    	    	//document.getElementById("result").innerHTML = xhttp.responseText;
    	    }
    	    var url="http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?key=f5eef3421c602c6cb7ea224104795888&movieCd=20124079";
    	    xhttp.open("get",url);
    	    xhttp.send();
    }
    
    function loadMovie() {
    var xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
    	//parse
    	var rank = JSON.parse(this.responseText)
    	var list = rank.boxOfficeResult.dailyBoxOfficeList;
    	this.responseText;
    	//for 이름만 출력
    	for (movie of list) {
    	document.getElementById("result").innerHTML =
    		"<div>"+ movie.movieNm + ":" + movie.movieCd + "</div>";
    	}
    	//document.getElementById("result").innerHTML = xhttp.responseText;
    }
    var url="http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20120221";
    xhttp.open("get",url);
    xhttp.send();
    }
</script>
</body>
</html>