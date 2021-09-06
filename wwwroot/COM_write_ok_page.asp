<!--#include virtual = "/header.asp" -->

<center>
<h1> 게시글 작성 완료 </h1>
<%
	set Dbcon = Server.CreateObject("ADODB.Connection")
		Dbcon.open Application("dbConnect")
		
	if Dbcon.state <> 1 Then
						Response.Write"데이터베이스 연결 실패<br/>"
						Response.end
	end if
		
	Dim id, name, con, num
		
		id = mem_id
		num = Int((30 * Rnd)+39)
		name = request("post_name")
		con = request("post_CON")
		
		sql = "insert into COMMUNICATION_POST(Posts_Num,Contents,"&_
		"Posts_Name,Customer_ID) values('{num}','{con}','{name}','{id}')"
		sql = Replace(sql,"{id}",id)
		sql = Replace(sql,"{num}",num)
		sql = Replace(sql,"{con}",con)
		sql = Replace(sql,"{name}",name)
		
		set Rs = Dbcon.Execute(sql)
		
		response.write("<h1>커뮤니티로 돌아갑니다</h1>")
		response.write("<input id='search_table' type='button' value='돌아가기' onclick = 'Submit(4)'/>")

		Dbcon.Close()
	set Dbcon=Nothing
	set Rs = Nothing
%>
</center>

<!--#include virtual = "/footer.asp" -->