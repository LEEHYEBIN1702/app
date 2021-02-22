<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function addFruit() {
	//input tag의 값을 select의 option 태그 만들어서 추가
	var op = document.createElement("option")
	op.innerText = document.getElementById("fruit").value;
	document.getElementById("list").add(op)
	// 값 입력 후 input tag는 클리어
	
	var table = document.getElementById("tbl");
	table.setAttribute("border", "1");
	var row = table.insertRow();
	var cell = row.insertCell();
	cell.innerHTML = document.getElementById("fruit").value;
	document.getElementById("fruit").value="";
}
</script>
</head>
<body>
<input id="fruit"><button type="button" onclick="addFruit()">등록</button>
<select id="list" size=10></select>
<table id="tbl">
</table>
</body>
</html>