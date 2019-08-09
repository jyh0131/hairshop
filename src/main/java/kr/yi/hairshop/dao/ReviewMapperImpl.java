package kr.yi.hairshop.dao;

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

}