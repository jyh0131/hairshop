package kr.yi.hairshop.handler.comment;

import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.CommentMapper;
import kr.yi.hairshop.dao.CommentMapperImpl;
import kr.yi.hairshop.dto.Comment;


public class CommentModifyHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		//입력한 cCount가져오기
		//바꿀 cNo 번호
		int cNo = Integer.parseInt(req.getParameter("cNo"));
		int rNo = Integer.parseInt(req.getParameter("rNo"));
		String cContent = req.getParameter("cContent");
		System.out.println("cNo가찍혀?"+cNo);
		System.out.println("내용은?"+cContent);
		
		CommentMapper dao = new CommentMapperImpl();
		
		Date cWritetime = new Date();
		
		Comment ct = new Comment(cNo, cWritetime, cContent);
		dao.updateComment(ct);
		System.out.println(ct);
		
		res.setContentType("application/json;charset=utf-8"); //한글 안깨지게!!
		List<Comment> comment = dao.selectAllByrNo(rNo);
		ObjectMapper om = new ObjectMapper();
		String json = om.writeValueAsString(comment); //{succes:true}
		
		PrintWriter out = res.getWriter();
		out.print(json);
		out.flush();

		
		return null;
	}

}
