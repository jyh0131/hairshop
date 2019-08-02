package kr.yi.hairshop.dto;

public class User {
	private int mNo;
	private String uName;
	private String uId;
	private boolean uIsMgr;
	
	public User() {
	}
	
	public User(int mNo, String uName, String uId, boolean uIsMgr) {
		super();
		this.mNo = mNo;
		this.uName = uName;
		this.uId = uId;
		this.uIsMgr = uIsMgr;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
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
	public boolean isuIsMgr() {
		return uIsMgr;
	}
	public void setuIsMgr(boolean uIsMgr) {
		this.uIsMgr = uIsMgr;
	}
	
	@Override
	public String toString() {
		return "User [mNo=" + mNo + ", uName=" + uName + ", uId=" + uId + ", uIsMgr=" + uIsMgr + "]";
	}
	
	
}
