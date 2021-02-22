<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="result"></div>
	<script>
    var empList = [
    	{id:100, name:"scott", hiredate:"2020/01/01"},
    	{id:100, name:"박대리", hiredate:"2020/01/01"},
    	{id:100, name:"김대리", hiredate:"2020/01/01"}
    	      ]
    //사원 이름을 div에 출력
 /* for (i=0; empList.length; i++){
    document.getElementById("result").innerHTML += empList[i].name +"<br>"
    }*/
    
    //자바 스크립트에서의 확장 for문
    for ( emp of empList ) {
        document.getElementById("result").innerHTML += emp.name +"<br>"
    }
    
    //부서 정보를 json으로 표기
    var depts = [{ DEPARTMENT_ID:10, DEPARTMENT_NAME:"ADMINISTRATION", MANAGER_ID:200, LOCATION_ID:1700 },
    	         { DEPARTMENT_ID:20, DEPARTMENT_NAME:"MARKETING", MANAGER_ID:201, LOCATION_ID:1800 }] 
    
    //첫번째 취미를 출력
    var member = {name: "hong", hobbys : ["독서", "달리기"]};
    document.getElementById("result").innerHTML += "<br>취미:"+ member.hobbys[0];
    
    //두번째 회원의 첫번째 취미를 출력
    var members = [{name: "hong", hobbys : ["독서", "달리기"]},
                   {name: "kang", hobbys : ["스키", "달리기"]}]
    document.getElementById("result").innerHTML += "<br>취미:"+ members[1].hobbys[0];
    
    
    </script>
</body>
</html>