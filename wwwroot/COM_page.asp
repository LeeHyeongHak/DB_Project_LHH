<!--#include virtual = "/header.asp" -->

<style>
#COM_A{
	position : absolute;
	top : 150px;
	left : 470px;
}
#t1{
	height : 250px;
}
</style>

<center>
	<div id = "COM_A">
		<h1>커뮤니케이션</h1></br>
		<a>원하시는 행동을 선택하세요.</a>
		<table border=1 width="200">
			<div id = "t1">
			<tr align="center">
				<td>게시글 열람</td>
				<td>게시글 작성</td>
			</tr></dir>
			<tr align="center">
				<td><input id="post_look" type="button" value="열람" onclick = 'Submit(9)'/></td>
				<td><input id="post_write" type="button" value="작성" onclick = 'Submit(10)'/></td>
			</tr>
	</div>
</center>

<!--#include virtual = "/footer.asp" -->