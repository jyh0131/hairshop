package kr.yi.hairshop.handler.login;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.DesignerMapper;
import kr.yi.hairshop.dao.DesignerMapperImpl;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dto.Designer;
import kr.yi.hairshop.dto.Guest;

public class DesignerSelcetByIdHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")) {
			return "/";
		}else if(req.getMethod().equalsIgnoreCase("post")) {
			
			String id = req.getParameter("id");
			System.out.println("검색할 디자이너의 아이디는 "+id);
			DesignerMapper dao = new DesignerMapperImpl();
			Designer designer = dao.selelctDesignerById(id);
			
			int result = 0;
			
			if(designer != null) { // 1 = 같은 아이디가 있다, 0 아이디가 없다
				result = 1;
				System.out.println("아이디가 db에 있다");
			}else {
				result = 0;
				System.out.println("아이디가 db에 있다");
			}
			  
			ObjectMapper om = new ObjectMapper();
			String data = om.writeValueAsString(result); // json string으로 변환
			
			res.setContentType("application/json;charset=utf-8");
			PrintWriter out = res.getWriter();
			out.print(data);
			out.flush();
		}
		
		return null;
	}

}
