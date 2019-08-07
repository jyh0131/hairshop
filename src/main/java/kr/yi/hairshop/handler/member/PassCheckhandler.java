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

public class PassCheckhandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")) {
			return "/WEB-INF/view/member/passCheck.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")) {
			
			HttpSession session = req.getSession();
			User user = (User) session.getAttribute("Auth");
			
			
			String id = user.getuId();
			String pass = req.getParameter("password");
			

			GuestMapper dao = new GuestMapperImpl();
			Guest guest = dao.selectById(id);
			
			if(guest.getgPassword().equals(pass)) {
				
				GuestMapper gDao = new GuestMapperImpl();
				guest = gDao.selectById(id);
				
				req.setAttribute("guest", guest);
				
				return "/WEB-INF/view/member/mypageForm.jsp";
			}else {
				return "/WEB-INF/view/member/passCheck.jsp";
			}

			
		}
		return null;
	}

}
