package kr.yi.hairshop.handler.login;

import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dto.Guest;

public class PassResetHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("post")) {
			Email emailSander = new Email();
			
			String id = req.getParameter("id");
			String email = req.getParameter("email");
			
			GuestMapper dao = new GuestMapperImpl();
			Guest dbGuest = dao.selectById(id);

			int passReset = 0;
			
			if(dbGuest.getgEmail().equals(email)) {
				
				Random generator = new Random();
				String newPass = Integer.toString(generator.nextInt(100000));
				dbGuest.setgPassword(newPass);
				
				passReset = dao.updateGuestPassword(dbGuest);
				emailSander.passSander(newPass);
				
				ObjectMapper om = new ObjectMapper();
				String data = om.writeValueAsString(passReset);
				
				res.setContentType("application/json;charset=utf-8");
				PrintWriter out = res.getWriter();
				out.print(data);
				out.flush();					
				
				
			}

		
		}
		
		
		
		
		return null;
	}

}
