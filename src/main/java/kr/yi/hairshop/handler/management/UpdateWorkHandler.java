package kr.yi.hairshop.handler.management;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.DesignerMapper;
import kr.yi.hairshop.dao.DesignerMapperImpl;
import kr.yi.hairshop.dao.WorkDialogMapper;
import kr.yi.hairshop.dao.WorkDialogMapperImpl;
import kr.yi.hairshop.dto.WorkDialog;

public class UpdateWorkHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
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
			
			WorkDialogMapper wDao = new WorkDialogMapperImpl();
			
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
			System.out.println(req.getParameter("upreserveTime"));
		}
		return null;
	}

}
