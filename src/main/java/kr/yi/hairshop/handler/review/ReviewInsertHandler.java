package kr.yi.hairshop.handler.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.yi.hairshop.controller.CommandHandler;


public class ReviewInsertHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")) {
				
			return "/WEB-INF/view/review/reviewForm.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")) {
				
			
			
			
			
			
			
			
			
			
			
			
			
			
			return "/WEB-INF/view/review/reviewList.jsp";
		}
		
		
		
		
		return null;
		
	}

}
