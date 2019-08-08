package kr.yi.hairshop.dao;

import org.apache.ibatis.session.SqlSession;

import kr.yi.hairshop.dto.Snsinfo;
import kr.yi.hairshop.util.MyBatisSqlSessionFactory;

public class SnsinfoMapperImpl implements SnsinfoMapper {
	private String namespace="kr.yi.hairshop.dao.SnsinfoMapper";
	
	@Override
	public Snsinfo selectById(String id) {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectOne(namespace+".selectById",id);
		}
	}

	@Override
	public int insertSnsinfo(Snsinfo snsinfo) {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			int res = sqlSession.insert(namespace+".insertSnsinfo", snsinfo);
			sqlSession.commit();
			return res;
		}
	}

	@Override
	public int deleteSnsinfo(String id) {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			int res = sqlSession.insert(namespace+".deleteSnsinfo", id);
			sqlSession.commit();
			return res;
		}
	}



}
