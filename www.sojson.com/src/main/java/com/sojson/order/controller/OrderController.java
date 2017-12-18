package com.sojson.order.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sojson.common.controller.BaseController;
import com.sojson.common.utils.LoggerUtils;
import com.sojson.core.mybatis.page.Pagination;
import com.sojson.order.model.Order;
import com.sojson.order.service.OrderService;
import com.sojson.prod.model.Product;
import com.sojson.prod.service.ProductService;
import com.sojson.user.service.UUserService;

/**
 * 
 * 
 * 订单管理
 * 
 * <p>
 * 
 * 区分　责任人　日期　　　　说明<br/>
 * 创建　刘潇　2017年12月5日 　<br/>
 * <p>
 * *******
 * <p>
 * @author liuxiao
 * @version 1.0,2017年12月5日 <br/>
 * 
 */
@Controller
@Scope(value="prototype")
@RequestMapping("order")
public class OrderController extends BaseController {

	@Resource
	UUserService userService;
	
	@Resource
	ProductService productService;
	
	@Resource
	OrderService orderService;
	/**
	 * 个人资料
	 * @return
	 */
	@RequestMapping(value="index",method=RequestMethod.GET)
	public ModelAndView orderIndex(String findContent,ModelMap modelMap,Integer pageNo){
		modelMap.put("findContent", findContent);
		Pagination<Order> orders = orderService.findPage(modelMap,pageNo,pageSize);
		return new ModelAndView("order/orderInfo","page",orders);
	}
	
	/**
	 * 业务开单
	 * @return
	 */
	@RequestMapping(value="addOrder",method=RequestMethod.GET)
	public ModelAndView addOrder(String findContent,ModelMap modelMap,Integer pageNo){
//		modelMap.put("findContent", findContent);
//		Pagination<Order> orders = orderService.findPage(modelMap,pageNo,pageSize);
		return new ModelAndView("order/orderAdd");
	}
	
	/**
	 * 产品添加
	 * @param product
	 * @return
	 */
	@RequestMapping(value="addProd",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> addProd(Product product){
		try {
			Product entity = productService.insertSelective(product);
			resultMap.put("status", 200);
			resultMap.put("entity", entity);
		} catch (Exception e) {
			resultMap.put("status", 500);
			resultMap.put("message", "添加失败，请刷新后再试！");
			LoggerUtils.fmtError(getClass(), e, "添加产品报错。source[%s]", product.toString());
		}
		return resultMap;
	}
	
	/**
	 * 偷懒一下，通用页面跳转
	 * @param page
	 * @return
	 *//*
	@RequestMapping(value="{page}",method=RequestMethod.GET)
	public ModelAndView toPage(@PathVariable("page")String page){
		return new ModelAndView(String.format("user/%s", page));
	}
	*//**
	 * 密码修改
	 * @return
	 *//*
	@RequestMapping(value="updatePswd",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> updatePswd(String pswd,String newPswd){
		//根据当前登录的用户帐号 + 老密码，查询。
		String email = TokenManager.getToken().getEmail();
				pswd = UserManager.md5Pswd(email, pswd);
		UUser	user = userService.login(email, pswd);
		
		if("admin".equals(email)){
			resultMap.put("status", 300);
			resultMap.put("message", "管理员不准修改密码。");
			return resultMap;
		}
		
		if(null == user){
			resultMap.put("status", 300);
			resultMap.put("message", "密码不正确！");
		}else{
			user.setPswd(newPswd);
			//加工密码
			user = UserManager.md5Pswd(user);
			//修改密码
			userService.updateByPrimaryKeySelective(user);
			resultMap.put("status", 200);
			resultMap.put("message", "修改成功!");
			//重新登录一次
			TokenManager.login(user, Boolean.TRUE);
		}
		return resultMap;
	}
	*//**
	 * 个人资料修改
	 * @return
	 *//*
	@RequestMapping(value="updateSelf",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> updateSelf(UUser entity){
		try {
			userService.updateByPrimaryKeySelective(entity);
			resultMap.put("status", 200);
			resultMap.put("message", "修改成功!");
		} catch (Exception e) {
			resultMap.put("status", 500);
			resultMap.put("message", "修改失败!");
			LoggerUtils.fmtError(getClass(), e, "修改个人资料出错。[%s]", JSONObject.fromObject(entity).toString());
		}
		return resultMap;
	}*/
}
