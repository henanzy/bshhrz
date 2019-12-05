package com.hnzy.hot.controller;

import java.io.UnsupportedEncodingException;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.jinterop.dcom.common.JIException;
import org.openscada.opc.lib.common.AlreadyConnectedException;
import org.openscada.opc.lib.common.ConnectionInformation;
import org.openscada.opc.lib.common.NotConnectedException;
import org.openscada.opc.lib.da.AddFailedException;
import org.openscada.opc.lib.da.DuplicateGroupException;
import org.openscada.opc.lib.da.Group;
import org.openscada.opc.lib.da.Item;
import org.openscada.opc.lib.da.Server;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hnzy.hot.util.DUtil;
import com.hnzy.hot.util.JSONSerializer;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("Csxx")
public class CsxxController {
	
	//参数显示
	@RequestMapping("csxs")
	public String csxs(){
		
		return "hrz/csxs";
	}
	@RequestMapping("rbjk")
	public String rbjk(HttpServletRequest request){
	       ConnectionInformation ci=OPCConfiguration.getCLSIDConnectionInfomation();
	       final Server server = new Server ( ci, Executors.newSingleThreadScheduledExecutor () );
	       Map<String,Object> dmap=new HashMap<String, Object>();
	       List<Map<String,Object>>list=new ArrayList<>();
	       String hrzname="北京华誉.新乡商务大厦";
	       String[] c=null;
		       Map<String,Object> maps=new HashMap<>();
		       Map<String, Item> map = null;
	            	     Group group = null;
	            				try {
									server.connect ();
										group = server.addGroup ( "sssj" );
										 group.setActive ( true );
										map = group.addItems(c);
										
								} catch (Exception e1) {
									// TODO Auto-generated catch block
									e1.printStackTrace();
								}
			  
	            for(String s : map.keySet()){  	
	            	//循环读
	                Item it = map.get(s);  
	                Object value;
					try {
			                String[] a=s.split("读数据.");
			            	String key=a[1];
			            
						value = it.read(true).getValue().getObject();
							boolean b=isNumeric(String.valueOf(value));
							if(b==false){
								  values="0";	
							}else{
								values=String.format("%.2f",value);	
							}
						 
						 dmap.put(key,values);
					} catch (JIException e) {
						e.printStackTrace();
					}
	            }
				/*maps.put("zdl", dmap.get("总电量"))*/;maps.put("ssll", dmap.get("瞬时流量"));
				maps.put("ssrl", dmap.get("瞬时热量"));maps.put("ljll", dmap.get("累计流量"));
				maps.put("ljrl", dmap.get("累计热量"));
					maps.put("gswd", dmap.get("供水温度"));maps.put("hswd", dmap.get("回水温度"));
					maps.put("gsyl", dmap.get("供水压力"));maps.put("hsyl", dmap.get("回水压力"));
//					maps.put("sxyw", dmap.get("水箱液位"));
					SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
					String time=df.format(new Date());// new Date()为获取当前系统时间
					maps.put("time", time);
					maps.put("hrz", "新乡商务大厦");
   	    server.dispose();
   	    list.add(maps);
   	  request.setAttribute("map", JSONSerializer.serialize(list));
		return "hrz/rbjk";	
	}
	
