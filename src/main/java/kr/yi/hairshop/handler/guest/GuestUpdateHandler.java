package kr.yi.hairshop.handler.guest;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dao.LevelMapper;
import kr.yi.hairshop.dao.LevelMapperImpl;
import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.dto.Level;

public class GuestUpdateHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		GuestMapper gDao = new GuestMapperImpl();
		if(req.getMethod().equalsIgnoreCase("get")) {
			
			int gNo = Integer.parseInt(req.getParameter("gNo"));
			Guest guest = gDao.selectGuestByNo(gNo);
			System.out.println(guest);
			
			ObjectMapper om = new ObjectMapper();
			String data = om.writeValueAsString(guest);
			
			res.setContentType("application/json;charset=utf-8");
			PrintWriter out = res.getWriter();
			out.print(data);
			out.flush();
		}
		if(req.getMethod().equalsIgnoreCase("post")) {
			String gLGrade = req.getParameter("gLGrade");
			String gName = req.getParameter("gName");
			String gTel = req.getParameter("gTel");
			String gEmail = req.getParameter("gEmail");
			String gBirth = req.getParameter("gBirth");
			String gJoin = req.getParameter("gJoin");
			String gPoint = req.getParameter("gPoint");
			String gMemo = req.getParameter("gMemo");
			
			System.out.println(gLGrade);
			System.out.println(gName);
			System.out.println(gTel);
			System.out.println(gEmail);
			System.out.println(gBirth);
			System.out.println(gJoin);
			System.out.println(gPoint);
			System.out.println(gMemo);
		}
		return null;
	}

}
