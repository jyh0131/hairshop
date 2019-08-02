package kr.yi.hairshop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.util.MyBatisSqlSessionFactory;

public class GuestDaoTest {
	@Test
	public void selectList() { 
		SqlSession sqlSession = null;
		
		try {
			sqlSession = MyBatisSqlSessionFactory.openSession();
			GuestMapper dao = new GuestMapperImpl();
			Guest list = dao.selectById("bbina4");
			System.out.println(list);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();  
		}
	}
}
