<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="dto" class="org.it.gallery.GalleryDto"/>
<jsp:useBean id="dao" class="org.it.gallery.GalleryDao"/>
<c:set target="${dto }" property="title" value="${requestScope.title }"/>
<c:set target="${dto }" property="password" value="${requestScope.password }"/>
<c:set target="${dto }" property="content" value="${requestScope.content }"/>
<c:set target="${dto }" property="imgAbsPath" value="${requestScope.imgAbsPath }"/>
<c:set target="${dto }" property="imgUrlPath" value="${requestScope.imgUrlPath }"/>
<c:set target="${dto }" property="th_imgAbsPath" value="${requestScope.th_imgAbsPath }"/>
<c:set target="${dto }" property="th_imgUrlPath" value="${requestScope.th_imgUrlPath }"/>

<c:choose>
	<c:when test="${dao.regOne(dto) ne 0 }">
		<h1> 업로드 성공!!</h1>
	</c:when>
	<c:otherwise>
		<h1> 실패했잖아 병시나!!!</h1>
	</c:otherwise>
</c:choose>

<form action="gallery.jsp" method="post">
	<input type="submit" value="돌아가기"/>
</form>