package kr.yi.hairshop.handler.reserve;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.yi.hairshop.controller.CommandHandler;
import kr.yi.hairshop.dao.WorkDialogMapper;
import kr.yi.hairshop.dao.WorkDialogMapperImpl;
import kr.yi.hairshop.dto.User;
import kr.yi.hairshop.dto.WorkDialog;

public class ReserveStateHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		HttpSession session = req.getSession(false);
		User user = (User) session.getAttribute("Auth");
		
		String id = user.getuId();
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("check", "1"); //작업이 완료된것( w_worktime is not null )
		
		WorkDialogMapper dao = new WorkDialogMapperImpl();
		List<WorkDialog> lookback = dao.selectByIdForReservState(map);
		
		map.put("check", "0"); //예약만 된것( w_worktime is null )
		List<WorkDialog> lookAhead = dao.selectByIdForReservState(map);

		Iterator<WorkDialog> list = lookAhead.iterator();
		while(list.hasNext()) {
			WorkDialog work=list.next();
			System.out.println("11");
			System.out.println(work);
		}
		
		req.setAttribute("lookback", lookback);
		req.setAttribute("lookAhead", lookAhead);
		
		return "/WEB-INF/view/reserve/reserveState.jsp";
		
	}

}
