package kr.yi.hairshop.handler.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.yi.hairshop.controller.CommandHandler;

public class FindIdPassHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")) {
			return "/WEB-INF/view/login/findIdPassForm.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")) {
			
			
			
			
			
			
			
			
			
			
			
			
		}
		return null;
	}

}
