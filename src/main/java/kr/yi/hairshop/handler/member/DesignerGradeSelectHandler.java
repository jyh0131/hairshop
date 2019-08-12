package kr.yi.hairshop.handler.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.DesignerMapper;
import kr.yi.hairshop.dao.DesignerMapperImpl;
import kr.yi.hairshop.dto.Designer;

public class DesignerGradeSelectHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {

		String id = req.getParameter("id");	
		
		DesignerMapper dao = new DesignerMapperImpl();
		
		Designer designer = dao.selelctDesignerById(id);
		String result = designer.getdGrade();
		System.out.println("등급찾았다"+result);
		ObjectMapper om = new ObjectMapper();
		String data = om.writeValueAsString(result); // json string으로 변환
		
		res.setContentType("application/json;charset=utf-8");
		PrintWriter out = res.getWriter();
		out.print(data);
		out.flush();
		
		return null;
	}

}
