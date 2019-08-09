package kr.yi.hairshop.handler.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.dto.User;

public class GuestPassModifyCheckHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {

		
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("Auth");
		
		String id = user.getuId(); //auth에 저장된 id
		String pass = req.getParameter("nowPassword"); //입력된 pass 

		GuestMapper dao = new GuestMapperImpl();
		Guest guest = dao.selectById(id);
		
		if(guest.getgPassword().equals(pass)) {
			
			int result = 1; // 비번이 맞으면 
			ObjectMapper om = new ObjectMapper();
			String data = om.writeValueAsString(result); // json string으로 변환
			
			res.setContentType("application/json;charset=utf-8");
			PrintWriter out = res.getWriter();
			out.print(data);
			out.flush();
			return null;
			
		}else {
			int result = 0; // 다르면
			ObjectMapper om = new ObjectMapper();
			String data = om.writeValueAsString(result); // json string으로 변환
			
			res.setContentType("application/json;charset=utf-8");
			PrintWriter out = res.getWriter();
			out.print(data);
			out.flush();
			
			return null;
		}		
		
	}

}
