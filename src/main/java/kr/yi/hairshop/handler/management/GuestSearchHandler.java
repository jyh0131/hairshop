package kr.yi.hairshop.handler.management;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.WorkDialogMapper;
import kr.yi.hairshop.dao.WorkDialogMapperImpl;
import kr.yi.hairshop.dto.WorkDialog;

public class GuestSearchHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String gName=req.getParameter("gName");
		System.out.println(gName);
		WorkDialogMapper wDao=new WorkDialogMapperImpl();
		
		List<WorkDialog> wList=wDao.selectBygName(gName);
		System.out.println(wList.size());
		
		ObjectMapper om = new ObjectMapper();
		String data = om.writeValueAsString(wList);
		
		res.setContentType("application/json;charset=utf-8");
		PrintWriter out = res.getWriter();
		out.print(data);
		out.flush();
		
		return null;
	}

}
