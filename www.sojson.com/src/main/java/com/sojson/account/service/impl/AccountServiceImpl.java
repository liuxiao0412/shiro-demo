package com.sojson.account.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sojson.account.dao.AccountMapper;
import com.sojson.account.model.Account;
import com.sojson.account.service.AccountService;
import com.sojson.common.model.UUser;
import com.sojson.core.mybatis.BaseMybatisDao;
import com.sojson.core.mybatis.page.Pagination;
import com.sojson.core.shiro.token.manager.TokenManager;
import com.sojson.prod.model.Product;

@Service
public class AccountServiceImpl extends BaseMybatisDao<AccountMapper> implements AccountService {

	@Resource
	AccountMapper accountMapper;
	
	@SuppressWarnings("unchecked")
	@Override
	public Pagination<Account> findPage(Map<String, Object> resultMap,
			Integer pageNo, Integer pageSize) {
		return super.findPage(resultMap, pageNo, pageSize);
	}

	@Override
	public List<Account> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Account insertSelective(Account record) {
		UUser token = TokenManager.getToken();
		Date date =  new Date();
		record.setCreateTime(date);
		record.setCreateTor(token.getId());
		record.setStatus(Product._1);
		accountMapper.insertSelective(record);
		return record;
	}

	
	
	
	
}
