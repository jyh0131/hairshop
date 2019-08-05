package kr.yi.hairshop.handler.reserve;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.GuestMapper;
import kr.yi.hairshop.dao.GuestMapperImpl;
import kr.yi.hairshop.dao.WorkDialogMapper;
import kr.yi.hairshop.dao.WorkDialogMapperImpl;
import kr.yi.hairshop.dto.Guest;

public class InsertReserveHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String gName=req.getParameter("gName");
		String gTel=req.getParameter("gTel");
		String reserveDate=req.getParameter("reserveDate");
		String reserveTime=req.getParameter("reserveTime");
		String reserveDesigner=req.getParameter("reserveDesigner");
		String reserveProduct=req.getParameter("reserveProduct");
		
		System.out.println(gName);
		System.out.println(gTel);
		System.out.println(reserveDate);
		System.out.println(reserveTime);
		System.out.println(reserveDesigner);
		System.out.println(reserveProduct);
		
		SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 hh:mm");
		System.out.println(sf.parse(reserveDate+" "+reserveTime));
		
		WorkDialogMapper wDao = new WorkDialogMapperImpl();
		GuestMapper gDao = new GuestMapperImpl();
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("gName", gName);
		map.put("gTel", gTel);
		Guest guest=gDao.selectGuestByGNameGTel(map);
		if(guest!=null) {
			System.out.println("잇음");
		}
		else {
			System.out.println("없음");
		}
		return null;
	}

}
