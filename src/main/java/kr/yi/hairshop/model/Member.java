package kr.yi.hairshop.model;

import java.util.Date;

public class Member {
	private int uNo;
	private String uName;
	private String uId;
	private String uPassword;
	private String uEmail;
	private Date uRegDate;
	private boolean uIsMgr;
	
	public Member() {	
	}

	public Member(int uNo, String uName, String uId, String uPassword, String uEmail, Date uRegDate, boolean uIsMgr) {
		super();
		this.uNo = uNo;
		this.uName = uName;
		this.uId = uId;
		this.uPassword = uPassword;
		this.uEmail = uEmail;
		this.uRegDate = uRegDate;
		this.uIsMgr = uIsMgr;
	}

	public int getuNo() {
		return uNo;
	}

	public void setuNo(int uNo) {
		this.uNo = uNo;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public String getuId() {
		return uId;
	}

	public void setuId(String uId) {
		this.uId = uId;
	}

	public String getuPassword() {
		return uPassword;
	}

	public void setuPassword(String uPassword) {
		this.uPassword = uPassword;
	}

	public String getuEmail() {
		return uEmail;
	}

	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}

	public Date getuRegDate() {
		return uRegDate;
	}

	public void setuRegDate(Date uRegDate) {
		this.uRegDate = uRegDate;
	}

	public boolean isuIsMgr() {
		return uIsMgr;
	}

	public void setuIsMgr(boolean uIsMgr) {
		this.uIsMgr = uIsMgr;
	}

	@Override
	public String toString() {
		return "Member [uNo=" + uNo + ", uName=" + uName + ", uId=" + uId + ", uPassword=" + uPassword + ", uEmail="
				+ uEmail + ", uRegDate=" + uRegDate + ", uIsMgr=" + uIsMgr + "]";
	}
	
	
	
}
