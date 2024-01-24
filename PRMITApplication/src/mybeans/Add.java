package mybeans;

import java.sql.*;



public class Add {
	private String name;
	private String email;
	private String mobno;
	private String gender;
	private String birthday;
	private String birthmonth;
	private String birthyear;
	private String address;
	private String city;
	private String pincode;
	private String state;
	private String country;
	private String ten;
	private String twelve;
	private String bca;
	
	public Add() {
		name="";
		email="";
		mobno="";
		gender="";
		birthday="";
		birthmonth="";
		birthyear="";
		address="";
		city="";
		pincode="";
		state="";
		country="";
		ten="";
		twelve="";
		bca="";
	}
	
	 private String insertSt() {
		 Connection con;
		 PreparedStatement pst;
		 try {
		 DBConnector dbcon=new DBConnector();
		 con=dbcon.getDbcon();
		 pst= con.prepareStatement("insert into students values(default,?,?,?,?,?,?,?,?,?,?,?,?,?,?,? )");
		 pst.setString(1,name);
		 pst.setString(2,email);
		 pst.setString(3,mobno);
		 pst.setString(4,gender);
		 pst.setString(5,birthday);
		 pst.setString(6, birthmonth);
		 pst.setString(7, birthyear);
		 pst.setString(8,address);
		 pst.setString(9,city);
		 pst.setString(10,pincode);
		 pst.setString(11,state);
		 pst.setString(12, country);
		 pst.setString(13, ten);
		 pst.setString(14,twelve);
		 pst.setString(15,bca);
		 int n=pst.executeUpdate();
		 
		 }
		 catch(Exception e)
		 {
			 
		 }
		return "";
		 
	 }

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobno() {
		return mobno;
	}

	public void setMobno(String mobno) {
		this.mobno = mobno;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getBirthmonth() {
		return birthmonth;
	}

	public void setBirthmonth(String birthmonth) {
		this.birthmonth = birthmonth;
	}

	public String getBirthyear() {
		return birthyear;
	}

	public void setBirthyear(String birthyear) {
		this.birthyear = birthyear;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getTwelve() {
		return twelve;
	}

	public void setTwelve(String twelve) {
		this.twelve = twelve;
	}

	public String getBca() {
		return bca;
	}

	public void setBca(String bca) {
		this.bca = bca;
	}
	 
}
