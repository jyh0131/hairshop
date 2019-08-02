package kr.yi.hairshop.dao;

import java.util.List;

import kr.yi.hairshop.dto.Tax;

public interface TaxMapper {
	List<Tax> selectTaxByAll();
	int insertTax(Tax tax);
}