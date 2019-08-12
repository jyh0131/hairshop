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
//		2. id로 guest를 검색해서 이전 회원 정보가 있는지 확인
//			2.1 회원정보가 있으면 >> 회원을 복구
//			2.2 회원정보가 없으면 >> Designer 기반으로 guest 생성
//		3. Designer 삭제(gSecession set)


		String id = req.getParameter("id");
		
		GuestMapper gDao = new GuestMapperImpl();
		DesignerMapper dDao = new DesignerMapperImpl();
		
		Designer designer = dDao.selelctDesignerById(id);
		Guest guest = gDao.selectById(designer.getdId());
		
		int result = 0;
		
		if(guest == null) { //동일한 id로 검색된 회원이 없을때
			
			guest = new Guest();
			guest.setgId(designer.getdId());
			guest.setgPassword(designer.getdPassword());
			guest.setgLGrade(new Level("브론즈"));
			guest.setgName(designer.getdName());
			guest.setgTel(designer.getdTel());
			guest.setgBirth(designer.getdBirth());
			guest.setgJoin(designer.getdJoin());
			guest.setgMemo("회사다녔던사람");
			
		}else {
			String memo = guest.getgMemo();
			guest.setgMemo(memo + ", 회사다녔던사람");
			guest.setgSecession(false); // 삭제 복구
			
			result = gDao.updateGuest(guest);
		}

		result += dDao.deleteDesigner(designer.getdNo());
		
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
