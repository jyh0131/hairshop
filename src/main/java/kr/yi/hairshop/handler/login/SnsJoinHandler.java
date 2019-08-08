package kr.yi.hairshop.handler.login;

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
			System.out.println("실행파일 :SnsJoinHandler.java > get으로 왔다간다");
			return "/WEB-INF/view/login/snsJoinForm.jsp";
		}else if (req.getMethod().equalsIgnoreCase("post")) {
			System.out.println("sns 회원가입을 실행 중이다");
			System.out.println("실행파일 :SnsJoinHandler.java > post으로 왔다");
			
			String id = req.getParameter("snsId");
			String name = req.getParameter("snsName");
			String birth = req.getParameter("birth");
			SimpleDateFormat sDate = new SimpleDateFormat("yyyy-MM-dd");
			Date birthDate = sDate.parse(birth);
			String email = req.getParameter("snsEmail");
			String tel = req.getParameter("tel");

			System.out.println("**************************************");
			System.out.println("회원가입 작업 여기에서 멈춤");
			System.out.println("**************************************");
			Guest guest = new Guest();
			guest.setgId(id);
			guest.setgName(name);
			guest.setgBirth(birthDate);
			guest.setgEmail(email);
			guest.setgTel(tel);
			GuestMapper gDao = new GuestMapperImpl();
			int gNo = gDao.insertByNaver(guest);
			
			Snsinfo snsinfo = new Snsinfo();
			snsinfo.setSnsNo(gNo);
			snsinfo.setSnsId(id);
			snsinfo.setSnsType("login");
			snsinfo.setSnsName("naver");
			snsinfo.setSnsProfile("무엇을?");
			snsinfo.setSnsConnecteDate(new Date());
			
			SnsinfoMapper sDao = new SnsinfoMapperImpl();
			int result = sDao.insertSnsinfo(snsinfo);
			
			System.out.println("실행파일 :SnsJoinHandler.java > post로 와서 guest, snsinfo 생성 했는 지 확인 하자");
			System.out.println("guest가 나오는가? "+guest);
			System.out.println("snsinfo가 나오는가? "+snsinfo);
			
			return "/WEB-INF/view/login/loginForm.jsp";
		}
		
		return null;
		
	}

}
