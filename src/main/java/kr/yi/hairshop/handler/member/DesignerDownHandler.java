package kr.yi.hairshop.handler.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.DesignerMapper;
import kr.yi.hairshop.dao.DesignerMapperImpl;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dto.Designer;
import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.dto.Level;

public class DesignerDownHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {

//		1. Designer id로 불러오기
//		2. Designer 기반으로 guest 생성
//		3. Designer 삭제(gSecession set)
//		4. guest insert

		String id = req.getParameter("id");
		
		GuestMapper gDao = new GuestMapperImpl();
		DesignerMapper dDao = new DesignerMapperImpl();
		
		Designer des = dDao.selelctDesignerById(id);
		Guest guest = new Guest();
		
		guest.setgId(des.getdId());
		guest.setgPassword(des.getdPassword());
		guest.setgLGrade(new Level("브론즈"));
		guest.setgName(des.getdName());
		guest.setgTel(des.getdTel());
		guest.setgBirth(des.getdBirth());
		guest.setgJoin(des.getdJoin());
		guest.setgMemo("회사다녔던사람");
		
		int result = dDao.deleteDesigner(des.getdNo());
		result += gDao.insertGuest(guest);
		
		System.out.println("강등결과는 "+result);
		
		ObjectMapper om = new ObjectMapper();
		String data = om.writeValueAsString(result); // json string으로 변환
		
		res.setContentType("application/json;charset=utf-8");
		PrintWriter out = res.getWriter();
		out.print(data);
		out.flush();
		
		return null;
	}

}
