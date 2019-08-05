package kr.yi.hairshop.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import kr.yi.hairshop.dto.Product;
import kr.yi.hairshop.dto.WorkDialog;
import kr.yi.hairshop.util.MyBatisSqlSessionFactory;

public class kygTest {
	
	@Test
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
	
}
