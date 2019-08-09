package kr.yi.hairshop.handler.board.manager;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.ReviewMapper;
import kr.yi.hairshop.dao.ReviewMapperImpl;
import kr.yi.hairshop.dto.Review;

public class ManagerBoardHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		ReviewMapper board = new ReviewMapperImpl();
		
		List<Review> bList=board.selectBoardManager();
		System.out.println(bList.size());
		
		req.setAttribute("bList", bList);
		
		return "/WEB-INF/view/board/managerBoard.jsp";
	}
	
}
