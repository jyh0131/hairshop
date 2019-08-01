package kr.yi.hairshop.model;

import java.util.Date;

public class Product {
	private int pNo;
	private String pName;
	private String pPrice;
	private String pWriter;
	private Date pRegDate;
	private String pDetail;
	private String pPublisher;
	private String pType;
	private String pFile;
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(int pNo, String pName, String pPrice, String pWriter, Date pRegDate, String pDetail,
			String pPublisher, String pType, String pFile) {
		super();
		this.pNo = pNo;
		this.pName = pName;
		this.pPrice = pPrice;
		this.pWriter = pWriter;
		this.pRegDate = pRegDate;
		this.pDetail = pDetail;
		this.pPublisher = pPublisher;
		this.pType = pType;
		this.pFile = pFile;
	}
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpPrice() {
		return pPrice;
	}
	public void setpPrice(String pPrice) {
		this.pPrice = pPrice;
	}
	public String getpWriter() {
		return pWriter;
	}
	public void setpWriter(String pWriter) {
		this.pWriter = pWriter;
	}
	public Date getpRegDate() {
		return pRegDate;
	}
	public void setpRegDate(Date pRegDate) {
		this.pRegDate = pRegDate;
	}
	public String getpDetail() {
		return pDetail;
	}
	public void setpDetail(String pDetail) {
		this.pDetail = pDetail;
	}
	public String getpPublisher() {
		return pPublisher;
	}
	public void setpPublisher(String pPublisher) {
		this.pPublisher = pPublisher;
	}
	public String getpType() {
		return pType;
	}
	public void setpType(String pType) {
		this.pType = pType;
	}
	public String getpFile() {
		return pFile;
	}
	public void setpFile(String pFile) {
		this.pFile = pFile;
	}
	@Override
	public String toString() {
		return "Product [pNo=" + pNo + ", pName=" + pName + ", pPrice=" + pPrice + ", pWriter=" + pWriter
				+ ", pRegDate=" + pRegDate + ", pDetail=" + pDetail + ", pPublisher=" + pPublisher + ", pType=" + pType
				+ ", pFile=" + pFile + "]";
	}
	
	
}
