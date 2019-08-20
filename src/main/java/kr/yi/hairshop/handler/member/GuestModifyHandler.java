package kr.yi.hairshop.handler.member;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.dto.User;

public class GuestModifyHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")) {
			HttpSession session = req.getSession();
			User user = (User) session.getAttribute("Auth");

			GuestMapper dao = new GuestMapperImpl();
			Guest guest = dao.selectById(user.getuId());
			
			req.setAttribute("guest", guest);
			
			return "/WEB-INF/view/member/guestModifyForm.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")) {

			HttpSession session = req.getSession();
			User user = (User) session.getAttribute("Auth");

			GuestMapper dao = new GuestMapperImpl();
			Guest guest = dao.selectById(user.getuId());

			String tel = req.getParameter("tel");
			String email = req.getParameter("email");
			String birth = req.getParameter("birth");
			SimpleDateFormat sDate = new SimpleDateFormat("yyyy-MM-dd");			
			Date birthDate = sDate.parse(birth);
			String postcode = req.getParameter("postcode");
			String roadAddr = req.getParameter("roadAddr");
			String detailAddr = req.getParameter("detailAddr");
			
			guest.setgPostcode(postcode);
			guest.setgRoadAddr(roadAddr);
			guest.setgDetailAddr(detailAddr);
			
			guest.setgTel(tel);
			guest.setgEmail(email);
			guest.setgBirth(birthDate);
			
			int result = dao.updateGuest3(guest);
			if(result == 1)
				System.out.println("내정보 수정이 잘되었다");
			
			res.sendRedirect(req.getContextPath()+"/member/passCheck.do");
			return null;
		}
		return null;
	}

}
