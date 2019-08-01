package kr.yi.hairshop.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.yi.hairshop.model.Product;

public class ProductDaoImpl implements ProductDao {
	
	private static final ProductDaoImpl dao = new ProductDaoImpl();
	private static final String namespace = "kr.yi.hairshop.HairMapper";
	
	SqlSession sqlSession;
	
	public static ProductDao getInstance(SqlSession sqlSession) { 
		dao.sqlSession = sqlSession; 
		return dao;
	}

	@Override
	public List<Product> selectList() throws SQLException {
		return sqlSession.selectList(namespace + ".selectList");
	}
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}












