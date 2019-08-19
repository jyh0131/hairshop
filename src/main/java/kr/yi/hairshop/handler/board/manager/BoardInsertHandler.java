package kr.yi.hairshop.handler.board.manager;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.ReviewMapper;
import kr.yi.hairshop.dao.ReviewMapperImpl;
import kr.yi.hairshop.dto.Designer;
import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.dto.Review;
import kr.yi.hairshop.dto.User;

public class BoardInsertHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getMethod().equalsIgnoreCase("get")) {

			return "/WEB-INF/view/board/boardInsert.jsp";
		} else if (req.getMethod().equalsIgnoreCase("post")) {
			
			String uploadPath = req.getRealPath("upload");
			
			req.getRealPath("/");
			//-> 현재 프로젝트 명 아래 폴더(..생략/tmp0/wtpwebapps/플젝명/)

			req.getSession().getServletContext().getRealPath("");
			//->현재 프로젝트 명까지(..생략/tmp0/wtpwebapps/플젝명)
			 
			this.getClass().getResource("").getPath();
			//-> 현재 실행되는 자바가 위치한 폴더(..생략/tmp0/wtpwebapps/플젝명/WEB-INF/classes/com/***/controller/)

			this.getClass().getResource("/").getPath();
			//->현재 실행되는 자바의 최상위 폴더. (..생략/tmp0/wtpwebapps/플젝명/WEB-INF/classes/) 
			
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
			Designer rDNo = new Designer(no); //게스트번호(no를 Guest에 넣음)	
			
			String rWriter = user.getuId(); //글쓴이
			
			String rTitle = multi.getParameter("rTitle");
			String rContent = multi.getParameter("rContent");
			String rFile = multi.getFilesystemName("rFile");

			Review review = new Review(rDNo, rWriter, rTitle, rContent, rFile);

			int result=dao.insertManagerBoard(review);

			res.sendRedirect(req.getContextPath() + "/board/managerList.do");
			return null;

		}
		return null;

	}

}
