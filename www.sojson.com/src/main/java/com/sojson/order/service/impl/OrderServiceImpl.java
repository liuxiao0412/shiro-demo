package com.sojson.order.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sojson.common.model.UUser;
import com.sojson.core.mybatis.BaseMybatisDao;
import com.sojson.core.mybatis.page.Pagination;
import com.sojson.core.shiro.token.manager.TokenManager;
import com.sojson.order.dao.OrderMapper;
import com.sojson.order.model.Order;
import com.sojson.order.service.OrderService;
import com.sojson.prod.model.Product;

@Service
public class OrderServiceImpl extends BaseMybatisDao<OrderMapper> implements OrderService {

	@Resource
	OrderMapper orderMapper;
	
	@SuppressWarnings("unchecked")
	@Override
	public Pagination<Order> findPage(Map<String, Object> resultMap,
			Integer pageNo, Integer pageSize) {
		return super.findPage(resultMap, pageNo, pageSize);
	}

	@Override
	public List<Order> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Order insertSelective(Order record) {
		UUser token = TokenManager.getToken();
		Date date =  new Date();
		record.setCreateTime(date);
		record.setCreateTor(token.getId());
		record.setStatus(Product._1);
		orderMapper.insertSelective(record);
		return record;
	}

	
	
	
	
}