	 String values;
	@RequestMapping("selsbjk")
	@ResponseBody
	public JSONObject selsbjk(String hrzname ){
		JSONObject json=new JSONObject();
	       ConnectionInformation ci=OPCConfiguration.getCLSIDConnectionInfomation();
	       final Server server = new Server ( ci, Executors.newSingleThreadScheduledExecutor () );
	       Map<String,Object> dmap=new HashMap<String, Object>();
	       List<Map<String,Object>>list=new ArrayList<>();
	       String[] c=null;
		       Map<String,Object> maps=new HashMap<>();
		       Map<String, Item> map = null;
	            	     Group group = null;
	            				try {
									server.connect ();
										group = server.addGroup ( "sssj" );
										 group.setActive ( true );
										map = group.addItems(c);
										
								} catch (Exception e1) {
									// TODO Auto-generated catch block
									e1.printStackTrace();
								}
			  
	            for(String s : map.keySet()){  	
	            	//循环读
	                Item it = map.get(s);  
	                Object value;
					try {
			                String[] a=s.split("读数据.");
			            	String key=a[1];
			            
						 value = String.valueOf(it.read(true).getValue().getObject());
						
//							boolean b=isNumeric(String.valueOf(value));
//							if(b==false){
//								  values="0";	
//							}else{
//								values=String.format("%.2f",value);	
//							}
						 dmap.put(key,value);
					} catch (JIException e) {
						e.printStackTrace();
					}
	            }
			maps.put("ssll", dmap.get("瞬时流量"));
				maps.put("ssrl", dmap.get("瞬时热量"));maps.put("ljll", dmap.get("累计流量"));
				maps.put("ljrl", dmap.get("累计热量"));
					maps.put("gswd", dmap.get("供水温度"));maps.put("hswd", dmap.get("回水温度"));
				maps.put("hsyl", dmap.get("回水压力"));
					
					SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
					String time=df.format(new Date());// new Date()为获取当前系统时间
					maps.put("time", time);
					maps.put("hrz", "新乡商务大厦");
   	    server.dispose();
   	    list.add(maps);
   	    System.out.println(list);
     	json.put("list", list);
		return json;	
	}
	
	
	
	//判断是否是数字
		 public boolean isNumeric(String value){
	         Pattern pattern = Pattern.compile("-?[0-9]+.*[0-9]*");
	         Matcher isNum = pattern.matcher(value);
	         if( !isNum.matches() ){
	             return false;
	         }
	         return true;
	  }         				
	
	
	
	
	
	@RequestMapping("sssjxx")
	public String sssj(HttpServletRequest request){
		JSONObject json=new JSONObject();
	       ConnectionInformation ci=OPCConfiguration.getCLSIDConnectionInfomation();
	       final Server server = new Server ( ci, Executors.newSingleThreadScheduledExecutor () );
	       Map<String,Object> dmap=new HashMap<String, Object>();
	       List<Map<String,Object>>list=new ArrayList<>();
	    String hrzname="北京华誉.新乡商务大厦";
	       String[] c=null;
		       Map<String,Object> maps=new HashMap<>();
		       Map<String, Item> map = null;
	            	     Group group = null;
	            				try {
									server.connect ();
										group = server.addGroup ( "sssj" );
										 group.setActive ( true );
										 map = group.addItems(c);
									} catch (Exception e) {
										// TODO Auto-generated catch block
										e.printStackTrace();
									} 
			  
	            for(String s : map.keySet()){  	
	            	//循环读
	                Item it = map.get(s);  
	                Object value;
					try {
			                String[] a=s.split("读数据.");
			            	String key=a[1];
			            	
						value = it.read(true).getValue().getObject();
						boolean b=isNumeric(String.valueOf(value));
						if(b==false){
							  values="0";	
						}else{
							values=String.format("%.2f",value);	
						}
						 dmap.put(key,values);
					} catch (JIException e) {
						e.printStackTrace();
					}
	            }

	            
	            maps.put("zjlcwd1", dmap.get("主机1冷出温度"));maps.put("zjljwd1", dmap.get("主机1冷进温度"));
				maps.put("zjrcwd1", dmap.get("主机1热出温度"));maps.put("zjrjwd1", dmap.get("主机1热出温度"));
				maps.put("zjlcwd2", dmap.get("2#主机冷出温度"));maps.put("zjljwd2", dmap.get("2#主机冷进温度"));
				maps.put("zjrcwd2", dmap.get("2#主机热出温度"));maps.put("zjrjwd2", dmap.get("2#主机热进温度"));
				maps.put("zjlcwd3", dmap.get("3#主机冷出温度"));maps.put("zjljwd3", dmap.get("3#主机冷进温度"));
				maps.put("zjrcwd3", dmap.get("3#主机热出温度"));maps.put("zjrjwd3", dmap.get("3#主机热进温度"));
				maps.put("zjljwd4", dmap.get("4#主机冷出温度"));maps.put("zjlcwd4", dmap.get("4#主机冷进温度"));
				maps.put("zjrcwd4", dmap.get("4#主机热出温度"));maps.put("zjrjwd4", dmap.get("4#主机热进温度"));
				maps.put("zdl", dmap.get("总电量"));maps.put("Axdy", dmap.get("A项电压"));
				maps.put("Bxdy", dmap.get("B项电压"));maps.put("Cxdy", dmap.get("C项电压"));
				maps.put("ABxdy", dmap.get("AB项电压"));
				maps.put("BCxdy", dmap.get("BC项电压"));maps.put("CAxdy", dmap.get("CA项电压"));
				maps.put("Axdl", dmap.get("A项电流"));maps.put("Bxdl", dmap.get("B项电流"));
				maps.put("Cxdl", dmap.get("C项电流"));maps.put("ssll", dmap.get("瞬时流量"));
				maps.put("ssrl", dmap.get("瞬时热量"));maps.put("ljll", dmap.get("累计流量"));
				maps.put("ljrl", dmap.get("累计热量"));
					maps.put("gswd", dmap.get("供水温度"));maps.put("hswd", dmap.get("回水温度"));
					maps.put("gsyl", dmap.get("供水压力"));maps.put("hsyl", dmap.get("回水压力"));
					maps.put("sxyw", dmap.get("水箱液位"));
					SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
					String time=df.format(new Date());// new Date()为获取当前系统时间
					maps.put("time", time);
					maps.put("hrz", "新乡商务大厦");
      	    server.dispose();
      	    list.add(maps);
      	  request.setAttribute("map", JSONSerializer.serialize(list));
		return "hrz/sssj";
	}
	
	
	
	
	
