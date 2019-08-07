package kr.yi.hairshop.handler.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.dto.Level;

public class GuestGradeModifyHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {

		String nameId = req.getParameter("nameId");
		String id = nameId.substring(4, nameId.length()-1);
		String grade = req.getParameter("grade");
		
		GuestMapper dao = new GuestMapperImpl();
		Guest guest = dao.selectById(id);
		
		guest.setgLGrade(new Level(grade));
		
		int result = dao.updateGuest(guest);
		
		
		ObjectMapper om = new ObjectMapper();
		String data = om.writeValueAsString(result); // json string으로 변환
		
		res.setContentType("application/json;charset=utf-8");
		PrintWriter out = res.getWriter();
		out.print(data);
		out.flush();
		
		return null;
	}

}
