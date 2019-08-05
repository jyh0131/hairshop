package kr.yi.hairshop.handler.reserve;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.DesignerMapper;
import kr.yi.hairshop.dao.DesignerMapperImpl;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dao.ProductMapper;
import kr.yi.hairshop.dao.ProductMapperImpl;
import kr.yi.hairshop.dao.WorkDialogMapper;
import kr.yi.hairshop.dao.WorkDialogMapperImpl;
import kr.yi.hairshop.dto.Designer;
import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.dto.Product;
import kr.yi.hairshop.dto.WorkDialog;

public class InsertReserveHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String gName=req.getParameter("gName");
		String gTel=req.getParameter("gTel");
		String reserveDate=req.getParameter("reserveDate");
		String reserveTime=req.getParameter("reserveTime");
		String reserveDesigner=req.getParameter("reserveDesigner");
		String reserveProduct=req.getParameter("reserveProduct");
		System.out.println(reserveDesigner);
		List<String> pName=new ArrayList<String>();
		
		for(int i=0; i<3; i++) {
			if(reserveProduct.indexOf(",")>0) {
				pName.add(reserveProduct.substring(0, reserveProduct.indexOf(",")));
				reserveProduct=reserveProduct.substring(reserveProduct.indexOf(",")+1,reserveProduct.length());
				continue;
			}else {
				pName.add(reserveProduct.substring(0, reserveProduct.length()));
				if(reserveProduct.indexOf(",")<0)
					break;
			}
		}
		Iterator<String> iter = pName.iterator();
		while(iter.hasNext()) {
			System.out.println(iter.next());
		}
		
		
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd hh:mm");
		String year=reserveDate.substring(0,reserveDate.indexOf("년")).trim();
		String month=reserveDate.substring(reserveDate.indexOf("년")+1,reserveDate.indexOf("월")).trim();
		String date=reserveDate.substring(reserveDate.indexOf("월")+1,reserveDate.indexOf("일")).trim();
		Date wReservTime=sf.parse(year+"-"+String.format("%02d", Integer.parseInt(month))+"-"+String.format("%02d", Integer.parseInt(date))+" "+reserveTime);
		
		WorkDialogMapper wDao = new WorkDialogMapperImpl();
		GuestMapper gDao = new GuestMapperImpl();
		DesignerMapper dDao = new DesignerMapperImpl();
		ProductMapper pDao = new ProductMapperImpl();
		
		
		String dName=reserveDesigner.substring(0,reserveDesigner.indexOf(" ")).trim();
		String dGrade=reserveDesigner.substring(reserveDesigner.indexOf(" "),reserveDesigner.length()).trim();
		Map<String, String> dMap=new HashMap<>();
		dMap.put("dName", dName);
		dMap.put("dGrade", dGrade);
		Designer dFind = dDao.selectByNameAndGrade(dMap);
		
		Map<String, String> gMap = new HashMap<String, String>();
		gMap.put("gName", gName);
		gMap.put("gTel", gTel);
		Guest oldguest=gDao.selectGuestByGNameGTel(gMap);
		if(oldguest!=null) {
			
		}
		else {
			Guest newGuest=new Guest();
			newGuest.setgTel(gTel);
			newGuest.setgName(gName);
			newGuest.setgJoin(new Date());
			int gNo=gDao.insertGuestByWorkMain(newGuest);
			if(gNo>0) {
				WorkDialog newWork=new WorkDialog();
				newWork.setwGNo(new Guest(gNo));
				newWork.setwReservTime(wReservTime);
				newWork.setwDNo(new Designer(dFind.getdNo()));
				int wNo=wDao.insertWorkNoGuestResWNo(newWork);
				int sumPrice=0;
				for(int i=0; i<pName.size(); i++) {
					Map<String, String> choiceMap=new HashMap<>();
					choiceMap.put("wNo", wNo+"");
					choiceMap.put("pName", pName.get(i));
					Product product=pDao.selectByName(pName.get(i));
					sumPrice+=product.getpPrice();
					wDao.insertChoice(choiceMap);
				}
				WorkDialog work = new WorkDialog();
				work.setwNo(wNo);
				work.setwPriceTotal(sumPrice);
				wDao.updateWorkPrice(work);
				req.setAttribute("reserved", true);
				req.setAttribute("gName", gName);
				req.setAttribute("gTel", gTel);
			}
			
		}
		return "/reserve/form.do";
	}

}
