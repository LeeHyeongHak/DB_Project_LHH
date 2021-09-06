<%@ codepage="65001" language="VBScript" %>

<%

Response.charset = "utf-8"

Response.ContentType="text/html"

Session.CodePage=65001

%>

<html>
	<head>
		<title> 회원가입</title>
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
		<script src="regist_page.js"></script>
	</head>
	<body>
		<center>
		<form action="baby_write.asp" method = "post" name = "registerForm">
			<table border=0 width="300">
				<div id = "reg"> 
					<tr align="center">
						<td><h1>회원가입</h1></td> 
				</div>
			<table border=1 width="300">
			<div id="table">
					<tr align="center">
						<td>ID</td>
						<td><input type="text"name="id"></td>
					</tr>
					<tr align="center">
						<td>PW</td>
						<td><input type="text"name="pw"></td>
						</tr>
					<tr align="center">
						<td>이름</td>
						<td><input type="text"name="name"></td>
					</tr>
					<tr align="center">
						<td>주민등록번호</td>
						<td><input type="text"name="ssn"></td>
					</tr>
					<tr align="center">
						<td>전화번호</td>
						<td><input type="text"name="phone"></td>
					</tr>
					<tr align="center">
						<td>주소</td>
						<td><input type="text"name="address"></td>
					</tr>
					<tr align="center">
						<td colspan="2"><input type="submit"name="submitButton"value="가입하기"></td>
					</tr>
			</form>
		</center>
	</body>
</html>