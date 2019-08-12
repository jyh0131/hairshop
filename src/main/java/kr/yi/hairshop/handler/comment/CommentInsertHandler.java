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
		
		Comment comment = new Comment(gNo, rNo, cWriter, cContent, now);
		dao.insertComment(comment);
//		req.setCharacterEncoding("utf-8");
		ObjectMapper om = new ObjectMapper();
		String json = om.writeValueAsString(comment); //{succes:true}
		
		PrintWriter out = res.getWriter();
		out.print(json);
		out.flush();

		
		return null;
	}

}
