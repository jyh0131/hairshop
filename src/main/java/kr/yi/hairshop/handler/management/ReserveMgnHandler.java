package kr.yi.hairshop.handler.management;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.DesignerMapper;
import kr.yi.hairshop.dao.DesignerMapperImpl;
import kr.yi.hairshop.dao.WorkDialogMapper;
import kr.yi.hairshop.dao.WorkDialogMapperImpl;
import kr.yi.hairshop.dto.Designer;
import kr.yi.hairshop.dto.WorkDialog;

public class ReserveMgnHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String dateStr=req.getParameter("date");
		String designer=req.getParameter("designer");
		
		DesignerMapper dDao = new DesignerMapperImpl();
		List<Designer> dList = dDao.selectDesignerByAll();
		req.setAttribute("dList", dList);
		int dNo = dDao.selectMinNo();

		WorkDialogMapper wDao = new WorkDialogMapperImpl();
		Date date = new Date();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		Map<String, String> map = new HashMap<String, String>();
		map.put("wDNo", dNo + "");
		map.put("date", sf.format(date));
		return "/WEB-INF/view/management/reserveMgn.jsp";
	}

}
