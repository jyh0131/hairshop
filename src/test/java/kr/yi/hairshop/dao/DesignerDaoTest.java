package kr.yi.hairshop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import kr.yi.hairshop.dto.Designer;
import kr.yi.hairshop.util.MyBatisSqlSessionFactory;




public class DesignerDaoTest {
	@Test
	public void selectList() { 
		SqlSession sqlSession = null;
		
		try {
			sqlSession = MyBatisSqlSessionFactory.openSession();
			DesignerMapper dao = new DesignerMapperImpl();
			List<Designer> designer = dao.selectDesignerByAll();
			System.out.println(designer);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();  
		}
	}
}
