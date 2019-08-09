package kr.yi.hairshop.handler.login;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.codehaus.jackson.map.ObjectMapper;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.util.MyBatisSqlSessionFactory;

public class IdCheckHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")) {
			
			String newId = req.getParameter("id");

			GuestMapper dao = new GuestMapperImpl();
			Guest dbGuest = dao.selectById(newId);
			
			int checkId = 0;

			if(dbGuest == null) {
				checkId = 0; // 검색안됨
			}else {
				checkId = 1; // 아이디 중복
			}
			
			ObjectMapper om = new ObjectMapper();
			String data = om.writeValueAsString(checkId);
			
			res.setContentType("application/json;charset=utf-8");
			PrintWriter out = res.getWriter();
			out.print(data);
			out.flush();					
		
		}
		return null;
	}

}
