package com.yc.corporation.entity;

public class Photo {
	private int pid;
	private String  pname;
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public Photo() {
		// TODO Auto-generated constructor stub
	}
	
	public Photo(int pid, String pname) {
	
		this.pid = pid;
		this.pname = pname;
	}
	@Override
	public String toString() {
		return "Photo [pid=" + pid + ", pname=" + pname + "]";
	}
	
}