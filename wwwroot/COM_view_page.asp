<!--#include virtual = "/header.asp" -->

<center>
<h1> 커뮤니케이션 </h1>
<%
	set Dbcon = Server.CreateObject("ADODB.Connection")
		Dbcon.open Application("dbConnect")
		
	if Dbcon.state <> 1 Then
		Response.Write"데이터베이스 연결 실패<br/>"
		Response.end
	end if
		
		Dim post_num
		Dim comment_num
		
	sql1 = "select CP.Posts_Num, CP.Posts_Name, CP.Contents"&_
		" from COMMUNICATION_POST as CP"
	set RS1 = Dbcon.Execute(sql1)
	
		response.write("<div id = 'POST'>")
		response.write("<table border = 1 width='750'>")
	
		do while not(RS1.Eof)
			response.write("<tr>")
			response.write("<td>게시 번호</td>")
			response.write("<td>제목</td>")
			response.write("<td>내용</td>")
			response.write("</tr>")
			response.write("<tr>")
			response.write("<td>"&Rs1("Posts_Num")&"</td>")
			response.write("<td>"&Rs1("Posts_Name")&"</td>")
			response.write("<td>"&Rs1("Contents")&"</td>")
			response.write("</tr>")
			sql2 = "select C.Posts_Num, C.C_Contents"&_
				" from COMMUNICATION_POST as CP join COMMENTS as C"&_
				" on CP.Posts_Num = C.Posts_Num"&_
				" where C.Post_Num = '{post_num}'"
				post_num = sql1 & "post_num"
				sql2 = Replace(sq2,"{post_num}",post_num)
			set RS2 = Dbcon.Execute(sql2)
			response.write("<div id = 'COMMENT'>")
			response.write("<table border = 1 width='750'>")
				do while not(RS2.Eof)
					response.write("<tr>")
					response.write("<td>게시 번호</td>")
					response.write("<td>댓긓 내용</td>")
					response.write("</tr>")
					response.write("<tr>")
					response.write("<td>"&Rs2("Posts_Num")&"</td>")
					response.write("<td>"&Rs2("C_Contents")&"</td>")
					response.write("</tr>")
					sql3 = "select C.Posts_Num, SubC.C_Contents"&_
						" from COMMENTS as C join COMMENTS as SubC"&_
						" on C.Comments_Num = SubC.SuperComments_Num"&_
						" where SubC.SuperComments_Num = '{comment_num}'"
					comment_num = sql2 & "comment_num"
					sql3 = Replace(sq3,"{comment_num}",comment_num)
					set RS3 = Dbcon.Execute(sql3)
					response.write("<div id = 'SUBCOMMENT'>")
					response.write("<table border = 1 width='750'>")
					do while not(RS3.Eof)
						response.write("<tr>")
						response.write("<td>게시 번호</td>")
						response.write("<td>대댓글 내용</td>")
						response.write("</tr>")
						response.write("<tr>")
						response.write("<td>"&Rs3("Posts_Num")&"</td>")
						response.write("<td>"&Rs3("C_Contents")&"</td>")
						response.write("</tr>")
					loop
					response.write("</table>")
					response.write("</div>")
				loop
				response.write("</table>")
				response.write("</div>")	
		loop
		response.write("</table>")
		response.write("</div>")
	
	response.write("<input id='search_table' type='button' value='댓글작성' onclick = 'Submit(12)'/>")
	
	Dbcon.Close()
	set Dbcon=Nothing
	set Rs = Nothing
%>
</center>

<!--#include virtual = "/footer.asp" -->