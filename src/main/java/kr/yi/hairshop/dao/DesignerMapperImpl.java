package kr.yi.hairshop.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.yi.hairshop.dto.Designer;
import kr.yi.hairshop.util.MyBatisSqlSessionFactory;

public class DesignerMapperImpl implements DesignerMapper{
	private String namespace="kr.yi.hairshop.dao.DesignerMapper";

	@Override
	public List<Designer> selectDesignerByAll() {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectList(namespace+".selectDesignerByAll");
		}
	}
	
	@Override
	public int insertDesigner(Designer ds) {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			int res = sqlSession.insert(namespace+".insertDesigner", ds);
			sqlSession.commit();
			return res;
		}
	}

	@Override
	public int deleteDesigner(int dNo) {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			int res = sqlSession.insert(namespace+".deleteDesigner", dNo);
			sqlSession.commit();
			return res;
		}
	}

	@Override
	public int updateDesigner(Designer ds) {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			int res = sqlSession.insert(namespace+".updateDesigner", ds);
			sqlSession.commit();
			return res;
		}
	}

	@Override
	public List<Designer> selectDesignerByNo(int dNo) {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectList(namespace+".selectDesignerByNo",dNo);
		}
	}

	@Override
	public Designer selelctDesignerById(String id) {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectOne(namespace+".selelctDesignerById",id);
		}
	}
	
	@Override
	public List<Designer> selectDesignerByMgn() {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectList(namespace+".selectDesignerByMgn");
		}
	}

	@Override
	public Designer selectByNameAndGrade(Map<String, String> map) {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectOne(namespace+".selectByNameAndGrade",map);
		}
	}

	@Override
	public int selectMinNo() {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			Designer designer= sqlSession.selectOne(namespace+".selectMinNo");
			return designer.getdNo();
		}
	}

}