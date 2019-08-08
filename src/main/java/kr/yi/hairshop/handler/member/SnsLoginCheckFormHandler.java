package kr.yi.hairshop.handler.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.dto.User;

public class SnsLoginCheckFormHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")) {
			System.out.println("실행파일 > SnsLoginCheckFormHandler : get으로 왔다 (로그인 때문에)");
			
			return "/WEB-INF/view/snsLoginCheckForm.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")) {
			
			String id = req.getParameter("id");
			System.out.println("실행파일 > SnsLoginCheckFormHandler : post로 왔다 ("+id+")아이디도 가지고 오는지 확인한다 ");
			
			
			GuestMapper dao = new GuestMapperImpl();			
			Guest guest = dao.selectById(id);
			
			if(guest != null) {
				HttpSession session = req.getSession();
				User user = new User(guest.getgNo(), guest.getgName(), guest.getgId(), false); //false 손님
				session.setAttribute("Auth", user);
				
			}else {
				return "/WEB-INF/view/joinServiceCheck.jsp";
			}
			
		}
		
		
		return "/";
	}

}
