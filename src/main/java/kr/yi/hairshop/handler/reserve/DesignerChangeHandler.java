package kr.yi.hairshop.handler.reserve;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.yi.hairshop.controller.CommandHandler;

public class DesignerChangeHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String str=(String) req.getAttribute("date");
		System.out.println(str);
		return null;
	}

}
