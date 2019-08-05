package kr.yi.hairshop.handler.reserve;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.DesignerMapper;
import kr.yi.hairshop.dao.DesignerMapperImpl;
import kr.yi.hairshop.dao.ProductMapper;
import kr.yi.hairshop.dao.ProductMapperImpl;
import kr.yi.hairshop.dto.Designer;
import kr.yi.hairshop.dto.Product;
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
			
		return "/WEB-INF/view/reserve/reserve.jsp";
	}

}
