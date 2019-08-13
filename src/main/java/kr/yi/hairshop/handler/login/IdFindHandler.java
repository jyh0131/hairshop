package kr.yi.hairshop.handler.login;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dto.Guest;

public class IdFindHandler  implements CommandHandler{

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		
		if(req.getMethod().equalsIgnoreCase("post")) {
			Email emailSander = new Email();
			
			String e = req.getParameter("email");
			
			GuestMapper dao = new GuestMapperImpl();
			Guest dbGuest = dao.selectGuestByEmail(e);
			System.out.println(dbGuest);
			int checkEmail=0;

			if(dbGuest == null) {
				checkEmail = 0; //실패
			}else {
				checkEmail = 1; //성공
				emailSander.idSander(dbGuest.getgId());				
			}
			
			ObjectMapper om = new ObjectMapper();
			String data = om.writeValueAsString(checkEmail);
			
			res.setContentType("application/json;charset=utf-8");
			PrintWriter out = res.getWriter();
			out.print(data);
			out.flush();					
		
		}
		
		
		
		
		return null;
	}

}
