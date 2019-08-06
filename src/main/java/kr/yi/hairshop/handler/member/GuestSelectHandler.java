package kr.yi.hairshop.handler.member;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dto.Guest;

public class GuestSelectHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")) {
			return "/WEB-INF/view/management/gradeChange.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")) {
			
			String name = req.getParameter("name");
			
			GuestMapper dao = new GuestMapperImpl();
			List<Guest> list = dao.selectGuestBygName(name);
			
			ObjectMapper om = new ObjectMapper();
			String data = om.writeValueAsString(list); // json string으로 변환
			
			res.setContentType("application/json;charset=utf-8");
			PrintWriter out = res.getWriter();
			out.print(data);
			out.flush();
		}
		
		return null;
	}

}
