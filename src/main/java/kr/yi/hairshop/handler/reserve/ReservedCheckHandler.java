package kr.yi.hairshop.handler.reserve;

import java.io.PrintWriter;
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

public class ReservedCheckHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String gName = req.getParameter("gName");
		String gTel = req.getParameter("gTel");
		
		WorkDialogMapper wDao = new WorkDialogMapperImpl();
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("gName", gName);
		map.put("gTel", gTel);
		
		List<WorkDialog> wList=wDao.selectBygNameAndgTel(map);
		
		ObjectMapper om = new ObjectMapper();
		String data = om.writeValueAsString(wList);
		
		res.setContentType("application/json;charset=utf-8");
		PrintWriter out = res.getWriter();
		out.print(data);
		out.flush();
		
		return null;
	}
	
}
