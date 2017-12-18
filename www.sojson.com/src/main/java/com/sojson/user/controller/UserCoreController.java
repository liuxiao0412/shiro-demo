package com.sojson.user.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.apache.http.HttpRequest;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.sojson.common.controller.BaseController;
import com.sojson.common.model.ChildMenu;
import com.sojson.common.model.Menu;
import com.sojson.common.model.UUser;
import com.sojson.common.utils.LoggerUtils;
import com.sojson.core.shiro.token.manager.TokenManager;
import com.sojson.user.manager.UserManager;
import com.sojson.user.service.UUserService;

/**
 * 
 * 开发公司：itboy.net<br/>
 * 版权：itboy.net<br/>
 * <p>
 * 
 * 用户管理
 * 
 * <p>
 * 
 * 区分　责任人　日期　　　　说明<br/>
 * 创建　周柏成　2016年5月3日 　<br/>
 * <p>
 * *******
 * <p>
 * @author zhou-baicheng
 * @email  i@itboy.net
 * @version 1.0,2016年5月3日 <br/>
 * 
 */
@Controller
@Scope(value="prototype")
@RequestMapping("user")
public class UserCoreController extends BaseController {

	@Resource
	UUserService userService;
	/**
	 * 个人资料
	 * @return
	 */
	@RequestMapping(value="index",method=RequestMethod.GET)
	public ModelAndView userIndex(Model model){
		List<Menu> list = new ArrayList<>();
		List<ChildMenu> childMenu = new ArrayList<>();
		ChildMenu a = new ChildMenu();
		a.setName("产品信息");
		a.setHref("/prod/index.shtml");
		ChildMenu b = new ChildMenu();
		b.setName("入库管理");
		b.setHref("/stock/index.shtml");
		childMenu.add(a);
		childMenu.add(b);
		Menu menu1 = new Menu();
		menu1.setName("库存管理");
		menu1.setList(childMenu);
		list.add(menu1);
		//model.addAttribute("myMenu", "[{\"name\": \"库存管理\",\"list\": [{\"href\": \"${basePath}/prod/index.shtml\", \"name\": \"产品信息\"},{\"href\": \"http://localhost:8080/wansf/prod/index.shtml\", \"name\": \"产品信息\"}]}]");
		//model.addAttribute("myMenu",JSON.toJSON(list));
		//System.out.println(JSON.toJSON(list));
		return new ModelAndView("user/index2");
	}
	
	@RequestMapping(value="getMenu",method=RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> getMenu(HttpServletRequest request){
		//resultMap.put("myMenu", "[{\"name\": \"库存管理\",\"list\": [{\"href\": \"${basePath}/prod/index.shtml\", \"name\": \"产品信息\"},{\"href\": \"http://localhost:8080/wansf/prod/index.shtml\", \"name\": \"产品信息\"}]}]");
		List<Menu> list = new ArrayList<>();
		List<ChildMenu> childMenu = new ArrayList<>();
		List<ChildMenu> childMenu2 = new ArrayList<>();
		List<ChildMenu> childMenu3 = new ArrayList<>();
		ChildMenu a = new ChildMenu();
		a.setName("产品信息");
		a.setHref(request.getContextPath()+"/prod/index.shtml");
		ChildMenu b = new ChildMenu();
		b.setName("入库管理");
		b.setHref(request.getContextPath()+"/stock/index.shtml");
		ChildMenu d = new ChildMenu();
		d.setName("订单管理");
		d.setHref(request.getContextPath()+"/order/index.shtml");
		ChildMenu e = new ChildMenu();
		e.setName("业务开单");
		e.setHref(request.getContextPath()+"/order/addOrder.shtml");
		ChildMenu f = new ChildMenu();
		f.setName("账目管理");
		f.setHref(request.getContextPath()+"/account/index.shtml");
		childMenu.add(a);
		childMenu.add(b);
		childMenu2.add(e);
		childMenu2.add(d);
		childMenu3.add(f);
		Menu menu1 = new Menu();
		menu1.setName("库存管理");
		menu1.setList(childMenu);
		Menu menu2 = new Menu();
		menu2.setName("业务管理");
		menu2.setList(childMenu2);
		Menu menu3 = new Menu();
		menu3.setName("账务管理");
		menu3.setList(childMenu3);
		
		list.add(menu1);
		list.add(menu2);
		list.add(menu3);
		//model.addAttribute("myMenu", "[{\"name\": \"库存管理\",\"list\": [{\"href\": \"${basePath}/prod/index.shtml\", \"name\": \"产品信息\"},{\"href\": \"http://localhost:8080/wansf/prod/index.shtml\", \"name\": \"产品信息\"}]}]");
		resultMap.put("myMenu",JSON.toJSON(list));
		
		return resultMap;
	}
	
	/**
	 * 个人资料
	 * @return
	 */
	@RequestMapping(value="index2",method=RequestMethod.GET)
	public ModelAndView userIndex2(){
		
		return new ModelAndView("user/index");
	}
	
	
	/**
	 * 偷懒一下，通用页面跳转
	 * @param page
	 * @return
	 */
	@RequestMapping(value="{page}",method=RequestMethod.GET)
	public ModelAndView toPage(@PathVariable("page")String page){
		return new ModelAndView(String.format("user/%s", page));
	}
	/**
	 * 密码修改
	 * @return
	 */
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
	/**
	 * 个人资料修改
	 * @return
	 */
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
	}
}
