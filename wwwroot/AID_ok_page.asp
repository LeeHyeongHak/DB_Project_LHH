<!--#include virtual = "/header.asp" -->

<center>
<h1> 검색 결과</h1>
<%
	set Dbcon = Server.CreateObject("ADODB.Connection")
		Dbcon.open Application("dbConnect")
		
	if Dbcon.state <> 1 Then
						Response.Write"데이터베이스 연결 실패<br/>"
						Response.end
	end if
		
		Dim name
	
		name = request("name")
		
		if name <> "" then
			sql = "select FA.Disease_Name, FA.First_Aid_Method"&_
				" from FIRST_AID as FA join Phenomenon as P"&_
				" on FA.Disease_Name = P.Disease_Name"&_
				" where P.Phenomenon LIKE '%{name}%'"
			sql = Replace(sql,"{name}",name)
			set RS = Dbcon.Execute(sql)
			
			response.write("<div id = 'AID_Info'>")
			response.write("<table border = 1 width='200'>")
			
			response.write("<tr>")
			response.write("<td>질병명</td>")
			response.write("<td>응급처치법</td>")
			response.write("</tr>")
			
			do while not(RS.Eof)
				response.write("<tr>")
				response.write("<td>"&Rs("Disease_Name")&"</td>")
				response.write("<td>"&Rs("First_Aid_Method")&"</td>")
				response.write("</tr>")
			loop
			response.write("</table>")
			response.write("</div>")
		else
			response.write("<h1>검색어를 입력하세요</h1>")
			response.write("<input id='search_table' type='button' value='되돌아가기' onclick = 'Submit(3)'/>")
		end if
	Dbcon.Close()
	set Dbcon=Nothing
	set Rs = Nothing
%>
</center>

<!--#include virtual = "/footer.asp" -->