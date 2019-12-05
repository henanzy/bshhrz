package com.hnzy.hot.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hnzy.hot.pojo.User;
import com.hnzy.hot.pojo.YhInfo;
import com.hnzy.hot.service.UserService;
import com.hnzy.hot.util.MD5Util;
import com.hnzy.hot.util.StringUtil;

import net.sf.json.JSONObject;

@Controller


@RequestMapping("user")
public class UserController {
	@Autowired
	UserService userServer;
	
	public List<YhInfo> YhInfoList;
	//跳转到登录页面
		@RequestMapping("/toLogin")
		public String tologin(){
			return"index";
		}
		//来电弹屏和首页
    	@RequestMapping("/home" )
    	public String home(String mobile,HttpServletRequest request,HttpSession session){
    		
    		
    		return "home";
    	}
    	
    	@RequestMapping("canssz")
    	public String canssz() {

    		return "hrz/canssz";
    	}
    	
    	//参数显示
    	@RequestMapping("csxs")
    	public String csxs(){
    		
    		return "hrz/csxs";
    	}
    	
    	@RequestMapping("His")
    	public String list(HttpServletRequest request){
    		return "hrz/lssj";
    		
    	}
    	
    	@RequestMapping("hrz")
    	public String hrz(){
    	
    		return "hrz/hrzxx";
    	}
    	
    	@RequestMapping("Map")
    	public String selMap(){
    		return "hrz/map";
    		
    	}
    	
    	//水电热分析
    	@RequestMapping("sdrfx")
    	public String sdrfx(){
    		return"nhjk/sdrfx";
    	}
    	
    	@RequestMapping("xtkz")
    	public String xtkz() {

    		return "xtkz";
    	}
    	@RequestMapping("tjfx")
    	public String tjfx(){
    		return "hrz/tongjfx2";
    	}
    	
    	@RequestMapping("sbkztq")
    	public String sbkztq() throws UnsupportedEncodingException {
    		return "hrz/qhbc";
    	}

    	
    	@RequestMapping("/dbjc")
    	public String dbjc(){
    		return "xxgl/dbjc";
    	}
    	
    	@RequestMapping("/left")
    	public String left(){
    		return "left";
    	}
    	
    	@RequestMapping("/error")
    	public String error(){
    		return "error";
    	}
    	
    	
    	@ResponseBody
    	@RequestMapping("/login")
		public JSONObject login(HttpSession session,String username,String password,HttpServletRequest request) throws UnsupportedEncodingException{
			JSONObject jsonObject= new JSONObject();
			if (StringUtil.isNoEmpty(username) && StringUtil.isNoEmpty(password)) {
				username=new String(username.getBytes("ISO-8859-1"),"utf-8")+"";
				password=new String(password.getBytes("ISO-8859-1"),"utf-8")+"";
				password=MD5Util.string2MD5(password);
				User info = userServer.findUserByNameAndMD5(username, password);			
				if(info!=null){
					
					request.getSession().setAttribute("admins", info);
					request.getSession().setAttribute("UserName", info.getUserName());
					request.getSession().setAttribute("PassWord", info.getPassword());
					request.getSession().setAttribute("ID", info.getId());

					jsonObject.put("msg","0");
					
				
			}else {

					jsonObject.put("msg", "1"); 
				}

			}
			return jsonObject;
		}
    	
    	
    	@ResponseBody
    	@RequestMapping("/yxsblogin")
		public JSONObject yxsblogin(HttpSession session,String username,String password,HttpServletRequest request) throws UnsupportedEncodingException{
			JSONObject jsonObject= new JSONObject();
			if (StringUtil.isNoEmpty(username) && StringUtil.isNoEmpty(password)) {
				username=new String(username.getBytes("ISO-8859-1"),"utf-8")+"";
				password=new String(password.getBytes("ISO-8859-1"),"utf-8")+"";
				password=MD5Util.string2MD5(password);
				
				User info = userServer.findUserByNameAndMD5(username, password);
				String u=(String) session.getAttribute("UserName");
				String uu=info.getUserName();
				if(info!=null&&info.getUserName().equals(session.getAttribute("UserName"))){
					jsonObject.put("msg","0");
			}else {

					jsonObject.put("msg", "1"); 
				}

			}
			return jsonObject;
		}
    	
