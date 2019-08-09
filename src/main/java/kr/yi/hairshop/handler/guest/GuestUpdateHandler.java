package kr.yi.hairshop.handler.guest;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
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
			int gNo = Integer.parseInt(req.getParameter("gNo"));
			String gLGrade = req.getParameter("gLGrade");
			String gName = req.getParameter("gName");
			String gTel = req.getParameter("gTel");
			String gEmail = req.getParameter("gEmail");
			String gBirth = req.getParameter("gBirth");
			String gJoin = req.getParameter("gJoin");
			int gPoint = Integer.parseInt(req.getParameter("gPoint"));
			String gMemo = req.getParameter("gMemo");
			
			
			
			SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
			Guest guest = new Guest();
			
			guest.setgNo(gNo);
			guest.setgLGrade(new Level(gLGrade));
			guest.setgName(gName);
			guest.setgTel(gTel);
			guest.setgEmail(gEmail);
			guest.setgBirth(sf.parse(gBirth));
			guest.setgJoin(sf.parse(gJoin));
			guest.setgPoint(gPoint);
			guest.setgMemo(gMemo);
			System.out.println(guest);
			
			int guest1 = gDao.updateGuest2(guest);
			System.out.println(guest1);
			ObjectMapper om = new ObjectMapper();
			String data = om.writeValueAsString(guest1); // json string으로 변환
			res.setContentType("application/json;charset=utf-8");
			PrintWriter out = res.getWriter();
			out.print(data);
			out.flush();
		}
		return null;
	}

}
