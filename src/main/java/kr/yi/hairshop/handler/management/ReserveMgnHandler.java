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
import kr.yi.hairshop.dao.EventMapper;
import kr.yi.hairshop.dao.EventMapperImpl;
import kr.yi.hairshop.dao.LevelMapper;
import kr.yi.hairshop.dao.LevelMapperImpl;
import kr.yi.hairshop.dao.ProductMapper;
import kr.yi.hairshop.dao.ProductMapperImpl;
import kr.yi.hairshop.dao.WorkDialogMapper;
import kr.yi.hairshop.dao.WorkDialogMapperImpl;
import kr.yi.hairshop.dto.Designer;
import kr.yi.hairshop.dto.Event;
import kr.yi.hairshop.dto.Level;
import kr.yi.hairshop.dto.Product;
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

		LevelMapper lDao = new LevelMapperImpl();
		List<Level> lList=lDao.selectLevelByAll();
		req.setAttribute("lList", lList);
		
		ProductMapper pDao=new ProductMapperImpl();
		List<Product> pList=pDao.selectProductByAll();
		req.setAttribute("pList", pList);
		
		EventMapper eDao = new EventMapperImpl();
		List<Event> eList=eDao.selectEventByAll();
		req.setAttribute("eList", eList);
		
		Date date = new Date();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		Map<String, String> map = new HashMap<String, String>();
		map.put("wDNo", dNo + "");
		map.put("date", sf.format(date));
		return "/WEB-INF/view/management/reserveMgn.jsp";
	}

}
