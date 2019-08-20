package kr.yi.hairshop.dto;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class Guest {
	private int gNo;
	private String gId;
	private String gPassword;
	private Level gLGrade;
	private String gName;
	private String gTel;
	private String gEmail;
	
	private String postcode; // 주소 추가 19.08.20
	private String roadAddr;
	private String detailAddr;
	
	private Date gBirth;
	private Date gJoin;
	private int gPoint;
	private String gMemo;
	private boolean gSecession;
	private List<WorkDialog> workDialogList;

	public Guest() {
		// TODO Auto-generated constructor stub
	}

	public Guest(int gNo) {
		this.gNo = gNo;
	}

	public Guest(int gNo, String gName) {
		this.gNo = gNo;
		this.gName = gName;
	}

	public Guest(int gNo, String gId, String gPassword, Level gLGrade, String gName, String gTel, String gEmail,
			String postcode, String roadAddr, String detailAddr, Date gBirth, Date gJoin, int gPoint, String gMemo,
			boolean gSecession, List<WorkDialog> workDialogList) {
		super();
		this.gNo = gNo;
		this.gId = gId;
		this.gPassword = gPassword;
		this.gLGrade = gLGrade;
		this.gName = gName;
		this.gTel = gTel;
		this.gEmail = gEmail;
		this.postcode = postcode;
		this.roadAddr = roadAddr;
		this.detailAddr = detailAddr;
		this.gBirth = gBirth;
		this.gJoin = gJoin;
		this.gPoint = gPoint;
		this.gMemo = gMemo;
		this.gSecession = gSecession;
		this.workDialogList = workDialogList;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getRoadAddr() {
		return roadAddr;
	}

	public void setRoadAddr(String roadAddr) {
		this.roadAddr = roadAddr;
	}

	public String getDetailAddr() {
		return detailAddr;
	}

	public void setDetailAddr(String detailAddr) {
		this.detailAddr = detailAddr;
	}

	public int getgNo() {
		return gNo;
	}

	public void setgNo(int gNo) {
		this.gNo = gNo;
	}

	public String getgId() {
		return gId;
	}

	public void setgId(String gId) {
		this.gId = gId;
	}

	public String getgPassword() {
		return gPassword;
	}

	public void setgPassword(String gPassword) {
		this.gPassword = gPassword;
	}

	public Level getgLGrade() {
		return gLGrade;
	}

	public void setgLGrade(Level gLGrade) {
		this.gLGrade = gLGrade;
	}

	public String getgName() {
		return gName;
	}

	public void setgName(String gName) {
		this.gName = gName;
	}

	public String getgTel() {
		return gTel;
	}

	public void setgTel(String gTel) {
		this.gTel = gTel;
	}

	public String getgEmail() {
		return gEmail;
	}

	public void setgEmail(String gEmail) {
		this.gEmail = gEmail;
	}

	public Date getgBirth() {
		return gBirth;
	}

	public void setgBirth(Date gBirth) {
		this.gBirth = gBirth;
	}

	public Date getgJoin() {
		return gJoin;
	}

	public void setgJoin(Date gJoin) {
		this.gJoin = gJoin;
	}

	public int getgPoint() {
		return gPoint;
	}

	public void setgPoint(int gPoint) {
		this.gPoint = gPoint;
	}

	public String getgMemo() {
		return gMemo;
	}

	public void setgMemo(String gMemo) {
		this.gMemo = gMemo;
	}

	public List<WorkDialog> getWorkDialogList() {
		return workDialogList;
	}

	public void setWorkDialogList(List<WorkDialog> workDialogList) {
		this.workDialogList = workDialogList;
	}
	
	public boolean getgSecession() {
		return gSecession;
	}

	public void setgSecession(boolean gSecession) {
		this.gSecession = gSecession;
	}
	
	@Override
	public String toString() {
		return String.format(
				"Guest [gNo=%s, gId=%s, gPassword=%s, gLGrade=%s, gName=%s, gTel=%s, gEmail=%s, gBirth=%s, gJoin=%s, gPoint=%s, gMemo=%s, gSecession=%s, workDialogList=%s]",
				gNo, gId, gPassword, gLGrade, gName, gTel, gEmail, gBirth, gJoin, gPoint, gMemo, gSecession,
				workDialogList);
	}
	
//	@Override
//	public String toString() { // 나모가 바꿈
//		return String.format("%s", gName);
//	}
	
	public Object[] toArray() {
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		
//		return new Object[] { gNo, gLGrade.getlGrade(), gName, gTel, gEmail, date.format(gBirth), date.format(gJoin),
//				gPoint, gMemo == null?"":gMemo };
//		return null;

		
		return new Object[] { gNo, gLGrade==null?"":gLGrade.getlGrade(), gName, gTel==null?"":gTel, gEmail==null?"":gEmail, gBirth==null?"":date.format(gBirth), gJoin==null?"":date.format(gJoin), gPoint==0?"":gPoint, gMemo==null?"":gMemo };
	}

	public Object[] toArray2() {
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
//		널처리 해야됨
		String idNull="";
		if(gId!=null)
			idNull=gId;
		
			
		String gradeNull="";
		if(gLGrade!=null)
			gradeNull=gLGrade.getlGrade();
		
		
		String birthNull="";
		if(gBirth!=null)
			birthNull=date.format(gBirth);
		return new Object[] {gName,birthNull,idNull,gradeNull};
	}

	
	
}
