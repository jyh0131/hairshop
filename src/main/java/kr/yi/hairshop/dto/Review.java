package kr.yi.hairshop.dto;

import java.util.Date;

public class Review {
	private int rNo;
	private Designer rDNo;
	private Guest rGNo;
	private String rWriter;
	private String rTitle;
	private String rContent;
	private Date rWritetime;
	private String rFile;
	private boolean rDelete;
	
	public Review() {
		super();
		// TODO Auto-generated constructor stub
	}

	

	public Review(int rNo, Designer rDNo, Guest rGNo, String rWriter, String rTitle, String rContent, Date rWritetime,
			String rFile, boolean rDelete) {
		super();
		this.rNo = rNo;
		this.rDNo = rDNo;
		this.rGNo = rGNo;
		this.rWriter = rWriter;
		this.rTitle = rTitle;
		this.rContent = rContent;
		this.rWritetime = rWritetime;
		this.rFile = rFile;
		this.rDelete = rDelete;
	}
	public Designer getrDNo() {
		return rDNo;
	}

	public void setrDNo(Designer rDNo) {
		this.rDNo = rDNo;
	}

	public Review(int rNo, Guest rGNo, String rWriter, String rTitle, String rContent, Date rWritetime, String rFile,
			boolean rDelete) {
		super();
		this.rNo = rNo;
		this.rGNo = rGNo;
		this.rWriter = rWriter;
		this.rTitle = rTitle;
		this.rContent = rContent;
		this.rWritetime = rWritetime;
		this.rFile = rFile;
		this.rDelete = rDelete;
	}

	public Review(Guest rGNo, String rWriter, String rTitle, String rContent, String rFile) {
		super();
		this.rGNo = rGNo;
		this.rWriter = rWriter;
		this.rTitle = rTitle;
		this.rContent = rContent;
		this.rFile = rFile;
	}

	public Review(int rNo, String rTitle, String rContent, String rFile) {
		super();
		this.rNo = rNo;
		this.rTitle = rTitle;
		this.rContent = rContent;
		this.rFile = rFile;
	}

	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
	}

	public Guest getrGNo() {
		return rGNo;
	}

	public void setrGNo(Guest rGNo) {
		this.rGNo = rGNo;
	}

	public String getrWriter() {
		return rWriter;
	}

	public void setrWriter(String rWriter) {
		this.rWriter = rWriter;
	}

	public String getrTitle() {
		return rTitle;
	}

	public void setrTitle(String rTitle) {
		this.rTitle = rTitle;
	}

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rContent) {
		this.rContent = rContent;
	}

	public Date getrWritetime() {
		return rWritetime;
	}

	public void setrWritetime(Date rWritetime) {
		this.rWritetime = rWritetime;
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
		return "Review [rNo=" + rNo + ", rGNo=" + rGNo + ", rWriter=" + rWriter + ", rTitle=" + rTitle + ", rContent="
				+ rContent + ", rWritetime=" + rWritetime + ", rFile=" + rFile + ", rDelete=" + rDelete + "]";
	}
	
	
	
}
