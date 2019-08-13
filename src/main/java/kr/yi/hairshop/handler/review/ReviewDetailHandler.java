package kr.yi.hairshop.handler.review;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.CommentMapper;
import kr.yi.hairshop.dao.CommentMapperImpl;
import kr.yi.hairshop.dao.ReviewMapper;
import kr.yi.hairshop.dao.ReviewMapperImpl;
import kr.yi.hairshop.dto.Comment;
import kr.yi.hairshop.dto.Review;

public class ReviewDetailHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
	
			int rNo = Integer.parseInt(req.getParameter("no"));
			
			
			
//			System.out.println("나를 클릭했어요"+rNo); //클릭한 사람의 댓글번호
			ReviewMapper dao = new ReviewMapperImpl();
			Review review  = dao.selectListByNo(rNo);
			req.setAttribute("review", review);
			
			//댓글리스트보여줌
			CommentMapper Cdao = new CommentMapperImpl();
			List<Comment> list = Cdao.selectComment(rNo);
			req.setAttribute("list", list);
			
			return "/WEB-INF/view/review/reviewDetail.jsp";

	}

}
