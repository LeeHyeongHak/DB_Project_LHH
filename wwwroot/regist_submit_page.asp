<%@ codepage="65001" language="VBScript" %>

<%
Response.charset = "utf-8"

Response.ContentType="text/html"

Session.CodePage=65001

%>

<html>
	<head>
		<title> 가입 완료 </title>
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
		
	</head>
	<body>
	<%
		set Dbcon = Server.CreateObject("ADODB.Connection")
		Dbcon.open Application("dbConnect")
		
		if Dbcon.state <> 1 Then
			Response.Write"데이터베이스 연결 실패<br/>"
			Response.end
		end if
		
		Dim name, sex, bdate, height, weight, id
		
		id = request.cookies("user")
		name = request("name")
		sex = request("gender")
		bdate = request("bdate")
		height = request("height")
		weight = request("weight")

		sql = "insert into CHILD(Child_Name,Height,Weight,"&_
			"Sex,Bdate,Customer_ID)"&_ 
			"values('{name}','{height}','{weight}','{sex}','{bdate}','{id}')"
		sql = Replace(sql,"{name}",name)
		sql = Replace(sql,"{height}",height)
		sql = Replace(sql,"{weight}",weight)
		sql = Replace(sql,"{sex}",sex)
		sql = Replace(sql,"{bdate}",bdate)
		sql = Replace(sql,"{id}",id)
		
		set Rs = Dbcon.Execute(sql)
		
		Dbcon.Close()
		set Dbcon=Nothing
		set Rs = Nothing
	%>
	<center>
		<form action="start_page.asp" method = "post" name = "registerForm">
			<table border=0 width="300">
				<div id = "reg"> 
					<tr align="center">
						<td><h1>가입 완료</h1></td> 
				</div>
			<table border=0 width="300">
				<div id="table">
					<tr align="center">
						<td><input type="submit"name="submitButton" value="main이동"></td>
					</tr>
				</div>
			</form>
		</center>
	</body>
</html>