package kr.yi.hairshop.dto;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class WorkDialog {
	private int wNo;
	private Date wReservTime;
	private Date wWorkTime;
	private int wPriceTotal;
	private Event wEName;
	private Designer wDNo;
	private Guest wGNo;
	private List<Product> productList;

	public WorkDialog() {
		// TODO Auto-generated constructor stub
	}

	
	
	public WorkDialog(int wNo, Date wReservTime, Date wWorkTime, int wPriceTotal, Event wEName, Designer wDNo,
			Guest wGNo, List<Product> productList) {
		this.wNo = wNo;
		this.wReservTime = wReservTime;
		this.wWorkTime = wWorkTime;
		this.wPriceTotal = wPriceTotal;
		this.wEName = wEName;
		this.wDNo = wDNo;
		this.wGNo = wGNo;
		this.productList = productList;
	}

	public WorkDialog(int wPriceTotal, Guest wGNo) {
		this.wPriceTotal = wPriceTotal;
		this.wGNo = wGNo;
	}



	public int getwNo() {
		return wNo;
	}

	public void setwNo(int wNo) {
		this.wNo = wNo;
	}

	public Date getwWorkTime() {
		return wWorkTime;
	}

	public void setwWorkTime(Date wWorkTime) {
		this.wWorkTime = wWorkTime;
	}

	public Date getwReserveTime() {
		return wReservTime;
	}

	public void setwReservTime(Date wReservTime) {
		this.wReservTime = wReservTime;
	}

	public int getwPriceTotal() {
		return wPriceTotal;
	}

	public void setwPriceTotal(int wPriceTotal) {
		this.wPriceTotal = wPriceTotal;
	}

	public Event getwEName() {
		return wEName;
	}

	public void setwEName(Event wEName) {
		this.wEName = wEName;
	}

	public Designer getwDNo() {
		return wDNo;
	}

	public void setwDNo(Designer wDNo) {
		this.wDNo = wDNo;
	}

	public Guest getwGNo() {
		return wGNo;
	}

	public void setwGNo(Guest wGNo) {
		this.wGNo = wGNo;
	}
	

	public List<Product> getProductList() {
		return productList;
	}

	public void setProductList(List<Product> productList) {
		this.productList = productList;
	}

	

	public WorkDialog(int wNo,  Guest wGNo,int wPriceTotal) {
		this.wNo = wNo;
		this.wPriceTotal = wPriceTotal;
		this.wGNo = wGNo;
	}

	@Override
	public String toString() {
		return String.format(
				"WorkDialog [wNo=%s, wReservTime=%s, wWorkTime=%s, wPriceTotal=%s, wEName=%s, wDNo=%s, wGNo=%s, productList=%s]",
				wNo, wReservTime, wWorkTime, wPriceTotal, wEName, wDNo, wGNo, productList);
	}
	
	public Object[] toArray() {
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		return new Object[] { wNo, date.format(wWorkTime), date.format(wReservTime), wPriceTotal, wEName, wDNo, wGNo };
	}
	
	public Object[] toArrayFiveJoinMap() { //다영
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		String worktime="";
		if(wWorkTime!=null) //예외처리: 널이 아닐때만 일하라구
			worktime = date.format(wWorkTime);
		
		String pName="";
		String pPrice="";
		for(int i=0; i<productList.size();i++) {
			System.out.println(productList.get(i).getpPrice());
			System.out.println(productList.get(i).getpName());
			if(i!=productList.size()-1) {				
				pName+=productList.get(i).getpName()+",";
				pPrice+=productList.get(i).getpPrice()+",";
			}else {
				pName+=productList.get(i).getpName();
				pPrice+=productList.get(i).getpPrice();
			}
		}
		
		return new Object[] { worktime, pName, wGNo.getgName(),  pPrice};
	}
	
	public Object[] toArrayReservDetail() {
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd hh:mm");
		DecimalFormat df = new DecimalFormat("###,###");
		String pName="";
		if(productList.size()!=0) {
			for(int i=0;i<productList.size();i++) {
				if(i!=productList.size()-1) {				
					pName+=productList.get(i).getpName()+",";
				}else {
					pName+=productList.get(i).getpName();
				}
			}
		}
		else {
			pName="미정";
		}
		
		String wWrok = "";
		if(wWorkTime == null) {
			wWrok = "작업전";
		}else {
			wWrok = (String) date.format(wWorkTime);
		}
		
		String eventstr="";
		if(wEName==null) {
			eventstr="일반";
		}else {
			eventstr=wEName.geteName();
		}
		String gradeNull="";
		if(wGNo.getgLGrade()!=null)
			gradeNull=wGNo.getgLGrade().getlGrade();
		
		
		
		return new Object[] { wNo, date.format(wReservTime), wDNo.getdName(), wDNo.getdGrade(), wGNo.getgName(), gradeNull, pName, eventstr, wPriceTotal, wWrok };
		
	}
	
	public Object[] toArrayNumberOfWork() { //다영:디자이너프레임에 작업횟수 어떻게 나오게 해?
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		return new Object[] { wNo, wPriceTotal };
	}
	
	public Object[] toArrayPriceTotal() { //총매출
		return new Object[] {wPriceTotal};
	}
}












