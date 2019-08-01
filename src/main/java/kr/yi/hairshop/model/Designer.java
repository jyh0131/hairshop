package kr.yi.hairshop.model;

import java.util.Date;

public class Designer {
	private int dNo;
	private String dGrade;
	private String dId;
	private String dPassword;
	private String dName;
	private String dTel;
	private String dTel2;
	private String dAddr;
	private String dAddr2;
	private String dAddr3;
	private Date dBirth;
	private Date dJoin;
	private String dMemo;
	private boolean dSecession;
	
	public Designer() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Designer(int dNo, String dGrade, String dId, String dPassword, String dName, String dTel, String dTel2,
			String dAddr, String dAddr2, String dAddr3, Date dBirth, Date dJoin, String dMemo, boolean dSecession) {
		super();
		this.dNo = dNo;
		this.dGrade = dGrade;
		this.dId = dId;
		this.dPassword = dPassword;
		this.dName = dName;
		this.dTel = dTel;
		this.dTel2 = dTel2;
		this.dAddr = dAddr;
		this.dAddr2 = dAddr2;
		this.dAddr3 = dAddr3;
		this.dBirth = dBirth;
		this.dJoin = dJoin;
		this.dMemo = dMemo;
		this.dSecession = dSecession;
	}
	
	public int getdNo() {
		return dNo;
	}
	public void setdNo(int dNo) {
		this.dNo = dNo;
	}
	public String getdGrade() {
		return dGrade;
	}
	public void setdGrade(String dGrade) {
		this.dGrade = dGrade;
	}
	public String getdId() {
		return dId;
	}
	public void setdId(String dId) {
		this.dId = dId;
	}
	public String getdPassword() {
		return dPassword;
	}
	public void setdPassword(String dPassword) {
		this.dPassword = dPassword;
	}
	public String getdName() {
		return dName;
	}
	public void setdName(String dName) {
		this.dName = dName;
	}
	public String getdTel() {
		return dTel;
	}
	public void setdTel(String dTel) {
		this.dTel = dTel;
	}
	public String getdTel2() {
		return dTel2;
	}
	public void setdTel2(String dTel2) {
		this.dTel2 = dTel2;
	}
	public String getdAddr() {
		return dAddr;
	}
	public void setdAddr(String dAddr) {
		this.dAddr = dAddr;
	}
	public String getdAddr2() {
		return dAddr2;
	}
	public void setdAddr2(String dAddr2) {
		this.dAddr2 = dAddr2;
	}
	public String getdAddr3() {
		return dAddr3;
	}
	public void setdAddr3(String dAddr3) {
		this.dAddr3 = dAddr3;
	}
	public Date getdBirth() {
		return dBirth;
	}
	public void setdBirth(Date dBirth) {
		this.dBirth = dBirth;
	}
	public Date getdJoin() {
		return dJoin;
	}
	public void setdJoin(Date dJoin) {
		this.dJoin = dJoin;
	}
	public String getdMemo() {
		return dMemo;
	}
	public void setdMemo(String dMemo) {
		this.dMemo = dMemo;
	}
	public boolean isdSecession() {
		return dSecession;
	}
	public void setdSecession(boolean dSecession) {
		this.dSecession = dSecession;
	}
	
	@Override
	public String toString() {
		return "Designer [dNo=" + dNo + ", dGrade=" + dGrade + ", dId=" + dId + ", dPassword=" + dPassword + ", dName="
				+ dName + ", dTel=" + dTel + ", dTel2=" + dTel2 + ", dAddr=" + dAddr + ", dAddr2=" + dAddr2
				+ ", dAddr3=" + dAddr3 + ", dBirth=" + dBirth + ", dJoin=" + dJoin + ", dMemo=" + dMemo
				+ ", dSecession=" + dSecession + "]";
	}
	
	
}








