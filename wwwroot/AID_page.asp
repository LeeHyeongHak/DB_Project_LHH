<!--#include virtual = "/header.asp" -->

<style>
#AID_A{
	position : absolute;
	top : 150px;
	left : 460px;
}
#t1{
	height : 250px;
}
</style>
<center>
	<div id = "AID_A">
		<h1>응급처치법</h1></br>
		<a>아이의 질병 현상을 입력하세요</a>
		<table border=1 width="200">
			<div id = "t1">
			<tr align="center">
				<td>현상</td>
			</tr></div>
			<tr align="center">
				<td><input type="text"name="name"></td>
			</tr>
		<table border=0 width="200">
			<tr align="center">
			<td><input id="search_table" type="button" value="검색" onclick = 'Submit(8)'/></td>
		</tr>
	</div>
</center>

<!--#include virtual = "/footer.asp" -->