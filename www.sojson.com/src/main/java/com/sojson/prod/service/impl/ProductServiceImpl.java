package com.sojson.prod.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sojson.common.model.UUser;
import com.sojson.core.mybatis.BaseMybatisDao;
import com.sojson.core.mybatis.page.Pagination;
import com.sojson.core.shiro.token.manager.TokenManager;
import com.sojson.prod.dao.ProductMapper;
import com.sojson.prod.model.Product;
import com.sojson.prod.service.ProductService;

@Service
public class ProductServiceImpl extends BaseMybatisDao<ProductMapper> implements ProductService {

	@Resource
	ProductMapper productMapper;
	
	@SuppressWarnings("unchecked")
	@Override
	public Pagination<Product> findPage(Map<String, Object> resultMap,
			Integer pageNo, Integer pageSize) {
		return super.findPage(resultMap, pageNo, pageSize);
	}

	@Override
	public List<Product> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Product insertSelective(Product record) {
		UUser token = TokenManager.getToken();
		Date date =  new Date();
		record.setCreateTime(date);
		record.setCreateTor(token.getId());
		record.setStatus(Product._1);
		productMapper.insertSelective(record);
		return record;
	}

	@Override
	public List<String> getProdName() {
		return productMapper.getProdName();
	}

	@Override
	public List<String> getProdArea(String prodName) {
		// TODO Auto-generated method stub
		return productMapper.getProdArea(prodName);
	}

	@Override
	public List<String> getMaterial(String prodName, String prodArea) {
		// TODO Auto-generated method stub
		return productMapper.getMaterial(prodName,prodArea);
	}

	@Override
	public List<String> getSpecifications(String prodName, String prodArea,
			String material) {
		// TODO Auto-generated method stub
		return productMapper.getSpecifications(prodName,prodArea,material);
	}

	
	
	
	
}
