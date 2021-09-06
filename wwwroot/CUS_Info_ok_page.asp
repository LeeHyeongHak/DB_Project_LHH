<!--#include virtual = "/header.asp" -->

<center>
<h1> 맞춤 정보</h1>
<%
	set Dbcon = Server.CreateObject("ADODB.Connection")
		Dbcon.open Application("dbConnect")
		
	if Dbcon.state <> 1 Then
						Response.Write"데이터베이스 연결 실패<br/>"
						Response.end
	end if
		
		Dim table_name, baby_name
		
		id = mem_id
		table_name = request("Info_name")
		baby_name = request("name")
		
		if table_name = "PARENTING_INFORMATION" then 
			sql = "select *"&_
				" from CHILD as C join Customize_Age as CA"&_
				" on C.Customer_ID = CA.Customer_ID join PARENTING_DATA as PD"&_
				" on CA.Contents_Num = PD.Contents_Num join {table_name} as PIN"&_
				" on PD.Contents_Num = PIN.Info_Num join Vaccination as V"&_
				" on PIN.Info_Num = V.Info_Num"&_
				" where C.Customer_ID = '{id}' and C.Child_Name = '{baby_name}'"&_
				" and DATEDIFF(MM,C.Bdate,GETDATE()) between PD.Min_Age and PD.Max_Age"
			sql = Replace(sql,"{table_name}",table_name)
			sql = Replace(sql,"{id}",id)
			sql = Replace(sql,"{baby_name}",baby_name)
			set RS = Dbcon.Execute(sql)
			
			response.write("<div id = 'P_info'>")
			response.write("<table border = 1 width='750'>")
			
			response.write("<tr>")
			response.write("<td>제목</td>")
			response.write("<td>최소 나이</td>")
			response.write("<td>최대 나이</td>")
			response.write("<td>성별</td>")
			response.write("<td>평균 신장</td>")
			response.write("<td>평균 몸무게</td>")
			response.write("<td>수면 정보</td>")
			response.write("<td>제목</td>")
			response.write("<td>음식 정보</td>")
			response.write("<td>육아 TIP</td>")
			response.write("<td>백신 정보</td>")
			response.write("</tr>")
			
			do while not(RS.Eof)
				response.write("<tr>")
				response.write("<td>"&Rs("Contents_Name")&"</td>")
				response.write("<td>"&Rs("Min_Age")&"</td>")
				response.write("<td>"&Rs("Max_Age")&"</td>")
				response.write("<td>"&Rs("Sex")&"</td>")
				response.write("<td>"&Rs("Avg_Height")&"</td>")
				response.write("<td>"&Rs("Avg_Weight")&"</td>")
				response.write("<td>"&Rs("Sleep_Information")&"</td>")
				response.write("<td>"&Rs("Food_Information")&"</td>")
				response.write("<td>"&Rs("Parenting_Tip")&"</td>")
				response.write("<td>"&Rs("Vaccination")&"</td>")
				response.write("</tr>")
			loop
			response.write("</table>")
			response.write("</div>")
		end if
		IF table_name = "PARENTING_GOODS" then 
			sql = "select *"&_
				" from CHILD as C join Customize_Age as CA"&_
				" on C.Customer_ID = CA.Customer_ID join PARENTING_DATA as PD"&_
				" on CA.Contents_Num = PD.Contents_Num join {table_name} as PG"&_
				" on PD.Contents_Num = PG.Goods_Num join Material as M"&_
				" on PG.Goods_Num = M.Goods_Num"&_
				" where C.Customer_ID = '{id}' and C.Child_Name = '{baby_name}'"&_
				" and DATEDIFF(MM,C.Bdate,GETDATE()) between PD.Min_Age and PD.Max_Age"
			sql = Replace(sql,"{table_name}",table_name)
			sql = Replace(sql,"{id}",id)
			sql = Replace(sql,"{baby_name}",baby_name)
			set RS = Dbcon.Execute(sql)
			
			response.write("<div id = 'G_info'>")
			response.write("<table border = 1 width='600'>")
			
			response.write("<tr>")
			response.write("<td>제목</td>")
			response.write("<td>최소 나이</td>")
			response.write("<td>최대 나이</td>")
			response.write("<td>소재</td>")
			response.write("<td>용품 정보</td>")
			response.write("</tr>")
			
			do while not(RS.Eof)
				response.write("<tr>")
				response.write("<td>"&Rs("Contents_Name")&"</td>")
				response.write("<td>"&Rs("Min_Age")&"</td>")
				response.write("<td>"&Rs("Max_Age")&"</td>")
				response.write("<td>"&Rs("Material")&"</td>")
				response.write("<td>"&Rs("Goods_Information")&"</td>")
				response.write("</tr>")
			loop
			response.write("</table>")
			response.write("</div>")
		end if
		IF table_name = "MEDIA" then 
			sql = "select *"&_
				" from CHILD as C join Customize_Age as CA"&_
				" on C.Customer_ID = CA.Customer_ID join PARENTING_DATA as PD"&_
				" on CA.Contents_Num = PD.Contents_Num join {table_name} as M"&_
				" on PD.Contents_Num = M.Media_Num"&_
				" where C.Customer_ID = '{id}' and C.Child_Name = '{baby_name}'"&_
				" and DATEDIFF(MM,C.Bdate,GETDATE()) between PD.Min_Age and PD.Max_Age"
			sql = Replace(sql,"{table_name}",table_name)
			sql = Replace(sql,"{id}",id)
			sql = Replace(sql,"{baby_name}",baby_name)
			set RS = Dbcon.Execute(sql)
			
			response.write("<div id = 'M_info'>")
			response.write("<table border = 1 width='500'>")
			
			response.write("<tr>")
			response.write("<td>제목</td>")
			response.write("<td>최소 나이</td>")
			response.write("<td>최대 나이</td>")
			response.write("<td>재생 시간</td>")
			response.write("<td>URL</td>")
			response.write("</tr>")
			
			do while not(RS.Eof)
				response.write("<tr>")
				response.write("<td>"&Rs("Contents_Name")&"</td>")
				response.write("<td>"&Rs("Min_Age")&"</td>")
				response.write("<td>"&Rs("Max_Age")&"</td>")
				response.write("<td>"&Rs("PlayTime")&"</td>")
				response.write("<td>"&Rs("URL")&"</td>")
				response.write("</tr>")
			loop
			response.write("</table>")
			response.write("</div>")
		end if
		IF table_name = "PROGRAM" then 
			sql = "select *"&_
				" from CHILD as C join Customize_Age as CA"&_
				" on C.Customer_ID = CA.Customer_ID join PARENTING_DATA as PD"&_
				" on CA.Contents_Num = PD.Contents_Num join {table_name} as P"&_
				" on PD.Contents_Num = P.Program_Num"&_
				" where C.Customer_ID = '{id}' and C.Child_Name = '{baby_name}'"&_
				" and DATEDIFF(MM,C.Bdate,GETDATE()) between PD.Min_Age and PD.Max_Age"
			sql = Replace(sql,"{table_name}",table_name)
			sql = Replace(sql,"{id}",id)
			sql = Replace(sql,"{baby_name}",baby_name)
			set RS = Dbcon.Execute(sql)
			
			response.write("<div id = 'PRO_info'>")
			response.write("<table border = 1 width='600'>")
			
			response.write("<tr>")
			response.write("<td>제목</td>")
			response.write("<td>최소 나이</td>")
			response.write("<td>최대 나이</td>")
			response.write("<td>시작 일자</td>")
			response.write("<td>종료 일자</td>")
			response.write("<td>시작 시간</td>")
			response.write("<td>종료 시간</td>")
			response.write("</tr>")
			
			do while not(RS.Eof)
				response.write("<tr>")
				response.write("<td>"&Rs("Contents_Name")&"</td>")
				response.write("<td>"&Rs("Min_Age")&"</td>")
				response.write("<td>"&Rs("Max_Age")&"</td>")
				response.write("<td>"&Rs("Begin_Date")&"</td>")
				response.write("<td>"&Rs("End_Date")&"</td>")
				response.write("<td>"&Rs("Begin_Time")&"</td>")
				response.write("<td>"&Rs("End_Time")&"</td>")
				response.write("<td>"&Rs("Program_Location")&"</td>")
				response.write("</tr>")
			loop
			response.write("</table>")
			response.write("</div>")
			end if
		
		
	Dbcon.Close()
	set Dbcon=Nothing
	set Rs = Nothing
	
%>
</center>

<!--#include virtual = "/footer.asp" -->