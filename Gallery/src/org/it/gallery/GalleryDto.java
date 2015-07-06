package org.it.gallery;

import java.sql.Date;

public class GalleryDto {
	/**
	 * 	must exist Default Constructor
	 */
	private int num;
	private String title;
	private String password;
	private String content;
	private Date regdate;	// 올린날짜
	
	private String imgAbsPath;	// 서버컴퓨터 상의 위치
	private String imgUrlPath;	// 어플리케이션 상의 위치 (./NAME.TYPE)
	private String th_imgAbsPath;
	private String th_imgUrlPath;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getImgAbsPath() {
		return imgAbsPath;
	}
	public void setImgAbsPath(String imgAbsPath) {
		this.imgAbsPath = imgAbsPath;
	}
	public String getImgUrlPath() {
		return imgUrlPath;
	}
	public void setImgUrlPath(String imgUrlPath) {
		this.imgUrlPath = imgUrlPath;
	}
	public String getTh_imgAbsPath() {
		return th_imgAbsPath;
	}
	public void setTh_imgAbsPath(String th_imgAbsPath) {
		this.th_imgAbsPath = th_imgAbsPath;
	}
	public String getTh_imgUrlPath() {
		return th_imgUrlPath;
	}
	public void setTh_imgUrlPath(String th_imgUrlPath) {
		this.th_imgUrlPath = th_imgUrlPath;
	}
}
