package kr.yi.hairshop.dto;

import java.util.Date;

public class Comment {

	private int cNo;
	private int gNo;
	private int rNo;
	private String cWriter; //컬럼추가해야함. 작성자
	private Date cWritetime; //컬럼추가해야함. 작성일
	private String cContent;
	private Boolean cDelete;
	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Comment(int cNo, int gNo, int rNo, String cWriter, Date cWritetime, String cContent, Boolean cDelete) {
		super();
		this.cNo = cNo;
		this.gNo = gNo;
		this.rNo = rNo;
		this.cWriter = cWriter;
		this.cWritetime = cWritetime;
		this.cContent = cContent;
		this.cDelete = cDelete;
	}
	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	public int getgNo() {
		return gNo;
	}
	public void setgNo(int gNo) {
		this.gNo = gNo;
	}
	public int getrNo() {
		return rNo;
	}
	public void setrNo(int rNo) {
		this.rNo = rNo;
	}
	public String getcWriter() {
		return cWriter;
	}
	public void setcWriter(String cWriter) {
		this.cWriter = cWriter;
	}
	public Date getcWritetime() {
		return cWritetime;
	}
	public void setcWritetime(Date cWritetime) {
		this.cWritetime = cWritetime;
	}
	public String getcContent() {
		return cContent;
	}
	public void setcContent(String cContent) {
		this.cContent = cContent;
	}
	public Boolean getcDelete() {
		return cDelete;
	}
	public void setcDelete(Boolean cDelete) {
		this.cDelete = cDelete;
	}
	@Override
	public String toString() {
		return "Comment [cNo=" + cNo + ", gNo=" + gNo + ", rNo=" + rNo + ", cWriter=" + cWriter + ", cWritetime="
				+ cWritetime + ", cContent=" + cContent + ", cDelete=" + cDelete + "]";
	}
	
	
	
	
}
