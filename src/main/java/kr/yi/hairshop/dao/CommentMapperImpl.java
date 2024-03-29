package kr.yi.hairshop.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.yi.hairshop.dto.Comment;
import kr.yi.hairshop.util.MyBatisSqlSessionFactory;

public class CommentMapperImpl implements CommentMapper{
	
	private static final CommentMapperImpl dao = new CommentMapperImpl();
	private static final String namespace="kr.yi.hairshop.dao.CommentMapper";
	
	SqlSession sqlSession;
	
	public static CommentMapper getInstance(SqlSession sqlSession) { 
		dao.sqlSession = sqlSession; 
		return dao;
	}

	@Override
	public List<Comment> selectComment(int rNo) {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectList(namespace+".selectComment", rNo);
		}
	}

	@Override
	public void deleteComment(int cNo) throws SQLException {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			sqlSession.delete(namespace + ".deleteComment", cNo);
			sqlSession.commit();
			return;
		}
	}

	@Override
	public void insertComment(Comment comment) throws SQLException {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			sqlSession.insert(namespace + ".insertComment", comment);
			sqlSession.commit();
			return;
		}
	}

	@Override
	public void updateComment(Comment comment) throws SQLException {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			sqlSession.update(namespace + ".updateComment", comment);
			sqlSession.commit();
			return;
		}
	}

	@Override
	public List<Comment> selectAll() throws SQLException {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectList(namespace+".selectAll");
		}
	}

	@Override
	public List<Comment> selectAllByrNo(int rNo) throws SQLException {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectList(namespace+".selectAllByrNo", rNo);
		}
	}
	
	

}