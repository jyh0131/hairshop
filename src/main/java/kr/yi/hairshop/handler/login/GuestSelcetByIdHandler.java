package kr.yi.hairshop.handler.login;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dto.Guest;

public class GuestSelcetByIdHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")) {
			return "/";
		}else if(req.getMethod().equalsIgnoreCase("post")) {
			
			String id = req.getParameter("id");
			String pass = req.getParameter("password");
			
			GuestMapper dao = new GuestMapperImpl();
			Guest guest = dao.selectById(id);
			int result = 0;
			
			if(guest != null) { // 1 = 같은 아이디가 있다, 0 아이디가 없다, 2 비번일 틀림
				String dbpass =  guest.getgPassword();
				
				if(pass.equals(dbpass)) {
					result = 1;
					System.out.println("아이디가 db에 있다");	
				}else{
					result = 2;
					System.out.println("아이디가 db에 있는데 비번이 다르다");
				}
			}else {
				result = 0;
				System.out.println("아이디가 db에 없다");
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
