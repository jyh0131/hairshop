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
		if(req.getMethod().equalsIgnoreCase("get")) {
			GuestMapper gDao = new GuestMapperImpl();
			System.out.println("asdsadsadsa");
			int gNo = Integer.parseInt(req.getParameter("gNo"));
			List<Guest> gList = gDao.selectGuestByAll2(gNo);
			
			
			
			ObjectMapper om = new ObjectMapper();
			String data = om.writeValueAsString(gList);
			
			res.setContentType("application/json;charset=utf-8");
			PrintWriter out = res.getWriter();
			out.print(data);
			out.flush();
		}
		if(req.getMethod().equalsIgnoreCase("post")) {
			String grade = req.getParameter("grade");
			String name = req.getParameter("name");
			String tel = req.getParameter("tel");
			String mail = req.getParameter("mail");
			String birth = req.getParameter("birth");
			String join = req.getParameter("join");
			String point = req.getParameter("point");
			String memo = req.getParameter("memo");
			
			System.out.println(grade);
			System.out.println(name);
			System.out.println(tel);
			System.out.println(mail);
			System.out.println(birth);
			System.out.println(join);
			System.out.println(point);
			System.out.println(memo);
		}
		return null;
	}

}
