package kr.yi.hairshop.handler.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import kr.yi.hairshop.controller.CommandHandler;

public class JoinServiceCheckHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")) {
			return "/WEB-INF/view/joinServiceCheck.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")) {
			
			String service1 = req.getParameter("service1");
			String service2 = req.getParameter("service2");
			String service3 = req.getParameter("service3");
			HttpSession session = req.getSession(false);
			
			session.setAttribute("service3", service3);
			res.sendRedirect(req.getContextPath()+"/join.do");
			
			
			return null;
		}
		return null;


			
			

	}

}
