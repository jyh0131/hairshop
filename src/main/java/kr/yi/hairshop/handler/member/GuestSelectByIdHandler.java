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

public class GuestSelectByIdHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")) {
			return "/WEB-INF/view/management/gradeChange.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")) {
			
			String id = req.getParameter("id");
			
			GuestMapper dao = new GuestMapperImpl();
			Guest guest = dao.selectById(id);
			int result = 0;
			
			if(guest != null) { // 1 = 같은 아이디가 있다, 0 아이디가 없다
				result = 1;
				System.out.println("입력한 아이디가 있다 계속해라");
			}else {
				result = 0;
				System.out.println("아이디가 없다");
			}
			  
			ObjectMapper om = new ObjectMapper();
			String data = om.writeValueAsString(result); // json string으로 변환
			
			res.setContentType("application/json;charset=utf-8");
			PrintWriter out = res.getWriter();
			out.print(data);
			out.flush();
		}
		
		return null;
	}

}
