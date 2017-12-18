package com.sojson.account.dao;

import java.util.List;

import com.sojson.account.model.Account;

public interface AccountMapper {
	List<Account> list();
	
	int insertSelective(Account record);
	
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