package kr.yi.hairshop.handler.member;

import java.io.PrintWriter;
import java.util.Date;

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

public class GuestToDesignerModifyHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {

//		1. guest id로 불러오기
//		2. id로 designer 검색해서 이전정보가 있는지 확인
//			2.1 정보가 있으면 >> 복구
//			2.2 정보가 없으면 >> guest 기반으로 Designer 생성
//		3. guest 삭제(gSecession set)
		
		String nameId = req.getParameter("nameId");
		int index = nameId.indexOf("(");
		String id = nameId.substring(index+1);
		id = id.substring(0, id.length()-1); //ajax로 넘어온 String에서 ID만 잘라내기
		
		GuestMapper gDao = new GuestMapperImpl();
		DesignerMapper dDao = new DesignerMapperImpl();
		
		Designer designer = dDao.selelctDesignerById(id);
		Guest guest = gDao.selectById(id);
		System.out.println("승급전 검색된 회원 정보 "+guest);

		int result = 0;
		
		if(designer == null) {
			designer = new Designer();
			designer.setdId(guest.getgId());
			designer.setdName(guest.getgName());
			designer.setdPassword(guest.getgPassword());
			designer.setdTel(guest.getgTel());
			designer.setdBirth(guest.getgBirth());
			designer.setdAddr(guest.getgPostcode());
			designer.setdAddr2(guest.getgRoadAddr());
			designer.setdAddr3(guest.getgDetailAddr());
			designer.setdJoin(new Date());
			designer.setdGrade("인턴");
			designer.setdMemo("승급디자이너");
			
			result = dDao.insertDesigner(designer); // 생성된 디자이너를 삽입
		}else {
			designer.setdSecession(false);
			result = dDao.updateDesigner(designer); // 이전에 삭제 되었던 디자이너 복구
			
		}
		
		//승급된 회원 삭제
		result = gDao.deleteGuest(guest);
		
		if(result == 2) {
			System.out.println("회원삭제, 신규 디자이너 생성(회원기반)이 완료 되었다");	
		}		
		
		ObjectMapper om = new ObjectMapper();
		String data = om.writeValueAsString(designer); // json string으로 변환
		
		res.setContentType("application/json;charset=utf-8");
		PrintWriter out = res.getWriter();
		out.print(data);
		out.flush();
		
		return null;
		
		
	}

}
