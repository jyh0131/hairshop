package kr.yi.hairshop.handler.board.manager;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.sun.corba.se.impl.activation.CommandHandler;

import kr.yi.hairshop.dao.ReviewMapper;
import kr.yi.hairshop.dao.ReviewMapperImpl;
import kr.yi.hairshop.dto.Review;
import kr.yi.hairshop.util.MyBatisSqlSessionFactory;

public class BoardListHandler implements kr.yi.hairshop.controller.CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		SqlSession sqlSession = null;
		try {
			sqlSession = MyBatisSqlSessionFactory.openSession();
			ReviewMapper dao = ReviewMapperImpl.getInstance(sqlSession);
			List<Review> bList = dao.selectBoardManager();
			req.setAttribute("bList", bList);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return "/WEB-INF/view/board/boardList.jsp";
	}

}
