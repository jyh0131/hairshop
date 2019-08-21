package kr.yi.hairshop.handler.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.dto.User;

public class MypageHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")) {
			
			HttpSession session = req.getSession(false);
			User user = (User) session.getAttribute("Auth");
			
			String id = user.getuId();

			GuestMapper dao = new GuestMapperImpl();
			Guest guest = dao.selectById(id);

			GuestMapper gDao = new GuestMapperImpl();
			guest = gDao.selectById(id);
			//System.out.println(guest.getgLGrade().getlGrade());
			req.setAttribute("guest", guest);

			return "/WEB-INF/view/member/mypageForm.jsp";
			
		}else if(req.getMethod().equalsIgnoreCase("post")) {
			
			
			
			
			
			
			
			return "/WEB-INF/view/member/mypageForm.jsp";
		}
		
		return null;
	}

}
