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

public class DeleteWorkHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		int wNo = Integer.parseInt(req.getParameter("wNo"));
		
		
		
		WorkDialogMapper wDao = new WorkDialogMapperImpl();
		
		int result1=wDao.deleteChoice(wNo);
		int result2=0;
		if(result1>0) {
			result2=wDao.deleteWorkDialog(wNo);
		}
		
		
		ObjectMapper om = new ObjectMapper();
		String data = om.writeValueAsString(result1+result2);
		
		res.setContentType("application/json;charset=utf-8");
		PrintWriter out = res.getWriter();
		out.print(data);
		out.flush();
		
		return "/WEB-INF/view/management/gradeChangeForm.jsp";
	}

}
