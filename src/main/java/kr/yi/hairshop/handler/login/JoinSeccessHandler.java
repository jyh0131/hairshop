package kr.yi.hairshop.handler.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.yi.hairshop.controller.CommandHandler;

public class JoinSeccessHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {

		return "/WEB-INF/view/login/loginSuccessForm.jsp";
	}

}
