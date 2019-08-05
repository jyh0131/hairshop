package kr.yi.hairshop.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import kr.yi.hairshop.dto.WorkDialog;
import kr.yi.hairshop.util.MyBatisSqlSessionFactory;

public class WorkDialogMapperImpl implements WorkDialogMapper{
	private String namespace="kr.yi.hairshop.dao.WorkDialogMapper";
	

	@Override
	public List<WorkDialog> selectDListByNo(int dNo) {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectList(namespace+".selectDListByNo",dNo);
		}
	}

	@Override
	public List<WorkDialog> selectByAll() {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectList(namespace+".selectByAll");
		}
	}

	@Override
	public List<WorkDialog> selectByfivejoinMap(int dNo) {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectList(namespace+".selectByfivejoinMap", dNo);
		}
	}
	@Override
	public List<WorkDialog> selectWDGECPjoinByWNo(int wNo) {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectList(namespace+".selectWDGECPjoinByWNo",wNo);
		}
	}

	@Override
	public List<WorkDialog> selectWDGECPjoinByWDNoDate(Map<String, String> map) {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectList(namespace+".selectWDGECPjoinByWDNoDate",map);
		}
	}

	@Override
	public List<WorkDialog> selectWDGECPjoinByNo(int no) {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectList(namespace+".selectWDGECPjoinByNo", no);
		}
	}

	@Override
	public List<WorkDialog> selectReservDetail() {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectList(namespace+".selectReservDetail");
		}
	}

	@Override
	public List<WorkDialog> selectReservDetailByDate(Map<String, String> map) {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectList(namespace+".selectReservDetailByDate", map);
		}
	}

	@Override
	public int insertWorkDialogResWNo(WorkDialog workDialog) {
		try (SqlSession sqlSession = MyBatisSqlSessionFactory.openSession();) {
			sqlSession.insert(namespace + ".insertWorkDialogResWNo", workDialog);
			sqlSession.commit();
			return workDialog.getwNo();
		}
	}

	@Override
	public int insertChoice(Map<String, String> map) {
		try (SqlSession sqlSession = MyBatisSqlSessionFactory.openSession();) {
			int res = sqlSession.insert(namespace + ".insertChoice", map);
			sqlSession.commit();
			return res;
		}
	}

	@Override
	public int deleteChoice(int wNo) {
		try (SqlSession sqlSession = MyBatisSqlSessionFactory.openSession();) {
			int res = sqlSession.delete(namespace + ".deleteChoice", wNo);
			sqlSession.commit();
			return res;
		}
	}

	@Override
	public int updateWorkDialog(WorkDialog workDialog) {
		try (SqlSession sqlSession = MyBatisSqlSessionFactory.openSession();) {
			int res = sqlSession.update(namespace + ".updateWorkDialog", workDialog);
			sqlSession.commit();
			return res;
		}
	}

	@Override
	public int deleteWorkDialog(int wNo) {
		try (SqlSession sqlSession = MyBatisSqlSessionFactory.openSession();) {
			int res = sqlSession.update(namespace + ".deleteWorkDialog", wNo);
			sqlSession.commit();
			return res;
		}
	}

	@Override
	public List<WorkDialog> selectGuestBarChartPrice() {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectList(namespace+".selectGuestBarChartPrice");
		}
	}
	@Override
	public List<WorkDialog> selectTotalPriceByDesigner(int wDNo) {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectList(namespace+".selectTotalPriceByDesigner", wDNo);
		}
	}

	
	public List<WorkDialog> selectGuestBarChart() {
		try (SqlSession sqlSession = MyBatisSqlSessionFactory.openSession();) {
			return sqlSession.selectList(namespace + ".selectGuestBarChartPrice");
		}
	}
	@Override
	public List<WorkDialog> selectGuestBarChartCount() {
		try (SqlSession sqlSession = MyBatisSqlSessionFactory.openSession();) {
			return sqlSession.selectList(namespace + ".selectGuestBarChartCount");
		}
	}

	public List<WorkDialog> selectByDName() {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectList(namespace+".selectByDName");

		}
	}

	@Override
	public List<WorkDialog> selectByDateForChartMon(Map<String, String> map) {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectList(namespace+".selectByDateForChartMon",map);
		}
	}

	@Override
	public int updateWorkDialogWorkTime(WorkDialog workDialog) {
		try (SqlSession sqlSession = MyBatisSqlSessionFactory.openSession();) {
			int res = sqlSession.update(namespace + ".updateWorkDialogWorkTime", workDialog);
			sqlSession.commit();
			return res;
		}
	}

	@Override
	public List<WorkDialog> selectWDjoinByWDNoDate(Map<String, String> map) {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectList(namespace+".selectWDjoinByWDNoDate",map);
		}
	}

	@Override
	public List<WorkDialog> selectBygNameAndgTel(Map<String, String> map) {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			
			return sqlSession.selectList(namespace+".selectBygNameAndgTel",map);
		}
	}
	@Override
	public List<WorkDialog> selectByIdForReservState(Map<String, Object> map) {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectList(namespace+".selectByIdForReservState", map);
		}
	}

	@Override
	public int insertWorkNoGuestResWNo(WorkDialog workDialog) {
		try (SqlSession sqlSession = MyBatisSqlSessionFactory.openSession();) {
			sqlSession.insert(namespace + ".insertWorkNoGuestResWNo", workDialog);
			sqlSession.commit();
			return workDialog.getwNo();
		}
	}

	@Override
	public int updateWorkPrice(WorkDialog workDialog) {
		try (SqlSession sqlSession = MyBatisSqlSessionFactory.openSession();) {
			int res = sqlSession.update(namespace + ".updateWorkPrice", workDialog);
			sqlSession.commit();
			return res;
		}
	}

	@Override
	public List<WorkDialog> selectByAllLimit(Map<String, Integer> map) {
		try(SqlSession sqlSession=MyBatisSqlSessionFactory.openSession();){
			return sqlSession.selectList(namespace+".selectByAllLimit", map);
		}
	}



	

}