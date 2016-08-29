package com.yc.corporation.entity;

public class Users {
	private int usid;
	private String username;
	private String password;
	private int age;
	private String sex;
	private String email;
	private String home;
	private String userclass;
	private String phone;
	private String pic;

	public Users(int usid, String username, String password, int age, String sex, String email, String home,
			String userclass, String phone) {
		this.usid = usid;
		this.username = username;
		this.password = password;
		this.age = age;
		this.sex = sex;
		this.email = email;
		this.home = home;
		this.userclass = userclass;
		this.phone = phone;
	}

	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}

	public Users(int usid, String username, String password, int age, String sex, String email, String home,
			String phone, String pic, String userclass) {
		this.usid = usid;
		this.username = username;
		this.password = password;
		this.age = age;
		this.sex = sex;
		this.email = email;
		this.home = home;
		this.phone = phone;
		this.pic = pic;
		this.userclass = userclass;
	}


	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHome() {
		return home;
	}
	public void setHome(String home) {
		this.home = home;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getUserclass() {
		return userclass;
	}
	public void setUserclass(String userclass) {
		this.userclass = userclass;
	}
	public int getUsid() {
		return usid;
	}
	public Users() {

	}

	@Override
	public String toString() {
		return "\n\tUsers [usid=" + usid + ", username=" + username + ", password=" + password + ", age=" + age + ", sex="
				+ sex + ", email=" + email + ", home=" + home + ", userclass=" + userclass + ", phone=" + phone
				+ ", pic=" + pic + "]";
	}

	public Users( String username, String password) {
		this.username = username;
		this.password = password;
	}
	public void setUsid(int usid) {
		this.usid = usid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}
