package kr.yi.hairshop.handler.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.apache.ibatis.session.SqlSession;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.dto.User;
import kr.yi.hairshop.util.MyBatisSqlSessionFactory;

public class LoginHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")) {
			return "/WEB-INF/view/member/loginForm.jsp";					
		}else if(req.getMethod().equalsIgnoreCase("post")) {
			
			String id = req.getParameter("id");
			String password = req.getParameter("password");
			
			SqlSession sqlSession = null;
			
			try {
				sqlSession = MyBatisSqlSessionFactory.openSession();

				GuestMapper dao = new GuestMapperImpl();
				Guest guest = dao.selectById(id);
				System.out.println(guest);
				if(guest == null) { //회원없음
					req.setAttribute("noMember", true);
					System.out.println("회원 없음");
					return "/WEB-INF/view/member/loginForm.jsp";
				}else if(guest.getgPassword().equals(password) == false) { //비번 불일치
					req.setAttribute("noPassword", true);
					System.out.println("비번 불일치");
					return "/WEB-INF/view/member/loginForm.jsp";
				}
				
				HttpSession session = req.getSession();

				//로그인 된 사람의 정가 담긴 class 생성후 sesseion에 저장
				User user = new User(guest.getgNo(), guest.getgName(), guest.getgId(), true);
				session.setAttribute("Auth", user);
				
				
				//res.sendRedirect(req.getContextPath()+"/index.jsp");
				return "/"; //프로젝트 루트로 이동 - index.jsp 실행
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
		}
		
		
		
		
		
		
		
		
		
		return null;
	}

}
