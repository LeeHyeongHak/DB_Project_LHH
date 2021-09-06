<%@ codepage="65001" language="VBScript" %>

<%

Response.charset = "utf-8"

Response.ContentType="text/html"

Session.CodePage=65001

%>

<html>
	<head>
		<title> 아기정보 입력 </title>
		<style>
			body{
				background-image : url('background_main.jpg');
				background-size : 1020px 570px;
				background-repeat : no-repeat;
				background-attachment : fixed;
			}
			#reg{
				height : 150px;
			}
			#table{
				height : 10px;
			}
		</style>	
		<script>
		function move(){
			document.location.href="regist_submit_page.asp";
		}
	</script>
	</head>
	<body>
	<%
		set Dbcon = Server.CreateObject("ADODB.Connection")
		Dbcon.open Application("dbConnect")
		
		if Dbcon.state <> 1 Then
			Response.Write"데이터베이스 연결 실패<br/>"
			Response.end
		end if
		
		Dim id, pw, name, ssn, phone, addr
		
		id = request("id")
		pw = request("pw")
		name = request("name")
		ssn = request("ssn")
		phone = request("phone")
		addr = request("address")
		
		sql = "insert into CUSTORMER(Customer_ID,Member_Ssn,"&_
		"PhoneNumber,Member_Location,Passwd,Member_Name"&_
		") values('{id}','{ssn}','{phone}','{addr}','{pw}','{name}')"
		sql = Replace(sql,"{id}",id)
		sql = Replace(sql,"{ssn}",ssn)
		sql = Replace(sql,"{phone}",phone)
		sql = Replace(sql,"{addr}",addr)
		sql = Replace(sql,"{pw}",pw)
		sql = Replace(sql,"{name}",name)
		
		set Rs = Dbcon.Execute(sql)
		
		Dbcon.Close()
		set Dbcon=Nothing
		set Rs = Nothing
	%>
	<%
			response.cookies("user")= id 'cookie save
	%>
		<center>
		<form action="regist_submit_page.asp" method = "post" name = "registerForm">
			<table border=0 width="300">
				<div id = "reg"> 
					<tr align="center">
						<td><h1>아이 정보 입력</h1></td> 
				</div>
			<table border=1 width="300">
			<div id="table">
					<tr align="center">
						<td>아이 이름</td>
						<td><input type="text"name="name"></td>
					</tr>
					<tr align="center">
						<td>성별</td>
						<td><input type="radio"name="gender"value="M">남자
						<input type="radio"name="gender"value="W">여자</td>
						</tr>
					<tr align="center">
						<td>생년월일</td>
						<td><input type="text"name="bdate"></td>
					</tr>
					<tr align="center">
						<td>키</td>
						<td><input type="text"name="height"></td>
					</tr>
					<tr align="center">
						<td>몸무게</td>
						<td><input type="text"name="weight"></td>
					</tr>
					<tr align="center">
						<td colspan="2"><input type="submit"name="submitButton" value="입력" onclick = "move()"></td>
					</tr>
			</form>
		</center>
	</body>
</html>