<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="demo">
<h2>The XMLHttpRequest Object</h2>
</div>
<button type="button" onclick="loadDoc()">Change Content</button>
<script>
function loadDoc() {
  var xhttp = new XMLHttpRequest();
  xhttp.onload = function() {
      member = JSON.parse(this.responseText)
      document.getElementById("demo").innerHTML = member.hobbys[0];
      this.responseText;
  };
  xhttp.onerror = function() {
	  document.getElementById("demo").innerHTML += this.status;
  }
  xhttp.open("GET", "../JsonServ", true);
  //로딩 중...
  xhttp.send();
}
</script>

</body>
</html>