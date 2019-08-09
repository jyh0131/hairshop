package kr.yi.hairshop.handler.board.manager;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.ReviewMapper;
import kr.yi.hairshop.dao.ReviewMapperImpl;
import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.dto.Review;
import kr.yi.hairshop.dto.User;

public class BoardModifyHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getMethod().equalsIgnoreCase("get")) {
			int rNo = Integer.parseInt(req.getParameter("no")); 
//			System.out.println("클릭한사람의 댓글번호->"+rNo); //클릭한 사람의 댓글번호
			
			ReviewMapper dao = new ReviewMapperImpl();
			
			Review list = dao.selectListByNo(rNo);
			
			req.setAttribute("list", list);
			
			return "/WEB-INF/view/review/reviewModifyForm.jsp";
		} else if (req.getMethod().equalsIgnoreCase("post")) {
		
			String uploadPath = req.getRealPath("upload");

			File dir = new File(uploadPath);
			if (dir.exists() == false) {
				dir.mkdir();
			}

			int size = 10 * 1024 * 1024; // 10메가

			// upload
			MultipartRequest multi = new MultipartRequest(req, uploadPath, // 실제 업로드가 될 폴더 fullpath
					size, // file upload크기: 10메가
					"utf-8", // 파일명이 한글일때 깨지지 말라규
					new DefaultFileRenamePolicy() // 파일명이 중복되었을때 처리하지
			);
			ReviewMapper dao = new ReviewMapperImpl();

			int rNo = Integer.parseInt(multi.getParameter("rNo"));
			//입력한 값
			String rTitle = multi.getParameter("rTitle");
			String rContent = multi.getParameter("rContent");
			String rFile = multi.getFilesystemName("rFile");

			Review review = new Review(rNo, rTitle, rContent, rFile);
//			System.out.println(review);

			dao.updateReview(review);
			res.sendRedirect(req.getContextPath() + "/review/review.do");
			return null;
		}
		return null;


	}

}
