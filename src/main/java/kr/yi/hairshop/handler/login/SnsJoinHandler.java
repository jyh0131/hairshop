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
import kr.yi.hairshop.dto.Level;
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

			Guest guest = new Guest();
			guest.setgId(id);
			guest.setgLGrade(new Level("브론즈"));
			guest.setgName(name);
			guest.setgTel(tel);
			guest.setgEmail(email);
			guest.setgBirth(birthDate);
			guest.setgJoin(new Date());		
			guest.setgPoint(0); //네이버 회원가입은 포인드 0

			guest.setgMemo("네이버 회원가입");
/*			String serivce3 = req.getParameter("serivce3");
			if(serivce3 != null) {
				guest.setgMemo("네이버 회원가입+광고동의");
			}else {
				guest.setgMemo("네이버 회원가입+광고X");
			}
*/			
			GuestMapper gDao = new GuestMapperImpl();
			int gNo = gDao.insertByNaver(guest);
			
			Snsinfo snsinfo = new Snsinfo();
			snsinfo.setSnsGuestNo(gNo);
			snsinfo.setSnsId(id);
			snsinfo.setSnsType("Naver Join");
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
