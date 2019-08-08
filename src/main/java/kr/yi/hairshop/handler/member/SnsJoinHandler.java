package kr.yi.hairshop.handler.member;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dao.SnsinfoMapper;
import kr.yi.hairshop.dao.SnsinfoMapperImpl;
import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.dto.Snsinfo;

public class SnsJoinHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")) {
			System.out.println("get으로 왔다간다");
			return "/WEB-INF/view/snsJoinForm.jsp";
		}else if (req.getMethod().equalsIgnoreCase("post")) {

			System.out.println("post으로 왔다");
			
			String id = req.getParameter("snsId");
			String name = req.getParameter("snsName");
			String birth = req.getParameter("snsBirthday");
			SimpleDateFormat sDate = new SimpleDateFormat("yyyy-MM-dd");
			Date birthDate = sDate.parse(birth);
			String email = req.getParameter("snsEmail");
			String tel = req.getParameter("tel");
		
			Guest guest = new Guest();
			guest.setgId(id);
			guest.setgName(name);
			guest.setgBirth(birthDate);
			guest.setgEmail(email);
			guest.setgTel(tel);
			GuestMapper gDao = new GuestMapperImpl();
			int gNo = gDao.insertByNaver(guest);
			
			Snsinfo s = new Snsinfo();
			s.setSnsNo(gNo);
			s.setSnsId(id);
			s.setSnsType("login");
			s.setSnsName("naver");
			s.setSnsProfile("무엇을?");
			s.setSnsConnecteDate(new Date());
			
			SnsinfoMapper sDao = new SnsinfoMapperImpl();
			int result = sDao.insertSnsinfo(s);
			
			return "/WEB-INF/view/member/loginForm.jsp";
		}
		
		return null;
		
	}

}
