package kr.yi.hairshop.model;

public class Cart {
	private int cNo;
	private int cCount;
	private int uNo;
	private Product product;
	
	
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Cart(int cCount, int uNo, int pNo) {
		this.cCount = cCount;
		this.uNo = uNo;
		
		Product p = new Product();
		p.setpNo(pNo);
		this.product = p;
	}

	public Cart(int cNo, int cCount, int uNo, Product product) {
		super();
		this.cNo = cNo;
		this.cCount = cCount;
		this.uNo = uNo;
		this.product = product;
	}


	public int getcNo() {
		return cNo;
	}


	public void setcNo(int cNo) {
		this.cNo = cNo;
	}


	public int getcCount() {
		return cCount;
	}


	public void setcCount(int cCount) {
		this.cCount = cCount;
	}


	public int getuNo() {
		return uNo;
	}


	public void setuNo(int uNo) {
		this.uNo = uNo;
	}


	public Product getProduct() {
		return product;
	}


	public void setProduct(Product product) {
		this.product = product;
	}


	@Override
	public String toString() {
		return "Cart [cNo=" + cNo + ", cCount=" + cCount + ", uNo=" + uNo + ", product=" + product + "]";
	}
	
	
	
}
