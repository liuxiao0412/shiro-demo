package com.sojson.stock.dao;

import java.util.List;

import com.sojson.stock.model.Stock;

public interface StockMapper {
	List<Stock> list();
	
	int insertSelective(Stock record);
	
    /*int deleteByPrimaryKey(Long id);

    int insert(UUser record);

    int insertSelective(UUser record);

    UUser selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UUser record);

    int updateByPrimaryKey(UUser record);

	UUser login(Map<String, Object> map);

	UUser findUserByEmail(String email);

	List<URoleBo> selectRoleByUserId(Long id);*/

}