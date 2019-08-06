package kr.yi.hairshop.handler.management;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.LevelMapper;
import kr.yi.hairshop.dao.LevelMapperImpl;
import kr.yi.hairshop.dto.Level;

public class GradeChangeHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		LevelMapper dao = new LevelMapperImpl();
		List<Level> list = dao.selectLevelByAll();
		
		HttpSession session = req.getSession(false);
		session.setAttribute("lList", list);
		
		return "/WEB-INF/view/management/gradeChangeForm.jsp";
	}

}
