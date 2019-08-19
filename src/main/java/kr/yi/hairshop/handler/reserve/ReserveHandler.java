package kr.yi.hairshop.handler.reserve;

import java.net.URLDecoder;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.DesignerMapper;
import kr.yi.hairshop.dao.DesignerMapperImpl;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dao.ProductMapper;
import kr.yi.hairshop.dao.ProductMapperImpl;
import kr.yi.hairshop.dto.Designer;
import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.dto.Product;
import kr.yi.hairshop.dto.User;
import kr.yi.hairshop.util.MyBatisSqlSessionFactory;

public class ReserveHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		DesignerMapper dDao = new DesignerMapperImpl();
		List<Designer> dList=dDao.selectDesignerByAll();

	
		
		ProductMapper pDao = new ProductMapperImpl();
		List<Product> pList=pDao.selectProductByAll();
			
		req.setAttribute("dList", dList);
		req.setAttribute("pList", pList);
		
		HttpSession session = req.getSession();
		User auth = (User) session.getAttribute("Auth");
		System.out.println(auth);
		GuestMapper gDao = new GuestMapperImpl();
		
		if(auth!=null) {
			if(auth.isuIsMgr()==false) {
				Guest guest=gDao.selectGuestByNo(auth.getmNo());
				req.setAttribute("guest", guest);
			}
			
		}
		
		if(req.getParameter("reserved")==null) {
			req.setAttribute("reserved", false);
		}else {
			req.setAttribute("reserved", true);
			String gName = URLDecoder.decode(req.getParameter("gName"), "UTF-8");
			req.setAttribute("gName", gName);
			req.setAttribute("gTel", req.getParameter("gTel"));
			
		}
		return "/WEB-INF/view/reserve/reserve.jsp";
	}

}
