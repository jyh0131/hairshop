package kr.yi.hairshop.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.DesignerMapper;
import kr.yi.hairshop.dao.DesignerMapperImpl;
import kr.yi.hairshop.dao.EventMapper;
import kr.yi.hairshop.dao.EventMapperImpl;
import kr.yi.hairshop.dao.ReviewMapper;
import kr.yi.hairshop.dao.ReviewMapperImpl;
import kr.yi.hairshop.dto.Event;
import kr.yi.hairshop.dto.Review;
import kr.yi.hairshop.dto.User;

public class HomeHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ReviewMapper board = new ReviewMapperImpl();
		List<Review> bList=board.selectBoardManager();
		req.setAttribute("bList", bList);
		
		
		List<Review> rList = board.selectReview();
		req.setAttribute("rList", rList);
		
		EventMapper eDao=new EventMapperImpl();
		List<Event> eList=eDao.selectNowFastDay();
		req.setAttribute("eList", eList);
		return "/WEB-INF/view/Home.jsp";
	}

}
