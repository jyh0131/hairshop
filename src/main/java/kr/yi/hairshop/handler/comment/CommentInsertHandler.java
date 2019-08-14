package kr.yi.hairshop.handler.comment;

import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.CommentMapper;
import kr.yi.hairshop.dao.CommentMapperImpl;
import kr.yi.hairshop.dto.Comment;
import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.dto.Review;


public class CommentInsertHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		int gno = Integer.parseInt(req.getParameter("gNo"));
		int rno =  Integer.parseInt(req.getParameter("rNo"));
		String cWriter = req.getParameter("cWriter");
		String cContent = req.getParameter("cContent");
		
		CommentMapper dao = new CommentMapperImpl();
		System.out.println(gno);
		System.out.println(rno);
		System.out.println(cWriter);
		System.out.println(cContent);
		
		Guest gNo = new Guest(gno);
		Review rNo = new Review(rno);
		Date now = new Date();
		int cNo = dao.selectAll().size()+1;
		Comment comment = new Comment(cNo, gNo, rNo, cWriter, now,cContent);
		dao.insertComment(comment);
		res.setContentType("application/json;charset=utf-8"); //한글 안깨지게!!
		
		
		ObjectMapper om = new ObjectMapper();
		String json = om.writeValueAsString(comment); 
		
		PrintWriter out = res.getWriter();
		out.print(json);
		out.flush();

		
		return null;
	}

}
