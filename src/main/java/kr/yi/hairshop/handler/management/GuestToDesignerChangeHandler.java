package kr.yi.hairshop.handler.management;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.DesignerMapper;
import kr.yi.hairshop.dao.DesignerMapperImpl;
import kr.yi.hairshop.dto.Designer;

public class GuestToDesignerChangeHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
	
		DesignerMapper ddao = new DesignerMapperImpl();
		List<Designer> dList = ddao.selectDesignerByAll();
		
		HttpSession session = req.getSession(false);
		session.setAttribute("dList", dList);
		
		return "/WEB-INF/view/management/designerChangeForm.jsp";
	}

}
