package kr.yi.hairshop.handler.guest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.util.MyBatisSqlSessionFactory;

public class GuestDeleteHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {

		int gNo = Integer.parseInt(req.getParameter("gNo"));
		SqlSession sqlSession = null;
		
		try {
			sqlSession = MyBatisSqlSessionFactory.openSession();
			GuestMapper dao = sqlSession.getMapper(GuestMapper.class);
			
			Guest guest = new Guest(gNo);
			
			dao.deleteGuest(guest);
			req.setAttribute("gNo", gNo);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return "/guest/guestList.do";
	}

}