	@RequestMapping("sssjxxS")
	@ResponseBody
	public JSONObject sssjxxS(HttpServletRequest request){
		JSONObject json=new JSONObject();
	       ConnectionInformation ci=OPCConfiguration.getCLSIDConnectionInfomation();
	       final Server server = new Server ( ci, Executors.newSingleThreadScheduledExecutor () );
	       Map<String,Object> dmap=new HashMap<String, Object>();
	       List<Map<String,Object>>list=new ArrayList<>();
	      String hrzname="北京华誉.新乡商务大厦";
	       String[] c=null;
		       Map<String,Object> maps=new HashMap<>();
		       Map<String, Item> map = null;
	            	     Group group = null;
	            				try {
									server.connect ();
										group = server.addGroup ( "sssj" );
										 group.setActive ( true );
										 map = group.addItems(c);
									} catch (Exception e) {
										// TODO Auto-generated catch block
										e.printStackTrace();
									} 
			  
	            for(String s : map.keySet()){  	
	            	//循环读
	                Item it = map.get(s);  
	                Object value;
					try {
			                String[] a=s.split("读数据.");
			            	String key=a[1];
			            	
						value = it.read(true).getValue().getObject();
						boolean b=isNumeric(String.valueOf(value));
						if(b==false){
							  values="0";	
						}else{
							values=String.format("%.2f",value);	
						}
						 dmap.put(key,values);
					} catch (JIException e) {
						e.printStackTrace();
					}
	            }

	            
	            maps.put("zjlcwd1", dmap.get("主机1冷出温度"));maps.put("zjljwd1", dmap.get("主机1冷进温度"));
				maps.put("zjrcwd1", dmap.get("主机1热出温度"));maps.put("zjrjwd1", dmap.get("主机1热出温度"));
				maps.put("zjlcwd2", dmap.get("2#主机冷出温度"));maps.put("zjljwd2", dmap.get("2#主机冷进温度"));
				maps.put("zjrcwd2", dmap.get("2#主机热出温度"));maps.put("zjrjwd2", dmap.get("2#主机热进温度"));
				maps.put("zjlcwd3", dmap.get("3#主机冷出温度"));maps.put("zjljwd3", dmap.get("3#主机冷进温度"));
				maps.put("zjrcwd3", dmap.get("3#主机热出温度"));maps.put("zjrjwd3", dmap.get("3#主机热进温度"));
				maps.put("zjljwd4", dmap.get("4#主机冷出温度"));maps.put("zjlcwd4", dmap.get("4#主机冷进温度"));
				maps.put("zjrcwd4", dmap.get("4#主机热出温度"));maps.put("zjrjwd4", dmap.get("4#主机热进温度"));
				maps.put("zdl", dmap.get("总电量"));maps.put("Axdy", dmap.get("A项电压"));
				maps.put("Bxdy", dmap.get("B项电压"));maps.put("Cxdy", dmap.get("C项电压"));
				maps.put("ABxdy", dmap.get("AB项电压"));
				maps.put("BCxdy", dmap.get("BC项电压"));maps.put("CAxdy", dmap.get("CA项电压"));
				maps.put("Axdl", dmap.get("A项电流"));maps.put("Bxdl", dmap.get("B项电流"));
				maps.put("Cxdl", dmap.get("C项电流"));maps.put("ssll", dmap.get("瞬时流量"));
				maps.put("ssrl", dmap.get("瞬时热量"));maps.put("ljll", dmap.get("累计流量"));
				maps.put("ljrl", dmap.get("累计热量"));
					maps.put("gswd", dmap.get("供水温度"));maps.put("hswd", dmap.get("回水温度"));
					maps.put("gsyl", dmap.get("供水压力"));maps.put("hsyl", dmap.get("回水压力"));
					maps.put("sxyw", dmap.get("水箱液位"));
					SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
					String time=df.format(new Date());// new Date()为获取当前系统时间
					maps.put("time", time);
					maps.put("hrz", "新乡商务大厦");
      	    server.dispose();
      	    list.add(maps);
//      	  request.setAttribute("map", JSONSerializer.serialize(list));
      	  json.put("map", list);
		return json;
	}
	
	
	
