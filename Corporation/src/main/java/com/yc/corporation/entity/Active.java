package com.yc.corporation.entity;

import org.springframework.format.annotation.DateTimeFormat;

public class Active {
	private int aid;
	private String aname;
	private String atime;
	private String acontent;
	private String place;
	private String tel;
	private int acount;
	private String endtime;
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getAtime() {
		return atime;
	}
	public void setAtime(String atime) {
		this.atime = atime;
	}
	public String getAcontent() {
		return acontent;
	}
	public void setAcontent(String acontent) {
		this.acontent = acontent;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getAcount() {
		return acount;
	}
	public void setAcount(int acount) {
		this.acount = acount;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	public Active(int aid, String aname, String atime, String acontent, String place, String tel, int acount,
			String endtime) {
		super();
		this.aid = aid;
		this.aname = aname;
		this.atime = atime;
		this.acontent = acontent;
		this.place = place;
		this.tel = tel;
		this.acount = acount;
		this.endtime = endtime;
	}
	public Active() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Active [aid=" + aid + ", aname=" + aname + ", atime=" + atime + ", acontent=" + acontent + ", place="
				+ place + ", tel=" + tel + ", acount=" + acount + ", endtime=" + endtime + "]";
	}
	
	
}