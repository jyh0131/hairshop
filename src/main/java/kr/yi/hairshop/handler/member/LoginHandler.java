package kr.yi.hairshop.handler.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.apache.ibatis.session.SqlSession;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.DesignerMapper;
import kr.yi.hairshop.dao.DesignerMapperImpl;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dto.Designer;
import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.dto.User;
import kr.yi.hairshop.util.MyBatisSqlSessionFactory;

public class LoginHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")) {
			return "/WEB-INF/view/member/loginForm.jsp";					
		}else if(req.getMethod().equalsIgnoreCase("post")) {
			
			int isMgn = Integer.parseInt(req.getParameter("isMgn")); //mgn=0, guest=1
			String id = req.getParameter("id");
			String password = req.getParameter("password");
			
			HttpSession session = req.getSession();

			if(isMgn == 1) {
				GuestMapper dao = new GuestMapperImpl();
				Guest guest = dao.selectById(id);			
				
				if(guest == null) { //회원없음
					req.setAttribute("noMember", true);
					System.out.println("회원 없음");
					return "/WEB-INF/view/member/loginForm.jsp";
				}else if(guest.getgPassword().equals(password) == false) { //비번 불일치
					req.setAttribute("noPassword", true);
					System.out.println("비번 불일치");
					return "/WEB-INF/view/member/loginForm.jsp";
				}
				//로그인 된 사람의 정가 담긴 class 생성후 sesseion에 저장
				User user = new User(guest.getgNo(), guest.getgName(), guest.getgId(), false); //false 손님
				session.setAttribute("Auth", user);
				
			}else if(isMgn==0) {
				DesignerMapper dao = new DesignerMapperImpl();
				Designer designer = dao.selelctDesignerById(id);
				System.out.println(designer);
				
				if(designer == null) { //디자이너 없음
					req.setAttribute("noMember", true);
					System.out.println("회원 없음");
					return "/WEB-INF/view/member/loginForm.jsp";
				}else if(designer.getdPassword().equals(password) == false) { //비번 불일치
					req.setAttribute("noPassword", true);
					System.out.println("비번 불일치");
					return "/WEB-INF/view/member/loginForm.jsp";
				}
				
				//로그인 된 사람의 정가 담긴 class 생성후 sesseion에 저장
				User user = new User(designer.getdNo(), designer.getdName(), designer.getdId(), true); //true 관리자
				session.setAttribute("Auth", user);
			}
			
			//res.sendRedirect(req.getContextPath()+"/index.jsp");
			return "/"; //프로젝트 루트로 이동 - index.jsp 실행

		}
		return null;

	}
}
