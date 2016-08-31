package com.yc.corporation.entity;

import org.springframework.format.annotation.DateTimeFormat;

public class Infomation {
	private Integer infoid;
	private String title;
	@DateTimeFormat(pattern="yyyy-MM-dd") 
	private String infodate;
	private String content;
	private String infotype;
	private String club;
	
	public String getClub() {
		return club;
	}
	public void setClub(String club) {
		this.club = club;
	}
	public Integer getInfoid() {
		return infoid;
	}
	public void setInfoid(Integer infoid) {
		this.infoid = infoid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getInfodate() {
		return infodate;
	}
	public void setInfodate(String infodate) {
		this.infodate = infodate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getInfotype() {
		return infotype;
	}
	public void setInfotype(String infotype) {
		this.infotype = infotype;
	}
	
	public Infomation() {
	}
	public Infomation(Integer infoid, String title, String infodate, String content, String infotype, String club) {
		super();
		this.infoid = infoid;
		this.title = title;
		this.infodate = infodate;
		this.content = content;
		this.infotype = infotype;
		this.club = club;
	}
	@Override
	public String toString() {
		return "Infomation [infoid=" + infoid + ", title=" + title + ", infodate=" + infodate + ", content=" + content
				+ ", infotype=" + infotype + ", club=" + club + "]";
	}
	
	

}
