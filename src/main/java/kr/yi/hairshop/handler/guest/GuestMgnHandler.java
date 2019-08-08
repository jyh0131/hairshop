package kr.yi.hairshop.handler.guest;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.LevelMapper;
import kr.yi.hairshop.dao.LevelMapperImpl;
import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.dto.Level;
import kr.yi.hairshop.util.MyBatisSqlSessionFactory;

public class GuestMgnHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		SqlSession sqlSession = null;
		
		try {
			sqlSession = MyBatisSqlSessionFactory.openSession();
			GuestMapper dao = sqlSession.getMapper(GuestMapper.class);

			List<Guest> list = dao.selectGuestByAll();
			
			
			
			LevelMapper lDao = new LevelMapperImpl();
			List<Level> lList = lDao.selectLevelByAll();
			req.setAttribute("lList", lList);
			
			
			
			
			req.setAttribute("list", list);

		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return "/WEB-INF/view/guest/guestMgn2.jsp";
	}

}
