<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form.jsp</title>
<script>
	function validateForm() {
		var x = document.forms["myForm"]["fname"].value;
		if (x == "") {
			alert("Name must be filled out");
			return false;
		}
		//value, selectedIndex
	 // var job = document.forms["myForm"]["job"].value;
		var job = document.myForm.job.selectedIndex;
	 // var job = document.forms[0].elements[1].value;
	 // var job = document.getElementsByName("job").value;
		if(job <= 0) {
			alert("job must be select");
			return false;
		}
		
		//체크박스 과제
		//체크 된 갯수가 무조건 하나 이상인지 체크 (for)문 돌려서 카운트가 된 게 1보다 커야함
		document.forms["myForm"].submit();
	}
</script>
</head>
<body>

	<form name="myForm" action="action_page.jsp" method="post">
		Name: <input type="text" name="fname"> <br> 
		<select	name="job">
			<option value="">선택</option>
			<option value="dgn">디자이너</option>
			<option value="pgm">프로그래머</option>
		</select> <br> 
		취미 <input type="checkbox" name="hobby" value="read">독서 
		    <input type="checkbox" name="hobby" value="jog">달리기
		<button type="button" onclick="validateForm()">등록</button>
	</form>

</body>
</html>