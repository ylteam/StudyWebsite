package com.tjnu.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.stereotype.Controller;

import com.tjnu.model.UserInfo;
import com.tjnu.service.IUserService;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.opensymphony.xwork2.ActionSupport;

@Controller
public class UserAction extends ActionSupport implements ServletRequestAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private HttpServletRequest request;

	@Resource
	private IUserService userService;
	
	private UserInfo user;
	
	public UserInfo getUser() {
		return user;
	}
	public void setUser(UserInfo user) {
		this.user = user;
	}

	//登录
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public void login() throws Exception{
		HttpSession session=request.getSession();
		UserInfo currentUser=userService.findUserByNameAndPassword(user);
		
		Map map = new HashMap();
		if(currentUser!=null){
			session.setAttribute("currentUser", currentUser);
			map.put("isSuccess", true);
			map.put("msg", "登录成功");
			if("0".equals(currentUser.getUserType())){
				map.put("role", "manager");
			}else{
				map.put("role", "student");
			}
		}else{
			map.put("isSuccess", false);
			map.put("msg", "用户名或密码错误！");
		}
		String userJson = JSON.toJSONString(map,SerializerFeature.DisableCircularReferenceDetect);
		HttpServletResponse response=ServletActionContext.getResponse();  
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();  
	    out.println(userJson);  
	    out.flush();  
	    out.close();
		
	}
	
	public String logout() {
		HttpSession session = request.getSession();
		session.removeAttribute("currentUser");
		return "logout";
	}
	
	public String toRegister(){
		return "register";
	}
	
	//注册
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public void register() throws Exception{
		String username = user.getUsername();
		System.out.println(username);
		System.out.println(user.getPassword());
		System.out.println(user.getEmail());
		
		Map map = new HashMap();
		UserInfo user1 = userService.findUserByUsername(username);
		if(user1 != null){
			map.put("isSuccess",false);
			map.put("msg", "用户名已存在");
		}else{
			user.setUserType("1");
			userService.saveUser(user);
			map.put("isSuccess", true);
			map.put("msg", "注册成功");
		}
		String mapJson = JSON.toJSONString(map,SerializerFeature.DisableCircularReferenceDetect);
		HttpServletResponse response=ServletActionContext.getResponse();  
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();  
	    out.println(mapJson);  
	    out.flush();  
	    out.close();
		
	}
	//重置密码
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public void repassword() throws IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String rePassword = request.getParameter("rePassword");
		user.setUsername(username);
		user.setPassword(password);
		UserInfo cutUser=userService.findUserByNameAndPassword(user);
		Map map = new HashMap();
		if(null != cutUser){
			cutUser.setPassword(rePassword);
			userService.updateUser(cutUser);
			map.put("isSuccess", true);
			map.put("msg", "密码重置成功");
		}else{
			map.put("isSuccess", false);
			map.put("msg", "原始密码错误");
		}
		String userJson = JSON.toJSONString(map,SerializerFeature.DisableCircularReferenceDetect);
		HttpServletResponse response=ServletActionContext.getResponse();  
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();  
	    out.println(userJson);  
	    out.flush();  
	    out.close();
	}
	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;
	}

}
