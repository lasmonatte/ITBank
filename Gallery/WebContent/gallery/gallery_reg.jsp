<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
<head>
	<title>갤러리</title>
</head>
<body>
	<form action="gallery.proc" method="post" enctype="multipart/form-data">
	제목 : <input type="text" name="title"/><br/><br/>
	비밀번호 : <input type="password" name="password"/><br/><br/>
	내용<br/>
	<textarea rows="5" cols="50" name="content">내용을 입력하세요</textarea><br/><br/>
	첨부파일 : <input type="file" name="img"/><br/>
	<hr/>
	<input type="submit" value="전송"/>&nbsp;&nbsp;
	<input type="reset" value="재작성"/>
	</form> 
</body>
</html>