package kr.yi.hairshop.handler.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.dto.User;

public class NaverLoginHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {

		String id = req.getParameter("id");
		
		GuestMapper dao = new GuestMapperImpl();
		Guest guest = dao.selectById(id);			
		
		if(guest == null) { //회원없음
			req.setAttribute("noMember", true);
			JOptionPane.showMessageDialog(null, "안되요");
			return "/WEB-INF/view/member/home.jsp";
		}
		
		//로그인 된 사람의 정가 담긴 class 생성후 sesseion에 저장
		User user = new User(guest.getgNo(), guest.getgName(), guest.getgId(), false); //false 손님
		
		HttpSession session = req.getSession();
		session.setAttribute("Auth", user);		
		
		
		return "/WEB-INF/view/member/mypageForm.jsp";
	}

}