	//实时数据
	@RequestMapping("sssj")
	@ResponseBody
	public JSONObject sssj(String hrzname) throws UnsupportedEncodingException{
		JSONObject json=new JSONObject();
	       ConnectionInformation ci=OPCConfiguration.getCLSIDConnectionInfomation();
	       final Server server = new Server ( ci, Executors.newSingleThreadScheduledExecutor () );
	       Map<String,Object> dmap=new HashMap<String, Object>();
	       List<Map<String,Object>>list=new ArrayList<>();
	       String[] c=DUtil.csxs(hrzname);
		       Map<String,Object> maps=new HashMap<>();
		       Map<String, Item> map = null;
	            	     Group group = null;
	            				try {
									server.connect ();
										group = server.addGroup ( "sssj" );
										 group.setActive ( true );
												map = group.addItems(c);
											} catch (Exception e) {
												// TODO Auto-generated catch block
												e.printStackTrace();
											}
									
			  
	            for(String s : map.keySet()){  	
	            	//循环读
	                Item it = map.get(s);  
	                Object value;
					try {
			                String[] a=s.split("读数据.");
			            	String key=a[1];
			            
						value = it.read(true).getValue().getObject();
						boolean b=isNumeric(String.valueOf(value));
						if(b==false){
							  values="0";	
						}else{
							values=String.format("%.2f",value);	
						}
						 dmap.put(key,values);
					} catch (JIException e) {
						e.printStackTrace();
					}
	            }

	            
	            maps.put("zjlcwd1", dmap.get("主机1冷出温度"));maps.put("zjljwd1", dmap.get("主机1冷进温度"));
				maps.put("zjrcwd1", dmap.get("主机1热出温度"));maps.put("zjrjwd1", dmap.get("主机1热出温度"));
				maps.put("zjlcwd2", dmap.get("2#主机冷出温度"));maps.put("zjljwd2", dmap.get("2#主机冷进温度"));
				maps.put("zjrcwd2", dmap.get("2#主机热出温度"));maps.put("zjrjwd2", dmap.get("2#主机热进温度"));
				maps.put("zjlcwd3", dmap.get("3#主机冷出温度"));maps.put("zjljwd3", dmap.get("3#主机冷进温度"));
				maps.put("zjrcwd3", dmap.get("3#主机热出温度"));maps.put("zjrjwd3", dmap.get("3#主机热进温度"));
				maps.put("zjljwd4", dmap.get("4#主机冷出温度"));maps.put("zjlcwd4", dmap.get("4#主机冷进温度"));
				maps.put("zjrcwd4", dmap.get("4#主机热出温度"));maps.put("zjrjwd4", dmap.get("4#主机热进温度"));
				maps.put("zdl", dmap.get("总电量"));maps.put("Axdy", dmap.get("A项电压"));
				maps.put("Bxdy", dmap.get("B项电压"));maps.put("Cxdy", dmap.get("C项电压"));
				maps.put("ABxdy", dmap.get("AB项电压"));
				maps.put("BCxdy", dmap.get("BC项电压"));maps.put("CAxdy", dmap.get("CA项电压"));
				maps.put("Axdl", dmap.get("A项电流"));maps.put("Bxdl", dmap.get("B项电流"));
				maps.put("Cxdl", dmap.get("C项电流"));maps.put("ssll", dmap.get("瞬时流量"));
				maps.put("ssrl", dmap.get("瞬时热量"));maps.put("ljll", dmap.get("累计流量"));
				maps.put("ljrl", dmap.get("累计热量"));
					maps.put("gswd", dmap.get("供水温度"));maps.put("hswd", dmap.get("回水温度"));
					maps.put("gsyl", dmap.get("供水压力"));maps.put("hsyl", dmap.get("回水压力"));
					maps.put("sxyw", dmap.get("水箱液位"));
					SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
					String time=df.format(new Date());// new Date()为获取当前系统时间
					maps.put("time", time);
					maps.put("hrz", "新乡商务大厦");
         	    server.dispose();
         	    list.add(maps);
	            json.put("list", list);
	            System.out.println(JSONSerializer.serialize(maps));
	            return json;
	}
	
	
	
	
	
