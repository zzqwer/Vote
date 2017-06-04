package com.yc.corporation.entity;

public class Baoming {
	private int bid;
	private String aname;
	private String bclass;
	private String bname;
	private String tel;

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public String getAname() {
		return aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
	}

	public String getBclass() {
		return bclass;
	}

	public void setBclass(String bclass) {
		this.bclass = bclass;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public Baoming(int bid, String aname, String bclass, String bname, String tel) {
		this.bid = bid;
		this.aname = aname;
		this.bclass = bclass;
		this.bname = bname;
		this.tel = tel;
	}

	public Baoming(String aname, String bclass, String bname, String tel) {
		this.aname = aname;
		this.bclass = bclass;
		this.bname = bname;
		this.tel = tel;
	}

	public Baoming() {
	}

}
