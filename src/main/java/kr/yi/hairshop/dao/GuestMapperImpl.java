package kr.yi.hairshop.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.yi.hairshop.dto.Guest;
import kr.yi.hairshop.util.MyBatisSqlSessionFactory;

public class GuestMapperImpl implements GuestMapper {
	private String namespace = "kr.yi.hairshop.dao.GuestMapper";

	@Override
	public List<Guest> selectGuestByAll() {
		try (SqlSession sqlSession = MyBatisSqlSessionFactory.openSession();) {
			return sqlSession.selectList(namespace + ".selectGuestByAll");
		}
	}

	@Override
	public int insertGuest(Guest guest) {
		try (SqlSession sqlSession = MyBatisSqlSessionFactory.openSession();) {
			int res = sqlSession.insert(namespace + ".insertGuest", guest);
			sqlSession.commit();
			return res;
		}
	}

	@Override
	public int updateGuest(Guest guest) {
		try (SqlSession sqlSession = MyBatisSqlSessionFactory.openSession();) {
			int res = sqlSession.update(namespace + ".updateGuest", guest);
			sqlSession.commit();
			return res;
		}
	}


	@Override
	public void deleteGuest(int getgNo) {
		try (SqlSession sqlSession = MyBatisSqlSessionFactory.openSession();) {
			int res = sqlSession.delete(namespace + ".deleteGuest", getgNo);
			sqlSession.commit();
			return;
		}
	}

	@Override
	public List<Guest> selectGuestBygName(String gName) {
		try (SqlSession sqlSession = MyBatisSqlSessionFactory.openSession();) {
			return sqlSession.selectList(namespace + ".selectGuestBygName",gName);
		}
	}

	@Override
	public int insertGuestByWorkMain(Guest guest) {
		try (SqlSession sqlSession = MyBatisSqlSessionFactory.openSession();) {
			sqlSession.insert(namespace + ".insertGuestByWorkMain", guest);
			sqlSession.commit();
			return guest.getgNo();
		}
	}

	@Override
	public Guest selectById(String id) {
		try (SqlSession sqlSession = MyBatisSqlSessionFactory.openSession();) {
			return sqlSession.selectOne(namespace + ".selectById", id);
		}
	}

	@Override
	public Guest selectGuestByGNameGTel(Map<String, String> map) {
		try (SqlSession sqlSession = MyBatisSqlSessionFactory.openSession();) {
			return sqlSession.selectOne(namespace + ".selectGuestByGNameGTel",map);
		}
	}


	
}
