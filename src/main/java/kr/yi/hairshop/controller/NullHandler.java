package kr.yi.hairshop.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NullHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception { //없는 커맨드가 들어오면 이 클래스 실행시킴.
		// TODO Auto-generated method stub
		res.sendError(HttpServletResponse.SC_NOT_FOUND); //404 error 시킴
		return null;
	}

}
