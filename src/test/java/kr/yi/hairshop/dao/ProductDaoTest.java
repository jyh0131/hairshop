package kr.yi.hairshop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import kr.yi.hairshop.dto.Product;
import kr.yi.hairshop.util.MyBatisSqlSessionFactory;




public class ProductDaoTest {
	@Test
	public void selectList() { 
		SqlSession sqlSession = null;
		
		try {
			sqlSession = MyBatisSqlSessionFactory.openSession();
			ProductMapper dao = new ProductMapperImpl();
			List<Product> product = dao.selectProductByAll();
			System.out.println(product);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();  
		}
	}
}
