
<%@page import="org.it.gallery.GalleryDto"%>
<%@page import="org.it.gallery.GalleryDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.awt.Graphics"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	session.setAttribute("uploadImage", false);
	String uploadPath = application.getRealPath("/");
	MultipartRequest mr = new MultipartRequest(request, uploadPath, 1024*1024*10, "euc-kr");
	
	File file = mr.getFile("img");
	File thumb = null;
	if(file!=null){
		//to make Thumbnail image
		BufferedImage filebuff = ImageIO.read(file);
		BufferedImage thumbuff = new BufferedImage(100, 100, BufferedImage.TYPE_INT_RGB);
		Graphics g = thumbuff.getGraphics();
		g.drawImage(filebuff, 0, 0, 100, 100, null);
		
		String name = file.getName();
		thumb = new File(uploadPath, "thumb_" + name);
		
		ImageIO.write(thumbuff, "jpg", thumb);
	
		if(thumb.exists())
			session.setAttribute("uploadImage", true);
	}
//	request.getRequestDispatcher("gallery_view.jsp").forward(request, response);
	String title = (String)mr.getParameter("title");
	String password = (String)mr.getParameter("password");
	String content = (String)mr.getParameter("content");
	
	request.setAttribute("title", title);
	request.setAttribute("password", password);
	request.setAttribute("content", content);
	request.setAttribute("imgAbsPath", file.getAbsolutePath());
	request.setAttribute("imgUrlPath", "./" + file.getName());
	request.setAttribute("th_imgAbsPath", thumb.getAbsolutePath());
	request.setAttribute("th_imgUrlPath", "./" + thumb.getName());

	request.getRequestDispatcher("gallery_view.jsp").forward(request, response);
%>