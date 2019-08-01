package kr.yi.hairshop.model;

public class Product {
	private int pPrice;
	private String pName;
	private String pDivision;


	public Product() {
		// TODO Auto-generated constructor stub
	}


	public Product(int pPrice, String pName, String pDivision) {
		super();
		this.pPrice = pPrice;
		this.pName = pName;
		this.pDivision = pDivision;
	}


	public int getpPrice() {
		return pPrice;
	}


	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}


	public String getpName() {
		return pName;
	}


	public void setpName(String pName) {
		this.pName = pName;
	}


	public String getpDivision() {
		return pDivision;
	}


	public void setpDivision(String pDivision) {
		this.pDivision = pDivision;
	}


	@Override
	public String toString() {
		return "Product [pPrice=" + pPrice + ", pName=" + pName + ", pDivision=" + pDivision + "]";
	}
	
	
	
	
}
