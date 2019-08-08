package kr.yi.hairshop.handler.management;

import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.WorkDialogMapper;
import kr.yi.hairshop.dao.WorkDialogMapperImpl;

public class WorkCompleteHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		int wNo=Integer.parseInt(req.getParameter("wNo"));
		
		WorkDialogMapper wDao = new WorkDialogMapperImpl();
		int result=wDao.updateWorkCompleteTimeBywNo(wNo);
		
		ObjectMapper om = new ObjectMapper();
		String data = om.writeValueAsString(result);
		
		res.setContentType("application/json;charset=utf-8");
		PrintWriter out = res.getWriter();
		out.print(data);
		out.flush();
		
		return null;
	}

}
