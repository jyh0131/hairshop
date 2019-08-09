package kr.yi.hairshop.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.yi.hairshop.dto.Review;
import kr.yi.hairshop.util.MyBatisSqlSessionFactory;

public class ReviewMapperImpl implements ReviewMapper{
	
	private static final ReviewMapperImpl dao = new ReviewMapperImpl();
	private static final String namespace="kr.yi.hairshop.dao.ReviewMapper";
	
	SqlSession sqlSession;
	
	public static ReviewMapper getInstance(SqlSession sqlSession) { 
		dao.sqlSession = sqlSession; 
		return dao;
	}
	
	@Override
	public List<Review> selectReview() {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectList(namespace+".selectReview");
		}
	}

	@Override
	public List<Review> selectBoardManager() {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectList(namespace+".selectBoardManager");
		}
	}
	public void insertReview(Review review) throws SQLException {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			sqlSession.insert(namespace + ".insertReview", review);
			sqlSession.commit();
			return;
		}
		
	}

	@Override
	public void deleteReview(int rNo) throws SQLException {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			sqlSession.delete(namespace + ".deleteReview", rNo);
			sqlSession.commit();
			return;
		}
		
		
	}

	@Override
	public Review selectListByNo(int rNo) throws SQLException {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectOne(namespace+".selectListByNo", rNo);
		}
	}

	@Override
	public void updateReview(Review review) throws SQLException {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			sqlSession.update(namespace + ".updateReview", review);
			sqlSession.commit();
			return;
		}
	}

	@Override
	public int insertManagerBoard(Review review) {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			int res=sqlSession.insert(namespace + ".insertManagerBoard", review);
			sqlSession.commit();
			return res;
		}
	}

}