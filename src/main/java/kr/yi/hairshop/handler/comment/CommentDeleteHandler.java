package kr.yi.hairshop.handler.comment;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.CommentMapper;
import kr.yi.hairshop.dao.CommentMapperImpl;


public class CommentDeleteHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		int rNo = Integer.parseInt(req.getParameter("rNo"));
		System.out.println(rNo);
		try {
			CommentMapper dao = new CommentMapperImpl();
			System.out.println(dao);
			dao.deleteComment(rNo);
			Map<String, Boolean> map = new HashMap<String, Boolean>();
			map.put("success", true);
			
			ObjectMapper om = new ObjectMapper();
			String json = om.writeValueAsString(map); //{succes:true}
			
			PrintWriter out = res.getWriter();
			out.print(json);
			out.flush();
			
		} catch (Exception e) {
			e.printStackTrace();
			
			//실패했을때 -> success키의 값으로 알게됨
			Map<String, Boolean> map = new HashMap<String, Boolean>();
			map.put("success", false); 
			
			ObjectMapper om = new ObjectMapper();
			String json = om.writeValueAsString(map); //{success:false}
			
			PrintWriter out = res.getWriter();
			out.print(json);
			out.flush();
		}	
	
		return null;
	}

}
