package kr.yi.hairshop.handler.review;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.ReviewMapper;
import kr.yi.hairshop.dao.ReviewMapperImpl;
import kr.yi.hairshop.dto.Review;
import kr.yi.hairshop.util.MyBatisSqlSessionFactory;


public class ReviewHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		SqlSession sqlSession = null;
		try {
			sqlSession = MyBatisSqlSessionFactory.openSession();
			ReviewMapper dao = ReviewMapperImpl.getInstance(sqlSession);
			List<Review> list = dao.selectReview();
			req.setAttribute("list", list);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		
		
		
		
		
		
		return "/WEB-INF/view/review/reviewList.jsp";
		
	}

}
