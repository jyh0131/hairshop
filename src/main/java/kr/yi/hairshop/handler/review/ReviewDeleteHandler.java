package kr.yi.hairshop.handler.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.ReviewMapper;
import kr.yi.hairshop.dao.ReviewMapperImpl;

public class ReviewDeleteHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {

		String rr = req.getParameter("no");
//		System.out.println(rr);
		int rNo = Integer.parseInt(rr);
//		System.out.println(rNo);
		// r_no를 입력하면 update되도록@
		ReviewMapper dao = new ReviewMapperImpl();
//		System.out.println("여기");
		dao.deleteReview(rNo);

		if(req.getParameter("notice")==null)
			res.sendRedirect(req.getContextPath() + "/review/review.do");
		else
			res.sendRedirect(req.getContextPath() + "/board/managerList.do");
		
		return null;

	}

}
