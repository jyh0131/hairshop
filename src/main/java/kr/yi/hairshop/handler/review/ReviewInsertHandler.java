package kr.yi.hairshop.handler.review;

import java.io.File;

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

public class ReviewInsertHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getMethod().equalsIgnoreCase("get")) {

			return "/WEB-INF/view/review/reviewForm.jsp";
		} else if (req.getMethod().equalsIgnoreCase("post")) {

			String uploadPath = req.getRealPath("upload");
			System.out.println(uploadPath);
			
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

			HttpSession session = req.getSession();
			User user = (User) session.getAttribute("Auth");
			
			int no = user.getmNo();
			Guest rGNo = new Guest(no); //게스트번호(no를 Guest에 넣음)	
			
			String rWriter = user.getuId(); //글쓴이
			
			String rTitle = multi.getParameter("rTitle");
			System.out.println(rTitle);
			String rContent = multi.getParameter("rContent");
			String rFile = multi.getFilesystemName("rFile");

			Review review = new Review(rGNo, rWriter, rTitle, rContent, rFile);
//			System.out.println(review);

			dao.insertReview(review);

			res.sendRedirect(req.getContextPath() + "/review/review.do");
			return null;

		}
		return null;

	}

}
