package kr.yi.hairshop.handler.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.dto.User;

public class GuestPassModifyHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {

		if(req.getMethod().equalsIgnoreCase("get")) {
			HttpSession session = req.getSession();
			User user = (User) session.getAttribute("Auth");

			GuestMapper dao = new GuestMapperImpl();
			Guest guest = dao.selectById(user.getuId());
			
			req.setAttribute("guest", guest);
			
			return "/WEB-INF/view/member/guestPassModifyForm.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")) {
			
			HttpSession session = req.getSession();
			User user = (User) session.getAttribute("Auth");
			
			String id = user.getuId(); //auth에 저장된 id
			String pass = req.getParameter("newPassword"); //입력된 pass 

			GuestMapper dao = new GuestMapperImpl();
			Guest guest = dao.selectById(id);
			
			guest.setgPassword(pass);
			
			int result = dao.updateGuestPassword(guest);
			if(result == 1)
				System.out.println("비밀번호 수정이 잘되었다");
			
			res.sendRedirect(req.getContextPath()+"/login/joinSeccess.do");
			return null;
			
		}
		
		return null;
	}

}
