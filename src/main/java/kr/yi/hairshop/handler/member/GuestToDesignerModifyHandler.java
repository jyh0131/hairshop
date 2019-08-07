package kr.yi.hairshop.handler.member;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dto.Designer;
import kr.yi.hairshop.dto.Guest;

public class GuestToDesignerModifyHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		String nameId = req.getParameter("nameId");
		String id = nameId.substring(4, nameId.length()-1);
		
		GuestMapper dao = new GuestMapperImpl();
		Guest g = dao.selectById(id);
		
		Designer des = new Designer();
		des.setdId(g.getgId());
		des.setdName(g.getgName());
		des.setdPassword(g.getgPassword());
		des.setdTel(g.getgTel());
		des.setdBirth(g.getgBirth());
		des.setdJoin(new Date());
		des.setdMemo("승급디자이너");
		
		
		return null;
		
		
	}

}
