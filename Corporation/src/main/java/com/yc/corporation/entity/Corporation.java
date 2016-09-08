package com.yc.corporation.entity;

public class Corporation {
	private int cid; // 社团id
	private String cname; // 社团名
	private String logo; // 社团logo
	private String teacher;// 指导老师
	private String head; // 社团负责人/会长/头儿
	private String tel; // 官方联系电话
	private String email; // 官方联系邮箱
	private String cintroduce; // 社团简介

	public Corporation() {
	}

	public Corporation(int cid, String cname, String logo, String teacher, String head, String tel, String email,
			String cintroduce) {
		this.cid = cid;
		this.cname = cname;
		this.logo = logo;
		this.teacher = teacher;
		this.head = head;
		this.tel = tel;
		this.email = email;
		this.cintroduce = cintroduce;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getTeacher() {
		return teacher;
	}

	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}

	public String getHead() {
		return head;
	}

	public void setHead(String head) {
		this.head = head;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCintroduce() {
		return cintroduce;
	}

	public void setCintroduce(String cintroduce) {
		this.cintroduce = cintroduce;
	}

	@Override
	public String toString() {
		return "\n\tCorporation [cid=" + cid + ", cname=" + cname + ", logo=" + logo + ", teacher=" + teacher
				+ ", head=" + head + ", tel=" + tel + ", email=" + email + ", cintroduce=" + cintroduce + "]";
	}

}
