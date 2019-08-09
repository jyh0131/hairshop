package kr.yi.hairshop.dto;

import java.util.Date;

public class Snsinfo {
	private int snsNo;
	private int snsGuestNo;
	private String snsId;
	private String snsType;
	private String snsName;
	private String snsProfile;
	private Date snsConnecteDate;

	public Snsinfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Snsinfo(int snsNo, int snsGuestNo, String snsId, String snsType, String snsName, String snsProfile,
			Date snsConnecteDate) {
		super();
		this.snsNo = snsNo;
		this.snsGuestNo = snsGuestNo;
		this.snsId = snsId;
		this.snsType = snsType;
		this.snsName = snsName;
		this.snsProfile = snsProfile;
		this.snsConnecteDate = snsConnecteDate;
	}

	public int getSnsNo() {
		return snsNo;
	}

	public void setSnsNo(int snsNo) {
		this.snsNo = snsNo;
	}

	public int getSnsGuestNo() {
		return snsGuestNo;
	}

	public void setSnsGuestNo(int snsGuestNo) {
		this.snsGuestNo = snsGuestNo;
	}

	public String getSnsId() {
		return snsId;
	}

	public void setSnsId(String snsId) {
		this.snsId = snsId;
	}

	public String getSnsType() {
		return snsType;
	}

	public void setSnsType(String snsType) {
		this.snsType = snsType;
	}

	public String getSnsName() {
		return snsName;
	}

	public void setSnsName(String snsName) {
		this.snsName = snsName;
	}

	public String getSnsProfile() {
		return snsProfile;
	}

	public void setSnsProfile(String snsProfile) {
		this.snsProfile = snsProfile;
	}

	public Date getSnsConnecteDate() {
		return snsConnecteDate;
	}

	public void setSnsConnecteDate(Date snsConnecteDate) {
		this.snsConnecteDate = snsConnecteDate;
	}

	@Override
	public String toString() {
		return String.format(
				"Snsinfo [snsNo=%s, snsGuestNo=%s, snsId=%s, snsType=%s, snsName=%s, snsProfile=%s, snsConnecteDate=%s]",
				snsNo, snsGuestNo, snsId, snsType, snsName, snsProfile, snsConnecteDate);
	}

}
