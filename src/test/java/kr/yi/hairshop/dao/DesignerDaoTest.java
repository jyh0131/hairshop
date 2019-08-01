package kr.yi.hairshop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import kr.yi.hairshop.model.Designer;
import kr.yi.hairshop.util.MySqlSessionFactory;




public class DesignerDaoTest {
	@Test
	public void selectList() { 
		SqlSession sqlSession = null;
		
		try {
			sqlSession = MySqlSessionFactory.openSession();
			DesignerDao dao = DesignerDaoImpl.getInstance(sqlSession);
			List<Designer> designer = dao.selectList();
			System.out.println(designer);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();  
		}
	}
}
