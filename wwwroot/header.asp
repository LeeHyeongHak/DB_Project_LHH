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
				background-size : 1020px 570px;;
				background-repeat : no-repeat;
				background-attachment : fixed;
			}
			#Info{
				position : absolute;
				top : 75px;
				left : 58px;
			}
			#CUS_Info{
				position : absolute;
				top : 200px;
				left : 170px;
			}
			#AID{
				position : absolute;
				top : 385px;
				left : 165px;
			}
			#COM{
				position : absolute;
				top : 495px;
				left : 46px;
			}
			#Info_B{
				color : black; 
				background : white;
			}
			#CUS_Info_B{
				color : black; 
				background : white;
			}
			#AID_B{
				color : black; 
				background : white;
			}
			#COM_B{
				color : black; 
				background : white;
			}
			#logout{
				position : absolute;
				top : 0px;
				left : 430px;
			}
			#m_id{
				position : absolute;
				top : 0px;
				left : 800px;
			}
		</style>
		<script>
			function Submit(index){
				if(index == 1){ <!--육아정보 검색-->
					document.myFrom.action = 'Info_page.asp';
				}
				if(index == 2){ <!--맞춤정보-->
					document.myFrom.action = 'CUS_Info_page.asp';
				}
				if(index == 3){ <!--응급처치 검색-->
					document.myFrom.action = 'AID_page.asp';
				}
				if(index == 4){ <!--커뮤니케이션 메인-->
					document.myFrom.action = 'COM_page.asp';
				}
				if(index == 5){ <!--로그아웃-->
					document.myFrom.action = 'start_page.asp';
				}
				if(index == 6){ <!--자료검색결과-->
					document.myFrom.action = 'Info_ok_page.asp';
				}
				if(index == 7){ <!--맞춤정보 결과-->
					document.myFrom.action = 'CUS_Info_ok_page.asp';
				}
				if(index == 8){ <!--응급처치 검색 결과-->
					document.myFrom.action = 'AID_ok_page.asp';
				}
				if(index == 9){ <!--커뮤니케이션 메인-->
					document.myFrom.action = 'COM_view_page.asp';
				}
				if(index == 10){ <!--게시글 입력-->
					document.myFrom.action = 'COM_write_page.asp';
				}
				if(index == 11){ <!--게시글 디비 입력-->
					document.myFrom.action = 'COM_write_ok_page.asp';
				}
				if(index == 12){ <!--댓글 입력-->
					document.myFrom.action = 'COM_com_write_page.asp';
				}
				if(index == 13){ <!--댓글 디비 입력-->
					document.myFrom.action = 'COM_com_write_ok_page.asp';
				}
				document.myFrom.submit();
			}
		</script>
	</head>
	<body>
	<%
		mem_id = request.cookies("user")
	%>
		<form method="post" name="myFrom">
		<center>
			<table border=0 width="200">
					<tr align="center">
						<td><div id = "Info"> 
						<input id="Info_B" type="button" value="자료 검색" onclick = 'Submit(1)'/>
					</div></td> 	
			<table border=0 width="200">
					<tr align="center">
						<td><div id = "CUS_Info"> 
						<input id="CUS_Info_B" type="button" value="맞춤 정보" onclick = 'Submit(2)'/>	
					</div></td>
			<table border=0 width="200">
					<tr align="center">
						<td><div id = "AID"> 
						<input id="AID_B" type="button" value="응급처치법" onclick = 'Submit(3)'/>
					</div></td>
			<table border=0 width="200"> 
					<tr align="center">
						<td><div id = "COM">
						<input id="COM_B" type="button" value="커뮤니케이션" onclick = 'Submit(4)'/>
					</div></td>
			<table border=0 width="200"> 
					<tr align="center">
						<td><div id = "logout">
						<input id="logout" type="button" value="로그아웃" onclick = 'Submit(5)'/>
					</div></td>
			<div id = "m_id"><a><%response.write mem_id&"<br/>"%></a></div>
		</center>
		</form>