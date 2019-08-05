package kr.yi.hairshop.handler.reserve;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.WorkDialogMapper;
import kr.yi.hairshop.dao.WorkDialogMapperImpl;
import kr.yi.hairshop.dto.WorkDialog;

public class DesignerChangeHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String dateStr=req.getParameter("date");
		String designer=req.getParameter("designer");
		String grade=designer.substring(designer.indexOf(" "),designer.length()).trim();
		designer=designer.substring(0, designer.indexOf(" "));
		
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		Date date=sf.parse(dateStr);
		dateStr=sf.format(date);
		WorkDialogMapper wDao =new WorkDialogMapperImpl();
		Map<String, String> map = new HashMap<>();
		map.put("dName", designer);
		map.put("dGrade", grade);
		map.put("date", dateStr);
		
		List<WorkDialog> wList=wDao.selectWDjoinByWDNoDate(map);
		
		Map<String, List<WorkDialog>> wListMap=new HashMap<>();
		wListMap.put("wListMap", wList);
		ObjectMapper om = new ObjectMapper();
		String data = om.writeValueAsString(wListMap);
		
		res.setContentType("application/json;charset=utf-8");
		PrintWriter out = res.getWriter();
		out.print(data);
		out.flush();	
		
		return null;        
	}

}
