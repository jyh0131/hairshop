package kr.yi.hairshop.dto;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

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
	private List<WorkDialog> workDialogList;
	private boolean dSecession;
	
	public Designer() {
	}

	public Designer(int dNo) {
		this.dNo = dNo;
	}

	public Designer(String dGrade, String dId, String dName) {
		this.dGrade = dGrade;
		this.dId = dId;
		this.dName = dName;
	}

	public Designer(int dNo, String dGrade, String dId, String dPassword, String dName, String dTel, String dTel2, String dAddr,
			String dAddr2, Date dBirth, Date dJoin, String dMemo) {
		this.dNo = dNo;
		this.dGrade = dGrade;
		this.dId = dId;
		this.dPassword = dPassword;
		this.dName = dName;
		this.dTel = dTel;
		this.dTel2 = dTel2;
		this.dAddr = dAddr;
		this.dAddr2 = dAddr2;
		this.dBirth = dBirth;
		this.dJoin = dJoin;
		this.dMemo = dMemo;
	}

	public Designer(int dNo, String dGrade, String dId, String dPassword, String dName, String dTel, String dTel2,
			String dAddr, String dAddr2, String dAddr3, Date dBirth, Date dJoin, String dMemo,
			List<WorkDialog> workDialogList, boolean dSecession) {
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
		this.workDialogList = workDialogList;
		this.dSecession = dSecession;
	}

	public Designer(Designer getwDNo) {
		// TODO Auto-generated constructor stub
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

	public List<WorkDialog> getWorkDialogList() {
		return workDialogList;
	}

	public void setWorkDialogList(List<WorkDialog> workDialogList) {
		this.workDialogList = workDialogList;
	}

	public boolean isdSecession() {
		return dSecession;
	}

	public void setdSecession(boolean dSecession) {
		this.dSecession = dSecession;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + dNo;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Designer other = (Designer) obj;
		if (dNo != other.dNo)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return String.format("%s", dName);
	}

	
	public String toString2() {
		return String.format(
				"Designer [dNo=%s, dGrade=%s, dId=%s, dPassword=%s, dName=%s, dTel=%s, dTel2=%s, dAddr=%s, dAddr2=%s, dAddr3=%s, dBirth=%s, dJoin=%s, dMemo=%s, workDialogList=%s, dSecession=%s]",
				dNo, dGrade, dId, dPassword, dName, dTel, dTel2, dAddr, dAddr2, dAddr3, dBirth, dJoin, dMemo,
				workDialogList, dSecession);
	}

	public Object[] toArray() {
		return new Object[] { dNo, dGrade, dName, dTel, dTel2, dAddr, dAddr2, dAddr3, dBirth, dJoin, dMemo, dSecession };
	}

	public Object[] toArrayMgn() {
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		String birth="";
		if(dBirth!=null)
			birth=date.format(dBirth);
		
		
		return new Object[] { dGrade==null?"":dGrade, dId==null?"":dId, dName, dTel, dTel2==null?"":dTel2, birth, dMemo==null?"":dMemo };
	}

	
}








