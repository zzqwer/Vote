package com.yc.corporation.entity;

public class Director {
	private int did ;  //理事id
	private String dname ; 	//理事姓名
	private String demail ;  //邮箱账号
	private String dphone ;     //手机号/支付宝账号
	private String  qq ; 			//QQ帐号
	private String corporation ;    //所属协会
	private String department ;      //所属部门
	private String place ;      //部门职位
	
	public Director() {
	}

	public Director(int did, String dname, String demail, String dphone, String qq, String corporation,
			String department, String place) {
		this.did = did;
		this.dname = dname;
		this.demail = demail;
		this.dphone = dphone;
		this.qq = qq;
		this.corporation = corporation;
		this.department = department;
		this.place = place;
	}

	public int getDid() {
		return did;
	}

	public void setDid(int did) {
		this.did = did;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getDemail() {
		return demail;
	}

	public void setDemail(String demail) {
		this.demail = demail;
	}

	public String getDphone() {
		return dphone;
	}

	public void setDphone(String dphone) {
		this.dphone = dphone;
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

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	@Override
	public String toString() {
		return "\n\tDirector [did=" + did + ", dname=" + dname + ", demail=" + demail + ", dphone=" + dphone + ", qq=" + qq
				+ ", corporation=" + corporation + ", department=" + department + ", place=" + place + "]";
	}
	
	
}
