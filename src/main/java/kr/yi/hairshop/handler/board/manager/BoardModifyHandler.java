package kr.yi.hairshop.handler.board.manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.ReviewMapper;
import kr.yi.hairshop.dao.ReviewMapperImpl;
import kr.yi.hairshop.dto.Review;

public class BoardModifyHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getMethod().equalsIgnoreCase("get")) {
			int rNo = Integer.parseInt(req.getParameter("no")); 
//			System.out.println("클릭한사람의 댓글번호->"+rNo); //클릭한 사람의 댓글번호
			
			ReviewMapper dao = new ReviewMapperImpl();
			
			Review list = dao.selectListByNo(rNo);
			
			req.setAttribute("list", list);
			
			return "/WEB-INF/view/board/boardModify.jsp";
		}
		return null;


	}

}
