<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
<head>
	<title>������</title>
</head>
<body>
	<form action="gallery.proc" method="post" enctype="multipart/form-data">
	���� : <input type="text" name="title"/><br/><br/>
	��й�ȣ : <input type="password" name="password"/><br/><br/>
	����<br/>
	<textarea rows="5" cols="50" name="content">������ �Է��ϼ���</textarea><br/><br/>
	÷������ : <input type="file" name="img"/><br/>
	<hr/>
	<input type="submit" value="����"/>&nbsp;&nbsp;
	<input type="reset" value="���ۼ�"/>
	</form> 
</body>
</html>