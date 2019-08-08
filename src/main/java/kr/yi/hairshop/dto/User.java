package kr.yi.hairshop.dto;

public class User {
	private int mNo;
	private String uName;
	private String uId;
	private boolean uIsMgr; //1=관리자, 0=guest
	private boolean uIsSns;

	public User() {
	}

	public User(int mNo, String uName, String uId, boolean uIsMgr, boolean uIsSns) {
		super();
		this.mNo = mNo;
		this.uName = uName;
		this.uId = uId;
		this.uIsMgr = uIsMgr;
		this.uIsSns = uIsSns;
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

	public boolean isuIsSns() {
		return uIsSns;
	}

	public void setuIsSns(boolean uIsSns) {
		this.uIsSns = uIsSns;
	}

	@Override
	public String toString() {
		return String.format("User [mNo=%s, uName=%s, uId=%s, uIsMgr=%s, uIsSns=%s]", mNo, uName, uId, uIsMgr, uIsSns);
	}



}
