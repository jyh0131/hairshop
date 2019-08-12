package kr.yi.hairshop.handler.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.yi.hairshop.controller.CommandHandler;

public class MypageHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")) {
			

			
			
			return "/WEB-INF/view/member/mypageForm.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")) {
			
			
			
			
			
			
			
			return "/WEB-INF/view/member/mypageForm.jsp";
		}
		
		return null;
	}

}
