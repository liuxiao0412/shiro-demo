package com.sojson.prod.dao;

import java.util.List;

import com.sojson.prod.model.Product;

public interface ProductMapper {
	List<Product> list();
	
	int insertSelective(Product record);
	
	List<String> getProdName();
	
	List<String> getProdArea(String prodName);
	
	List<String> getMaterial(String prodName,String prodArea);
	
	List<String> getSpecifications(String prodName,String prodArea,String material);
	
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