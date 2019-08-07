package kr.yi.hairshop.dto;

import java.util.Date;

public class Review {
	private Guest rRNo;
	private int rNo;
	private String rTitle;
	private String rWriter;
	private Date rWritetime;
	private String rContent;
	private String rFile;
	private boolean rDelete;
	
	public Review() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Review(Guest rRNo, int rNo, String rTitle, String rWriter, Date rWritetime, String rContent, String rFile,
			boolean rDelete) {
		super();
		this.rRNo = rRNo;
		this.rNo = rNo;
		this.rTitle = rTitle;
		this.rWriter = rWriter;
		this.rWritetime = rWritetime;
		this.rContent = rContent;
		this.rFile = rFile;
		this.rDelete = rDelete;
	}
	
	public Guest getrRNo() {
		return rRNo;
	}
	public void setrRNo(Guest rRNo) {
		this.rRNo = rRNo;
	}
	public int getrNo() {
		return rNo;
	}
	public void setrNo(int rNo) {
		this.rNo = rNo;
	}
	public String getrTitle() {
		return rTitle;
	}
	public void setrTitle(String rTitle) {
		this.rTitle = rTitle;
	}
	public String getrWriter() {
		return rWriter;
	}
	public void setrWriter(String rWriter) {
		this.rWriter = rWriter;
	}
	public Date getrWritetime() {
		return rWritetime;
	}
	public void setrWritetime(Date rWritetime) {
		this.rWritetime = rWritetime;
	}
	public String getrContent() {
		return rContent;
	}
	public void setrContent(String rContent) {
		this.rContent = rContent;
	}
	public String getrFile() {
		return rFile;
	}
	public void setrFile(String rFile) {
		this.rFile = rFile;
	}
	public boolean isrDelete() {
		return rDelete;
	}
	public void setrDelete(boolean rDelete) {
		this.rDelete = rDelete;
	}

	@Override
	public String toString() {
		return "Review [rRNo=" + rRNo + ", rNo=" + rNo + ", rTitle=" + rTitle + ", rWriter=" + rWriter + ", rWritetime="
				+ rWritetime + ", rContent=" + rContent + ", rFile=" + rFile + ", rDelete=" + rDelete + "]";
	}
	
	
	
}
