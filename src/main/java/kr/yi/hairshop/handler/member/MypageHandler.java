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
import kr.yi.hairshop.util.MyBatisSqlSessionFactory;

public class MypageHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")) {
			
			HttpSession session = req.getSession(false);
			
			User user = (User) session.getAttribute("Auth");
			System.out.println(user);
			String id = user.getuId();
			
			SqlSession sqlSession = null;
			
			try {
				sqlSession = MyBatisSqlSessionFactory.openSession();
				
				
				GuestMapper dao = new GuestMapperImpl();
				Guest guest = dao.selectById(id);
				
				req.setAttribute("guest", guest);
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
			
			
			
			return "/WEB-INF/view/member/mypageForm.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")) {
			
			
			
			
			
			
			
			
			return "/WEB-INF/view/member/mypageForm.jsp";
		}
		
		return null;
	}

}
