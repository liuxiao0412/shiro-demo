package com.sojson.order.dao;

import java.util.List;

import com.sojson.order.model.Order;

public interface OrderMapper {
	List<Order> list();
	
	int insertSelective(Order record);
	
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