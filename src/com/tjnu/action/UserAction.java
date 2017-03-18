package com.tjnu.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.stereotype.Controller;

import com.tjnu.model.UserInfo;
import com.tjnu.service.IUserService;
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
	private String error;
	
	public UserInfo getUser() {
		return user;
	}
	public void setUser(UserInfo user) {
		this.user = user;
	}
	
	public String getError() {
		return error;
	}
	public void setError(String error) {
		this.error = error;
	}

	//登录
	public String login() throws Exception{
		HttpSession session=request.getSession();
		UserInfo currentUser=userService.findUserByNameAndPassword(user);
		if(currentUser!=null){
			session.setAttribute("currentUser", currentUser);
			if("0" == currentUser.getUserType()){
				return "managerLogin_success";
			}else{
				return "login_success";
			}
		}else{
			error="用户名或密码错误";
			return "login_error";
		}
	}
	//注册
	public String register() throws Exception{
		/*String username = user.getUsername();
		UserInfo user1 = userService.findUserByUsername(username);
		if(null == user1){
			userService.saveUser(user);
			return "register_success";
		}else{
			error="用户名已存在";
			return "register_error";
		}*/
		user.setUserType("1");
		userService.saveUser(user);
		error="注册成功！";
		return "register_success";
	}
	//异步检测用户名是否已存在
	public void verifyUsername() throws IOException{
		String username = request.getParameter("username");
		UserInfo user1 = userService.findUserByUsername(username);
		String resultData;
		if(null == user1){
			resultData = "Y";
		}else{
			resultData = "N";
			error="用户名已存在";
		}
		HttpServletResponse response=ServletActionContext.getResponse();  
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter(); 
        out.write(resultData);
        out.flush();
        out.close();
	}
	//重置密码
	public void repassword() throws IOException {
		
	}
	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;
	}

}
