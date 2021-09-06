<!--#include virtual = "/header.asp" -->

<style>
#COM_W{
	position : absolute;
	top : 150px;
	left : 470px;
}
#t1{
	height : 250px;
}
</style>

<center>
	<div id = "COM_W">
		<h1>게시글 작성</h1></br>
		<a>욕설, 비방, 광고글 금지합니다</a>
		<table border=1 width="350">
			<div id = "t1">
			<tr align="center">
				<td>게시글 제목 입력</td>
				<td><input type="text" name="post_name"/></td>
			</tr></dir>
			<tr align="center">
				<td>게시글 내용 입력</td>
				<td><input type="text" name="post_CON"/></td>
			</tr>
		<table border=0 width="200">
			<tr align="center">
			<td><input id="search_table" type="button" value="게시하다" onclick = 'Submit(11)'/></td>
		</tr>
	</div>
</center>

<!--#include virtual = "/footer.asp" -->