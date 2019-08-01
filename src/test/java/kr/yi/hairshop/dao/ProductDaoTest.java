package kr.yi.hairshop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import kr.yi.hairshop.model.Product;
import kr.yi.hairshop.util.MySqlSessionFactory;




public class ProductDaoTest {
	@Test
	public void selectList() { 
		SqlSession sqlSession = null;
		
		try {
			sqlSession = MySqlSessionFactory.openSession();
			ProductDao dao = ProductDaoImpl.getInstance(sqlSession);
			List<Product> product = dao.selectList();
			System.out.println(product);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();  
		}
	}
}
