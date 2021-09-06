<!--#include virtual = "/header.asp" -->

<style>
#Info_A{
	position : absolute;
	top : 150px;
	left : 480px;
}
#t1{
	height : 250px;
}
</style>
<center>
	<div id = "Info_A">
		<h1>자료 검색</h1></br>
		<a>원하는 자료를 입력하세요.</a>
		<table border=1 width="200">
		<div id = "t1">
			<tr align="center">
				<td>육아 자료 분류
				</td>
			</tr></div>
			<tr align="center">
				<td><select name="Info_name">
				<option value="PARENTING_INFORMATION" selected> 육아 정보 </option>
				<option value="PARENTING_GOODS" selected> 육아 용품 </option>
				<option value="MEDIA" selected> 미디어 자료 </option>
				<option value="PROGRAM" selected> 육아 프로그램 </option>
				</select></td>
			</tr>
		<table border=0 width="200">
			<tr align="center">
			<td><input id="search_table" type="button" value="검색" onclick = 'Submit(6)'/></td>
		</tr>
	</div>
</center>

<!--#include virtual = "/footer.asp" -->