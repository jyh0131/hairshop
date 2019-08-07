package kr.yi.hairshop.handler.management;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.DesignerMapper;
import kr.yi.hairshop.dao.DesignerMapperImpl;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dao.WorkDialogMapper;
import kr.yi.hairshop.dao.WorkDialogMapperImpl;
import kr.yi.hairshop.dto.Designer;
import kr.yi.hairshop.dto.Event;
import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.dto.Product;
import kr.yi.hairshop.dto.WorkDialog;

public class UpdateWorkHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		WorkDialogMapper wDao = new WorkDialogMapperImpl();
		if(req.getMethod().equalsIgnoreCase("get")) {
//			String gName=req.getParameter("gName");
//			String gTel=req.getParameter("gTel");
//			String reserveTime=req.getParameter("reserveTime");
//			String date=reserveTime.substring(0, reserveTime.indexOf(" ")).trim();
//			String time=reserveTime.substring(reserveTime.indexOf(" "),reserveTime.length()).trim();
//			int hour=Integer.parseInt(time.substring(time.indexOf(" "), time.indexOf(":")).trim());
//			if(reserveTime.indexOf("오후")>0 && hour!=12) {
//				System.out.println("오후");
//				time=time.substring(time.indexOf(" "), time.length()).trim();
//				hour =hour+12;
//				time=hour+time.substring(2, time.length());
//			}else {
//				System.out.println("오전");
//				time=time.substring(time.indexOf(" "), time.length()).trim();
//			}
//			
//			System.out.println(time);
//			DesignerMapper dDao = new DesignerMapperImpl();
//			dDao
			
			int wNo=Integer.parseInt(req.getParameter("wNo"));
			List<WorkDialog> wList=wDao.selectWDGECPjoinByWNo(wNo);
			ObjectMapper om = new ObjectMapper();
			String data = om.writeValueAsString(wList);
			
			res.setContentType("application/json;charset=utf-8");
			PrintWriter out = res.getWriter();
			out.print(data);
			out.flush();
		}
		if(req.getMethod().equalsIgnoreCase("post")) {
			int wNo = Integer.parseInt(req.getParameter("wNo"));
			int gNo = Integer.parseInt(req.getParameter("gNo"));
			String reserveTime = req.getParameter("upreserveTime");
			String reserveTime2 = req.getParameter("upreserveTime2");
			String gTel = req.getParameter("upgTel");
			String lGrade = req.getParameter("upgLGrade");
			int wPriceTotal = Integer.parseInt(req.getParameter("upwPriceTotal"));
			String workTime = req.getParameter("upworkTime");
			String workTime2 = req.getParameter("upworkTime2");
			String pName0=req.getParameter("pName0");
			String pName1=req.getParameter("pName1");
			String pName2=req.getParameter("pName2");
			String eName=req.getParameter("upeName");
			String dName=req.getParameter("updName");
			
			
			
			SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd hh:mm");
			List<Product> productList=new ArrayList<Product>();
			
			if(pName0!=null && !pName0.equals("")) {
				if(pName0.indexOf("(")>0)
					pName0=pName0.substring(0, pName0.indexOf("("));
				productList.add(new Product(pName0));
			}
			if(pName1!=null && !pName1.equals("")) {
				if(pName1.indexOf("(")>0)
					pName0=pName0.substring(0, pName1.indexOf("("));
				productList.add(new Product(pName1));
			}
			if(pName2!=null && !pName2.equals("")) {
				if(pName2.indexOf("(")>0)
					pName0=pName0.substring(0, pName2.indexOf("("));
				productList.add(new Product(pName2));
			}
			
			
			DesignerMapper dDao=new DesignerMapperImpl();
			Map<String, String> dMap = new HashMap<String, String>();
			dMap.put("dName", dName.substring(0,dName.indexOf(" ")).trim());
			dMap.put("dGrade", dName.substring(dName.indexOf(" "),dName.length()).trim());
			Designer designer=dDao.selectByNameAndGrade(dMap);
			Guest guest=new Guest(gNo);
			
			
			
			WorkDialog work = new WorkDialog(
					wNo,
					sf.parse(reserveTime+" "+reserveTime2),
					workTime!=null&&!workTime.equals("")&&workTime2!=null&&!workTime2.equals("")?sf.parse(workTime+" "+workTime2):null,
					wPriceTotal,
					new Event(eName.substring(0, eName.indexOf("("))),
					designer,
					guest,
					productList
					);
			
			int result1=wDao.updateWorkDialog(work);
			int result2=wDao.deleteChoice(wNo);
			int result3=0;
			
			for(int i=0; i<productList.size(); i++ ) {
				productList.get(i).getpName();
				Map<String, String> cMap = new HashMap<>();
				cMap.put("wNo", wNo+"");
				cMap.put("pName",productList.get(i).getpName());
				result3+=wDao.insertChoice(cMap);
			}
				
			
			List<Integer> success = new ArrayList<>();
			success.add(result1);
			success.add(result2);
			success.add(result3);
			
			ObjectMapper om = new ObjectMapper();
			String data = om.writeValueAsString(success);
			
			res.setContentType("application/json;charset=utf-8");
			PrintWriter out = res.getWriter();
			out.print(data);
			out.flush();
			
		}
		return null;
	}

}
