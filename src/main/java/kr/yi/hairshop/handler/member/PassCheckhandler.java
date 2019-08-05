package kr.yi.hairshop.handler.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.dto.User;

public class PassCheckhandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")) {
			return "/WEB-INF/view/member/passCheck.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")) {
			
			HttpSession session = req.getSession(false);
			
			//User user = req.getParameter("Auth");
			
			String id = req.getParameter("id");
			SqlSession sqlSession = null;
			try {
				
				GuestMapper dao = new GuestMapperImpl();
				Guest guest = dao.selectById(id);
				
				
				
				
				
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close();
			}
			
			
			
			
		}
		return null;
	}

}
