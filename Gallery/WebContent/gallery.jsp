<%@page import="java.io.File"%>
<%@page import="java.util.List"%>
<%@page import="org.it.gallery.GalleryDao"%>
<%@page import="org.it.gallery.GalleryDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%
GalleryDao dao = new GalleryDao();

List<GalleryDto> list = dao.readAll();

for(GalleryDto dto : list){
	String name = dto.getTh_imgUrlPath();
	File file = new File(dto.getTh_imgAbsPath());
	if(file.exists()){
	out.println(name + "<br/>");
	%>
	<img src="<%=name %>"/>
	<%
	}
}


%>

