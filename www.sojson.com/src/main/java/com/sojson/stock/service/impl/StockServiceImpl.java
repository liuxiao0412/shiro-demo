package com.sojson.stock.service.impl;

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
import com.sojson.stock.dao.StockMapper;
import com.sojson.stock.model.Stock;
import com.sojson.stock.service.StockService;

@Service
public class StockServiceImpl extends BaseMybatisDao<StockMapper> implements StockService {

	@Resource
	ProductMapper productMapper;
	
	@Resource
	StockMapper stockMapper;
	
	@SuppressWarnings("unchecked")
	@Override
	public Pagination<Stock> findPage(Map<String, Object> resultMap,
			Integer pageNo, Integer pageSize) {
		return super.findPage(resultMap, pageNo, pageSize);
	}

	@Override
	public List<Stock> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Stock insertSelective(Stock record) {
		UUser token = TokenManager.getToken();
		Date date =  new Date();
		record.setCreateTime(date);
		record.setCreateTor(token.getId());
		record.setStatus(Product._1);
		stockMapper.insertSelective(record);
		return record;
	}

	
	
	
	
}
