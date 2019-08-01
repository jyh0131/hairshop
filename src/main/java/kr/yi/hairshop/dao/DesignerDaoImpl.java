package kr.yi.hairshop.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.yi.hairshop.model.Designer;

public class DesignerDaoImpl implements DesignerDao {
	
	private static final DesignerDaoImpl dao = new DesignerDaoImpl();
	private static final String namespace = "kr.yi.hairshop.DesignerMapper";
	
	SqlSession sqlSession;
	
	public static DesignerDao getInstance(SqlSession sqlSession) { 
		dao.sqlSession = sqlSession; 
		return dao;
	}

	@Override
	public List<Designer> selectList() throws SQLException {
		return sqlSession.selectList(namespace + ".selectList");
	}
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}












