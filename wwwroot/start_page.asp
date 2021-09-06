<%@ codepage="65001" language="VBScript" %>

<%

Response.charset = "utf-8"

Response.ContentType="text/html"

Session.CodePage=65001

%>

<html>
	<head>
		<title>육아 정보 제공 홈페이지 </title>
		<style>
			body{
				background-image : url('background_main.jpg');
				background-size : 1020px 570px;
				background-repeat : no-repeat;
				background-attachment : fixed;
			}
			#log{
				height : 200px;
			}
			#Layer1{
				height : 10px;
			}
		</style>
		<script>
			function Submit(index){
				if(index == 1){
					document.myFrom.action = 'login_ok_page.asp';
				}
				if(index == 2){
					document.myFrom.action = 'regist_page.asp';
				}
				document.myFrom.submit();
			}
		</script>
	</head>
	<body>
	<form method="post" name="myFrom">
		<center>
			<table border=0 width="300">
				<div id = "log"> 
					<tr align="center">
						<td>로그인 해주세요</td> 
				</div>
			<table border=1 width="300">
				<div id="Layer1">
					<tr align="center">
						<td>ID</td> <td><input id="loginID" type="text"/></td>
					</tr>
					<tr align="center">
						<td>PW</td> <td><input id="loginPW" type="password"/></td>
					<tr align="center">
						<td colspan="2">
						<input id="loginButton" type="button" value="로그인" onclick = 'Submit(1)'/>
						<input id="registButton" type="button" value="회원가입" onclick = 'Submit(2)'/>
					</td>
				</div>
		</center>
		</form>
	</body>
</html>