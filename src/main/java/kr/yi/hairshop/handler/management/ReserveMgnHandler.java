package kr.yi.hairshop.handler.management;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.WorkDialogMapper;
import kr.yi.hairshop.dao.WorkDialogMapperImpl;
import kr.yi.hairshop.dto.WorkDialog;
import kr.yi.hairshop.dto.WorkDialogPage;

public class ReserveMgnHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		if(req.getMethod().equalsIgnoreCase("get")) {
			String sPage=req.getParameter("page");
			int page=1;
			if(sPage!=null) {
				page=Integer.parseInt(sPage);
			}
			
			WorkDialogMapper wDao = new WorkDialogMapperImpl();
			
			Map<String, Integer> map = new HashMap<String, Integer>();
			map.put("start", (page-1)*10);
			map.put("size", 10);
			List<WorkDialog> wAllList=wDao.selectByAll();
			List<WorkDialog> wList=wDao.selectByAllLimit(map);
			
			WorkDialogPage workPage = new WorkDialogPage(wAllList.size(), page, 10, wList);
			
			req.setAttribute("workPage", workPage);
			return "";
		}
		return null;
	}
	
}
