package kr.yi.hairshop.handler.login;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.dto.Level;

public class JoinHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")) {
			return "/WEB-INF/view/login/joinForm.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")) {
			SimpleDateFormat sDate = new SimpleDateFormat("yyyy-MM-dd");
			
			String id = req.getParameter("realid");
			String password = req.getParameter("password");
			String name = req.getParameter("name");
			String tel = req.getParameter("tel");
			String email = req.getParameter("email");
			
			String birth = req.getParameter("birth");
			Date birthDate;
			if(birth.isEmpty() != true) {
				birthDate = new Date();
			}else {
				birthDate = sDate.parse(birth);
			}

			Guest guest = new Guest();
			guest.setgId(id);
			guest.setgPassword(password);
			guest.setgLGrade(new Level("브론즈")); //기본이 브론즈
			guest.setgName(name);
			guest.setgTel(tel);
			guest.setgEmail(email);
			guest.setgBirth(birthDate);				

			guest.setgJoin(new Date());
			guest.setgPoint(5000); //웹회원가입 포인트 5000원
			
			HttpSession session = req.getSession(false);
			String service3 = (String) session.getAttribute("service3");
			
			if(service3 != null) {
				guest.setgMemo("온라인 회원가입+광고동의");
				int po = guest.getgPoint();
				po = po + 5000;
				guest.setgPoint(po); // 광고 동의 포인트
				System.out.println(guest.getgPoint()+"포인트가 잘들어가나");
				
			}else {
				guest.setgMemo("온라인 회원가입+광고X");
			}
			
			GuestMapper dao = new GuestMapperImpl();
			int result = dao.insertGuest(guest);
			if(result==1) {
				System.out.println("회원가입이 정상적으로 작동하였습니다");
				
			}else {
				System.out.println("회원가입 에러에러에러");
			}
			
			res.sendRedirect(req.getContextPath()+"/login/joinSuccess.do");
			return null;
			
		}
		return null;
	}

}
