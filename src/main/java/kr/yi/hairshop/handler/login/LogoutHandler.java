package kr.yi.hairshop.handler.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.yi.hairshop.controller.CommandHandler;

public class LogoutHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {

		HttpSession session = req.getSession(false);
		session.setAttribute("Auth", null);
		
		return "/WEB-INF/view/login/loginForm.jsp";
	}

}
