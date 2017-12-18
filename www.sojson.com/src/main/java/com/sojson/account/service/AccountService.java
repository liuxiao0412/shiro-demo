package com.sojson.account.service;

import java.util.List;
import java.util.Map;

import com.sojson.account.model.Account;
import com.sojson.core.mybatis.page.Pagination;

public interface AccountService {
	
	Pagination<Account> findPage(Map<String, Object> resultMap, Integer pageNo,
			Integer pageSize);
	
	List<Account> list();
	
	Account insertSelective(Account record);

	/*int deleteByPrimaryKey(Long id);

	UUser insert(UUser record);

    UUser insertSelective(UUser record);

    UUser selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UUser record);

    int updateByPrimaryKey(UUser record);
    
    UUser login(String email ,String pswd);

	UUser findUserByEmail(String email);

	--Pagination<UUser> findByPage(Map<String, Object> resultMap, Integer pageNo,
			Integer pageSize);

	Map<String, Object> deleteUserById(String ids);

	Map<String, Object> updateForbidUserById(Long id, Long status);

	Pagination<UserRoleAllocationBo> findUserAndRole(ModelMap modelMap,
			Integer pageNo, Integer pageSize);

	List<URoleBo> selectRoleByUserId(Long id);

	Map<String, Object> addRole2User(Long userId, String ids);

	Map<String, Object> deleteRoleByUserIds(String userIds);*/
}
