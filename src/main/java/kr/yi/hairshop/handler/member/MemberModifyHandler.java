package kr.yi.hairshop.handler.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.dto.User;

public class MemberModifyHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")) {
			HttpSession session = req.getSession();
			User user = (User) session.getAttribute("Auth");
			System.out.println("aaaaaaaaaaaaaaaaaaaaaaaa");
			GuestMapper dao = new GuestMapperImpl();
			Guest guest = dao.selectById(user.getuId());
			
			req.setAttribute("guest", guest);
			
			return "/WEB-INF/view/member/memeberModifyForm.jsp";
		}
		return null;
	}

}
