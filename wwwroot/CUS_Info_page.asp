<!--#include virtual = "/header.asp" -->

<style>
#CUS_Info_A{
	position : absolute;
	top : 150px;
	left : 410px;
}
#t1{
	height : 250px;
}
</style>
<center>
	<div id = "CUS_Info_A">
		<h1>맞춤 정보</h1></br>
		<a>맞춤 정보를 확인할 아기와 자료를 입력하세요</a>
		<table border=1 width="300">
			<div id = "t1">
			<tr align="center">
				<td>육아 자료 분류</td>
				<td>아이 이름</td>
			</tr></div>
			<tr align="center">
				<td><select name="Info_name">
				<option value="PARENTING_INFORMATION" selected> 육아 정보 </option>
				<option value="PARENTING_GOODS" selected> 육아 용품 </option>
				<option value="MEDIA" selected> 미디어 자료 </option>
				<option value="PROGRAM" selected> 육아 프로그램 </option>
				</select></td>
				<td><input type="text"name="name"></td>
			</tr>
		<table border=0 width="300">
			<tr align="center">
			<td><input id="search_table" type="button" value="검색" onclick = 'Submit(7)'/></td>
		</tr>
	</div>
</center>

<!--#include virtual = "/footer.asp" -->