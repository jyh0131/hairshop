package kr.yi.hairshop.dao;

import java.sql.SQLException;
import java.util.List;

import kr.yi.hairshop.model.Designer;

public interface DesignerDao {

	public List<Designer> selectList() throws SQLException;

}
