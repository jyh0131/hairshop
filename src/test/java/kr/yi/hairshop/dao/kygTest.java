package kr.yi.hairshop.dao;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.dto.Level;
import kr.yi.hairshop.dto.Snsinfo;
import kr.yi.hairshop.dto.WorkDialog;
import kr.yi.hairshop.util.MyBatisSqlSessionFactory;

public class kygTest {

	public void selectList() { 
		SqlSession sqlSession = null;
		
		try {
			sqlSession = MyBatisSqlSessionFactory.openSession();
			WorkDialogMapper dao = new WorkDialogMapperImpl();
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("id", "a");
			map.put("check", "1");
			
			List<WorkDialog> list = dao.selectByIdForReservState(map);
			
			for (WorkDialog workDialog : list) {
				System.out.println(workDialog);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();  
		}
	}
	
	public void selectGuestList() { 
		SqlSession sqlSession = null;
		
		try {
			sqlSession = MyBatisSqlSessionFactory.openSession();
			GuestMapper dao = new GuestMapperImpl();
			
			List<Guest> list = dao.selectGuestBygName("박");
			
			for (Guest g : list) {
				System.out.println(g);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();  
		}
	}
	
	
	
	
	@Test
	public void insertByNaver() {
		SqlSession sqlSession = null;
		
		try {
			sqlSession = MyBatisSqlSessionFactory.openSession();
			GuestMapper dao = new GuestMapperImpl();

			Guest guest = new Guest();
			guest.setgId("111111");
			guest.setgLGrade(new Level("브론즈"));
			guest.setgName("test");
			guest.setgTel("010-010-0100");
			guest.setgEmail("이메일");
			guest.setgBirth(new Date());
			guest.setgJoin(new Date());		
			guest.setgPoint(0); //네이버 회원가입은 포인드 0
			guest.setgMemo("네이버 회원가입");			
			
			int gNo = dao.insertByNaver(guest);
			System.out.println("네이버 삽입 되었다"+gNo);
			
			Snsinfo snsinfo = new Snsinfo();
			snsinfo.setSnsGuestNo(gNo);
			snsinfo.setSnsId("999999");
			snsinfo.setSnsType("Naver Join");
			snsinfo.setSnsName("naver");
			snsinfo.setSnsProfile("무엇을?");
			snsinfo.setSnsConnecteDate(new Date());
			
			SnsinfoMapper sDao = new SnsinfoMapperImpl();
			int result = sDao.insertSnsinfo(snsinfo);			
			
			System.out.println("snsinfo 삽입되면 "+result);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();  
		}
	}



}
