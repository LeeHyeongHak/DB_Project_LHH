<!--#include virtual = "/header.asp" -->

<center>
<h1> 댓글 작성 완료 </h1>
<%
	set Dbcon = Server.CreateObject("ADODB.Connection")
		Dbcon.open Application("dbConnect")
		
	if Dbcon.state <> 1 Then
						Response.Write"데이터베이스 연결 실패<br/>"
						Response.end
	end if
		
	Dim id, name, con, r_num, p_num
		
		id = mem_id
		r_num = Int((20 * Rnd)+63)
		p_num = request("post_number")
		con = request("comment_CON")
		
		sql = "insert into comments(Comments_Num, Posts_Num,"&_
		"Supercomments_Num,C_Contents,Customer_ID) values("&_
		"'{r_num}','{p_num}',-1,'{con}','{id}')"
		sql = Replace(sql,"{id}",id)
		sql = Replace(sql,"{r_num}",r_num)
		sql = Replace(sql,"{con}",con)
		sql = Replace(sql,"{p_num}",p_num)
		
		set Rs = Dbcon.Execute(sql)
		
		response.write("<h1>커뮤니티로 돌아갑니다</h1>")
		response.write("<input id='search_table' type='button' value='돌아가기' onclick = 'Submit(4)'/>")

		Dbcon.Close()
	set Dbcon=Nothing
	set Rs = Nothing
%>
</center>

<!--#include virtual = "/footer.asp" -->