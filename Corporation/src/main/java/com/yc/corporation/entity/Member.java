package com.yc.corporation.entity;

public class Member {
	private int mid ;  //理事id
	private String mname ; 	//理事姓名
	private String memail ;  //邮箱账号
	private String mphone ;     //手机号/支付宝账号
	private String qq ; 			//QQ帐号
	private String corporation ;    //所属协会
	private String pay ;      //会费交付
	
	public Member() {
	}

	public Member(int mid, String mname, String memail, String mphone, String qq, String corporation, String pay) {
		this.mid = mid;
		this.mname = mname;
		this.memail = memail;
		this.mphone = mphone;
		this.qq = qq;
		this.corporation = corporation;
		this.pay = pay;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMemail() {
		return memail;
	}

	public void setMemail(String memail) {
		this.memail = memail;
	}

	public String getMphone() {
		return mphone;
	}

	public void setMphone(String mphone) {
		this.mphone = mphone;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getCorporation() {
		return corporation;
	}

	public void setCorporation(String corporation) {
		this.corporation = corporation;
	}

	public String getPay() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}

	@Override
	public String toString() {
		return "\n\tMember [mid=" + mid + ", mname=" + mname + ", memail=" + memail + ", mphone=" + mphone + ", qq=" + qq
				+ ", corporation=" + corporation + ", pay=" + pay + "]";
	}
	
	
}
