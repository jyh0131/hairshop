package kr.yi.hairshop.handler.management;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.WorkDialogMapper;
import kr.yi.hairshop.dao.WorkDialogMapperImpl;
import kr.yi.hairshop.dto.WorkDialog;

public class ChartHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd");
		
		WorkDialogMapper wDao = new WorkDialogMapperImpl();
		if(req.getMethod().equalsIgnoreCase("get")) {
			return "/WEB-INF/view/management/chart.jsp";
		}
		else if(req.getMethod().equalsIgnoreCase("post")) {
			String flag = req.getParameter("flag");
			String year = req.getParameter("year");
			String monthStr = req.getParameter("month");
			int month=-1;
			if(monthStr!=null) {
				month = Integer.parseInt(req.getParameter("month"));
			}
			
			
			if(flag!=null&&flag.equals("고객 매출금액 년별")) {
				int lSize=Integer.parseInt(req.getParameter("lSize"));
				int lStart=Integer.parseInt(req.getParameter("lStart"));
				
				
				Map<String, Object> map = new HashMap<String, Object>();
				
				Date date = new Date();
				
				String dStart = year+"-01-01";
				String dEnd = year+"-12-31";
				
				System.out.println("lStart:"+lStart);
				System.out.println("lSize:"+lSize);
				
				map.put("dStart", dStart);
				map.put("dEnd", dEnd);
				map.put("lStart", lStart);
				map.put("lSize", lSize);
				
				List<WorkDialog> wList=wDao.selectGPriceLimit(map);
				
				System.out.println(wList.size());
				
				ObjectMapper om = new ObjectMapper();
				String data = om.writeValueAsString(wList);
				
				res.setContentType("application/json;charset=utf-8");
				PrintWriter out = res.getWriter();
				out.print(data);
				out.flush();
				
			}
			else if(flag!=null&&flag.equals("고객 매출금액 월별")) {
				int lastArray[] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
				
				int lSize=Integer.parseInt(req.getParameter("lSize"));
				int lStart=Integer.parseInt(req.getParameter("lStart"));
				
				
				Map<String, Object> map = new HashMap<String, Object>();
				
				Date date = new Date();
				
				String dStart = year+"-"+month+"-01";
				String dEnd = year+"-"+month+"-"+lastArray[month-1];
				
				map.put("dStart", dStart);
				map.put("dEnd", dEnd);
				map.put("lStart", lStart);
				map.put("lSize", lSize);
				
				List<WorkDialog> wList=wDao.selectGPriceLimit(map);
				
				System.out.println(wList.size());
				
				ObjectMapper om = new ObjectMapper();
				String data = om.writeValueAsString(wList);
				
				res.setContentType("application/json;charset=utf-8");
				PrintWriter out = res.getWriter();
				out.print(data);
				out.flush();
				
			}
			else {
				List<WorkDialog> wList=wDao.selectByAll();
				
				ObjectMapper om = new ObjectMapper();
				String data = om.writeValueAsString(wList);
				
				res.setContentType("application/json;charset=utf-8");
				PrintWriter out = res.getWriter();
				out.print(data);
				out.flush();
			
			}
			
		}
		
		return null;
	}

}