    	@RequestMapping("updapwd")
    	@ResponseBody
    	public String updapwd(HttpSession session,HttpServletRequest request,String oldpassword ,String newpassword,String username) throws UnsupportedEncodingException {
//    		JSONObject jsonObject=new JSONObject();
    		       username=new String(username.getBytes("ISO-8859-1"),"utf-8");
    				
    				String password11=MD5Util.string2MD5(oldpassword);
    				String password12=MD5Util.string2MD5(newpassword);	
    				String msg="";
    				Integer ID=(Integer) session.getAttribute("ID");
//    				System.out.println(ID);
//    				System.out.println(password11);
//    				System.out.println(userServer.findUserPass(ID));
						if (password11.equals(userServer.findUserPass(ID))) {  
							User user =new User();
							user.setId(ID);
							user.setUserName(username);
							user.setPassword(password12);
							userServer.update(user);
							msg="0";
						}else{
							msg="1";
						} 

    				return msg;
    	}

    	
    	
    	//新增登录用户
    	@ResponseBody
    	@RequestMapping("addYh")
    	public JSONObject addYh(HttpServletRequest request,String username,String password) throws UnsupportedEncodingException{
    		 username=new String(username.getBytes("ISO-8859-1"),"utf-8");
    		JSONObject json=new JSONObject();
    		 //根据用户名字查找用户是否存在
    		 User user=userServer.findByName(username);
    		 if(user!=null){
    			 //用户名称已存在
    			 json.put("msg","0");
    		 }else{
    			  password=MD5Util.string2MD5(password);
    			 userServer.InsUsePass(username, password);
    			 json.put("msg","1");
    		 }
    		 
			return json;
    		
    	}	
    	
    	@RequestMapping("sbkz")
    	public String sbkz(){
    		return "hrz/sbkz";
    	}
    	
    	@RequestMapping("sssj")
    	public String sssj(){
    		return "hrz/sssj";
    	}
    	

    	/*企业条例国家法规*/
    	@RequestMapping("/guojfg")
    	public String guojfg(){
    		return "zhishiku/guojfg";
    	}
    	/*企业条例国家法规*/
    	@RequestMapping("/qiytl")
    	public String qiytl(String type){
    		return "zhishiku/qiytl";
    	}
    	/*企业条例行业知识*/
    	@RequestMapping("/hangyzs")
    	public String hangyzs(String type){
    		return "zhishiku/hangyzs";
    	}
    	/*企业条例行业知识*/
    	@RequestMapping("/wentjd")
    	public String wentjd(String type){
    		return "zhishiku/wentjd";
    	}
    	
    	
    	/*企业条例行业知识*/
    /*	@RequestMapping("/hangyzs")
    	public String hangyzs(){
    		return "zhishiku/hangyzs";
    	}*/
    	
    	/*企业条例行业知识*/
    	@RequestMapping("/xitsm")
    	public String xitsm(){
    		return "zhishiku/xitsm";
    	}
    	
    	/*企业条例行业知识*/
    	/*@RequestMapping("/wentjd")
    	public String wentjd(){
    		return "zhishiku/wentjd";
    	}*/
    	
    	/*员工定位*/
    	@RequestMapping("/shisdw")
    	public String shisdw(){
    		return "dingwei/shisdw";
    	}
    	/*员工定位*/
    	/*@RequestMapping("/shisdw")
    	public String shisdw(){
    		return "dingwei/shisdw";
    	}*/
    	//历史轨迹
    	@RequestMapping("/lisgj")
    	public String lisgj(){
    		return "dingwei/lisgj";
    	}
    	@RequestMapping("bjxx")
    	public String bjxx(){
    		return "hrz/lsbj";
    	}

    	
    	@RequestMapping("xzzj")
    	public String xzzj(){
    		return "xxgl/xzzj";
    	}
    	//关网结构
    	@RequestMapping("gwjg")
    	public String gwjg(){
    		return "xxgl/gwjg";
    	}
//    	备品信息
    	@RequestMapping("bpxx")
    	public String bpxx(){
    		return "xxgl/bpxx";

    	}
//    	日常维护机制
    	@RequestMapping("rcwh")
    	public String rcwh(){
    		return "weihgl/rcwh";
    	}
//    	抢修
    	@RequestMapping("qiangxiu")
    	public String qiangxiu(){
    		return "weihgl/qiangxiu";
    	}
//    	改造
    	@RequestMapping("gaizao")
    	public String gaizao(){
    		return "weihgl/gaizao";
    	}
//    	设备维护
    	@RequestMapping("shebwh")
    	public String shebwh(){
    		return "weihgl/shebwh";
    	}
    	
    	@RequestMapping("sbwhjl")
    	public String sbwhjl(){
    		return "weihgl/sbwhjl";
    	}
}