package kr.yi.hairshop.handler.management;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.DesignerMapper;
import kr.yi.hairshop.dao.DesignerMapperImpl;
import kr.yi.hairshop.dao.ProductMapper;
import kr.yi.hairshop.dao.ProductMapperImpl;
import kr.yi.hairshop.dao.WorkDialogMapper;
import kr.yi.hairshop.dao.WorkDialogMapperImpl;
import kr.yi.hairshop.dto.Designer;
import kr.yi.hairshop.dto.Product;
import kr.yi.hairshop.dto.WorkDialog;
import kr.yi.hairshop.dto.WorkDialogPage;

public class ReserveMgnHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String dName=req.getParameter("dName");
		if(dName==null) {
			DesignerMapper dDao = new DesignerMapperImpl();
			int dNo=dDao.selectMinNo();
			
			
			WorkDialogMapper wDao = new WorkDialogMapperImpl();
			List<WorkDialog> wList = wDao.selectByAll();
			
		}
		return "/WEB-INF/view/management.jsp";
	}

}
