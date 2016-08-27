package com.yc.vote.entity;

public class Subject {

	private int vsId;   
	private String  vsTitle; 
	private int  vsType;
	private Integer voteCount;
	private Integer optionCount;
	public Subject(int vsId, String vsTitle, int vsType, Integer voteCount, Integer optionCount) {
		super();
		this.vsId = vsId;
		this.vsTitle = vsTitle;
		this.vsType = vsType;
		this.voteCount = voteCount;
		this.optionCount = optionCount;
	}
	public Integer getVoteCount() {
		return voteCount;
	}
	public void setVoteCount(Integer voteCount) {
		this.voteCount = voteCount;
	}
	public Integer getOptionCount() {
		return optionCount;
	}
	public void setOptionCount(Integer optionCount) {
		this.optionCount = optionCount;
	}
	public int getVsId() {
		return vsId;
	}
	public void setVsId(int vsId) {
		this.vsId = vsId;
	}
	public String getVsTitle() {
		return vsTitle;
	}
	public void setVsTitle(String vsTitle) {
		this.vsTitle = vsTitle;
	}
	public int getVsType() {
		return vsType;
	}
	public void setVsType(int vsType) {
		this.vsType = vsType;
	}
	public Subject(int vsId, String vsTitle, int vsType) {
		super();
		this.vsId = vsId;
		this.vsTitle = vsTitle;
		this.vsType = vsType;
	}

	@Override
	public String toString() {
		return "Subject [vsId=" + vsId + ", vsTitle=" + vsTitle + ", vsType=" + vsType + ", voteCount=" + voteCount
				+ ", optionCount=" + optionCount + "]";
	}
	public Subject() {
		
	} 

}
