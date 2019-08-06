package kr.yi.hairshop.handler.member;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.dto.Level;
import kr.yi.hairshop.util.MyBatisSqlSessionFactory;

public class JoinHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")) {
			return "/WEB-INF/view/member/joinForm.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")) {
			
			String id = req.getParameter("id");
			String password = req.getParameter("password");
			String name = req.getParameter("name");
			String tel = req.getParameter("tel");
			String email = req.getParameter("email");
			String birth = req.getParameter("birth");
			
			SimpleDateFormat sDate = new SimpleDateFormat("yyyy-MM-dd");
			Date birthDate = sDate.parse(birth);

			Guest guest = new Guest();
			guest.setgId(id);
			guest.setgName(name);
			guest.setgPassword(password);
			guest.setgTel(tel);			
			guest.setgEmail(email);
			guest.setgBirth(birthDate);
			guest.setgJoin(new Date());
			guest.setgLGrade(new Level("브론즈")); //기본이 브론즈
			
			HttpSession session = req.getSession(false);
			
			String serivce3 = req.getParameter("serivce3");
			if(serivce3 != null) {
				guest.setgMemo("온라인 회원가입+광고동의");
			}else {
				guest.setgMemo("온라인 회원가입+광고X");
			}
			
			GuestMapper dao = new GuestMapperImpl();
			int result = dao.insertGuest(guest);
			
			return "/WEB-INF/view/member/loginForm.jsp";

			
		}
		return null;
	}

}
