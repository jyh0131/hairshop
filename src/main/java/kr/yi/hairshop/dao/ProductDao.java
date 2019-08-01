package kr.yi.hairshop.dao;

import java.sql.SQLException;
import java.util.List;

import kr.yi.hairshop.model.Product;

public interface ProductDao {

	public List<Product> selectList() throws SQLException;

}