	@RequestMapping("xtkzSj")
	@ResponseBody
	public JSONObject showCsxs(String hrzname){
		JSONObject json=new JSONObject();
	       ConnectionInformation ci=OPCConfiguration.getCLSIDConnectionInfomation();
	       final Server server = new Server ( ci, Executors.newSingleThreadScheduledExecutor () );
		       String[] c=DUtil.csxs(hrzname);
		       Map<String,Object> maps=new HashMap<>();
		       Map<String, Item> map = null;
	            	     Group group = null;
	            				try {
									server.connect ();
										group = server.addGroup ( "Cxxs" );
										 group.setActive ( true );
										 map = group.addItems(c);
									} catch (Exception e) {
										// TODO Auto-generated catch block
										e.printStackTrace();
									}
			  
	            for(String s : map.keySet()){  	
	            	//循环读
	                Item it = map.get(s);  
	                Object value;
					try {
			                String[] a=s.split("读数据.");
			            	String key="d"+a[1];
			            	if(key.contains("#")){
			            		key=key.replace("#", "");
			            	}
			               
						value = it.read(true).getValue().getObject();
							boolean b=isNumeric(String.valueOf(value));
							if(b==false){
								  values="0";	
							}else{
								values=String.format("%.2f",value);	
							}
						 
						  maps.put(key,values);
					} catch (JIException e) {
						e.printStackTrace();
					}
	            }

            	server.dispose();
	            json.put("map", maps);
	            return json;
		
	}

}
