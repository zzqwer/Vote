package com.yc.corporation.entity;

public class Admins {
	private int aid;
	private String  aname;
	private String  apwd;
	private String  aemail;  //邮箱账号
	private String aphone;        //手机号/支付宝账号
	private String qq;             //qq账号
	private int root;			//权限    1:普通管理员   2:超级管理员
	
	public Admins() {
	}

	public Admins(String aname, String apwd) {
		this.aname = aname;
		this.apwd = apwd;
	}

	public Admins(int aid, String aname, String apwd, String aemail, String aphone, String qq, int root) {
		this.aid = aid;
		this.aname = aname;
		this.apwd = apwd;
		this.aemail = aemail;
		this.aphone = aphone;
		this.qq = qq;
		this.root = root;
	}

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

	public String getApwd() {
		return apwd;
	}

	public void setApwd(String apwd) {
		this.apwd = apwd;
	}

	public String getAemail() {
		return aemail;
	}

	public void setAemail(String aemail) {
		this.aemail = aemail;
	}

	public String getAphone() {
		return aphone;
	}

	public void setAphone(String aphone) {
		this.aphone = aphone;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public int getRoot() {
		return root;
	}

	public void setRoot(int root) {
		this.root = root;
	}

	@Override
	public String toString() {
		return "\n\tAdmins [aid=" + aid + ", aname=" + aname + ", apwd=" + apwd + ", aemail=" + aemail + ", aphone="
				+ aphone + ", qq=" + qq + ", root=" + root + "]";
	}

}