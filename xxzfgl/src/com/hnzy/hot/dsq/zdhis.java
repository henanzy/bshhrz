package com.hnzy.hot.dsq;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.jinterop.dcom.common.JIException;
import org.openscada.opc.lib.common.ConnectionInformation;
import org.openscada.opc.lib.da.Group;
import org.openscada.opc.lib.da.Item;
import org.openscada.opc.lib.da.Server;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hnzy.hot.controller.OPCConfiguration;
import com.hnzy.hot.service.HistoryService;
import com.hnzy.hot.util.BjUtil;
import com.hnzy.hot.util.DUtil;
import com.hnzy.hot.util.JSONSerializer;

import net.sf.json.JSONObject;
@Controller
public class zdhis {
	@Autowired
	private HistoryService historyService;
	
	@RequestMapping("bj")
	public void bj(){
		  ConnectionInformation ci=OPCConfiguration.getCLSIDConnectionInfomation();
	       final Server server = new Server ( ci, Executors.newSingleThreadScheduledExecutor () );
		   String hrzname="北京华誉.新乡商务大厦";
	       String[] d=BjUtil.yxcs(hrzname);
		       Map<String, Item> map = null;
	            	     Group group = null;
	            				try {
									server.connect ();
	            					group = server.addGroup ( "groupbj" );
	            					 group.setActive ( true );
					                map = group.addItems(d);
								} catch (Exception e1) {
									// TODO Auto-generated catch block
									e1.printStackTrace();
								}
	            				if(map!=null){
	        					for (Entry<String, Item> temp : map.entrySet()) {
	        					
									try {
										String id= temp.getValue().getId();
		        						Object value = temp.getValue().read(true).getValue().getObject();

						            	String val=String.valueOf(value);
						            	
						                Date t=temp.getValue().read(true).getTimestamp().getTime();
						                String time = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss ").format(t.getTime());
						               
										 String[] a=id.split("读地址.");
							            	String key=a[1];
							        
//							           val="true";
							           if(val.equals("true")||val.equals("false")){
							        	   //读到更新实时数据
							        	    if(key.contains("无水流")){
							        	    	if(val.equals("true")){
							        	    		val="false";
							        	    	}else if(val.equals("false")){
							        	    		val="true";
							        	    	}
							        	    	
							        	    }
								             historyService.updateBj(key, val,time);
							           }
							           //报警
							            	if(val.equals("true")){
							            	
								                //根据key和换热站名字获取最后一次报警时间的结束时间是否为null
								               Map<String,String>s=historyService.findendtime("新乡商务大厦", key);
								               if(s!=null){
								               String endtime=s.get("endtime");
								              
								               if(null!=endtime){
								            	  //如果结束时间不为空则上次报警已经处理
								            	   historyService.InsHis("新乡商务大厦",key,time); 
								               }
								               }else{
								            	 //如果一次都没有报警
								            	   historyService.InsHis("新乡商务大厦",key,time);
								               }
							            		
							            	}else if(val.equals("false")){ //无报警
							            		//获取最后一次的报警信息
							            		  Map<String,String>s=historyService.findendtime("新乡商务大厦", key);
							            		  if(s!=null){
									              //----------------------修改------------------- 
							            		  String endtime=s.get("endtime");
									             //根据key和换热站名字获取最后一次报警时间的结束时间是否为null
									               if(null==endtime){
										            	 //如果最后一次不报警有报警信息结束时间为空
									            	   String bjtime=s.get("bjtime");
									            	   //更新报警结束时间
									            	   historyService.updatendtime("新乡商务大厦", key, bjtime, time);
									            	   
										               }
							            		  }
							            	}
							            	
									} catch (JIException e) {
										// TODO Auto-generated catch block
										e.printStackTrace();
									}
	        					}
	            				}
	        					 server.dispose();	
	            				
	}
	
	
	
	
	
	public void His(){
		   ConnectionInformation ci=OPCConfiguration.getCLSIDConnectionInfomation();
	       final Server server = new Server ( ci, Executors.newSingleThreadScheduledExecutor () );
		   String hrzname="北京华誉.新乡商务大厦";
	       String[] d=null;
		       Map<String,Object> dmap=new HashMap<String, Object>();
		       Map<String,Object> maps=new HashMap<String, Object>();
		       Map<String, Item> map = null;
	            	     Group group = null;
	            				try {
									server.connect ();
	            					group = server.addGroup ( "groupHis" );
	            					 group.setActive ( true );
					                map = group.addItems(d);
								} catch (Exception e1) {
									// TODO Auto-generated catch block
									e1.printStackTrace();
								}
	            				if(map!=null){
	        					for (Entry<String, Item> temp : map.entrySet()) {
	        						try {
	        							Thread.sleep(20);
	        						} catch (InterruptedException e) {
	        							e.printStackTrace();
	        						}
									try {
										String id= temp.getValue().getId();
		        						Object value = temp.getValue().read(true).getValue().getObject();
										 String[] a=id.split("读数据.");
							            	String key=a[1];
							            	boolean b=isNumeric(String.valueOf(value));
							            	
							            	if(b==false){
							            		try {
													Thread.sleep(500);
												} catch (InterruptedException e) {
													// TODO Auto-generated catch block
													e.printStackTrace();
												}
							            		 value = temp.getValue().read(true).getValue().getObject();
							            	}
//							                  String s=String.format("%.1f",value);
							                   b=isNumeric(String.valueOf(value));
          									if(b==false){
          										value="0";	
          									}else{
          										value=String.format("%.1f",value);	
          									}
							                  dmap.put(key, value);
									} catch (JIException e) {
										// TODO Auto-generated catch block
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
	           					maps.put("ghyc", dmap.get("供回水压差"));
	           					maps.put("bsljll", dmap.get("补水累计流量"));
	           					SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
	           					String time=df.format(new Date());// new Date()为获取当前系统时间
	           					maps.put("time", time);
	           					maps.put("hrz", "新乡商务大厦");
	           					
	        					historyService.InsertHis(maps);
	            				}
	        					   server.dispose();
	        			         
	}
	
	
	public void rbbHis(){
		   ConnectionInformation ci=OPCConfiguration.getCLSIDConnectionInfomation();
	       final Server server = new Server ( ci, Executors.newSingleThreadScheduledExecutor () );
	       String hrzname="北京华誉.新乡商务大厦";
	       String[] d=null;
		       Map<String,Object> dmap=new HashMap<String, Object>();
		       Map<String,Object> maps=new HashMap<String, Object>();
		       Map<String, Item> map = null;
	            	     Group group = null;
	            	     
	            				try {
									server.connect ();
	            					group = server.addGroup ( "groupHis" );
	            					 group.setActive ( true );
					                map = group.addItems(d);
								} catch (Exception e1) {
									// TODO Auto-generated catch block
									e1.printStackTrace();
								}
	            				if(map!=null){
	        					for (Entry<String, Item> temp : map.entrySet()) {
	        						try {
	        							Thread.sleep(20);
	        						} catch (InterruptedException e) {
	        							// TODO Auto-generated catch block
	        							e.printStackTrace();
	        						}
									try {
										String id= temp.getValue().getId();
		        						Object value = temp.getValue().read(true).getValue().getObject();
										 String[] a=id.split("读数据.");
							            	String key=a[1];
//							            	if(key.contains("#")){
//							            		key=key.replace("#", "");
//							            	}
							            	boolean b=isNumeric(String.valueOf(value));
							            	
							            	if(b==false){
							            		try {
													Thread.sleep(500);
												} catch (InterruptedException e) {
													// TODO Auto-generated catch block
													e.printStackTrace();
												}
							            		 value = temp.getValue().read(true).getValue().getObject();
							            	}
							                b=isNumeric(String.valueOf(value));
          									if(b==false){
          										value="0";	
          									}else{
          										value=String.format("%.1f",value);	
          									}
//							                  String s=String.format("%.1f",value);
							                  
							                  dmap.put(key, value);
									} catch (JIException e) {
										// TODO Auto-generated catch block
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
	           					maps.put("ghyc", dmap.get("供回水压差"));
	           					maps.put("bsljll", dmap.get("补水累计流量"));
	           					SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
	           					String time=df.format(new Date());// new Date()为获取当前系统时间
	           					maps.put("time", time);
	           					maps.put("hrz", "新乡商务大厦");
	           					
	        					historyService.rbbInsertHis(maps);
	            				}
	        					   server.dispose();	
		
		
		
	}
	public void zbbHis(){
		   ConnectionInformation ci=OPCConfiguration.getCLSIDConnectionInfomation();
	       final Server server = new Server ( ci, Executors.newSingleThreadScheduledExecutor () );
	       String hrzname="北京华誉.新乡商务大厦";
	       String[] d=null;
		       Map<String,Object> dmap=new HashMap<String, Object>();
		       Map<String,Object> maps=new HashMap<String, Object>();
		       Map<String, Item> map = null;
	            	     Group group = null;
	            				try {
									server.connect ();
	            					group = server.addGroup ( "groupHis" );
	            					 group.setActive ( true );
					                map = group.addItems(d);
								} catch (Exception e1) {
									// TODO Auto-generated catch block
									e1.printStackTrace();
								}
	            				if(map!=null){
	        					for (Entry<String, Item> temp : map.entrySet()) {
	        						try {
	        							Thread.sleep(20);
	        						} catch (InterruptedException e) {
	        							// TODO Auto-generated catch block
	        							e.printStackTrace();
	        						}
									try {
										String id= temp.getValue().getId();
		        						Object value = temp.getValue().read(true).getValue().getObject();
										 String[] a=id.split("读数据.");
							            	String key=a[1];
							            	boolean b=isNumeric(String.valueOf(value));
							            	
							            	if(b==false){
							            		try {
													Thread.sleep(500);
												} catch (InterruptedException e) {
													// TODO Auto-generated catch block
													e.printStackTrace();
												}
							            		 value = temp.getValue().read(true).getValue().getObject();
							            	}
//							                  String s=String.format("%.1f",value);
							                  b=isNumeric(String.valueOf(value));
	          									if(b==false){
	          										value="0";	
	          									}else{
	          										value=String.format("%.1f",value);	
	          									}
							                  dmap.put(key, value);
									} catch (JIException e) {
										// TODO Auto-generated catch block
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
	           					maps.put("ghyc", dmap.get("供回水压差"));
	           					maps.put("bsljll", dmap.get("补水累计流量"));
	           					SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
	           					String time=df.format(new Date());// new Date()为获取当前系统时间
	           					maps.put("time", time);
	           					maps.put("hrz", "新乡商务大厦");
	           					
	           					historyService.zbbInsertHis(maps);
	            				}
	        					   server.dispose();	
	}
	public void ybbHis(){
		   ConnectionInformation ci=OPCConfiguration.getCLSIDConnectionInfomation();
	       final Server server = new Server ( ci, Executors.newSingleThreadScheduledExecutor () );
	       String hrzname="北京华誉.新乡商务大厦";
	       String[] d=null;
		       Map<String,Object> dmap=new HashMap<String, Object>();
		       Map<String,Object> maps=new HashMap<String, Object>();
		       Map<String, Item> map = null;
	            	     Group group = null;
	            				try {
									server.connect ();
	            					group = server.addGroup ( "groupHis" );
	            					 group.setActive ( true );
					                map = group.addItems(d);
								} catch (Exception e1) {
									// TODO Auto-generated catch block
									e1.printStackTrace();
								}
	            				if(map!=null){
	        					for (Entry<String, Item> temp : map.entrySet()) {
	        						try {
	        							Thread.sleep(20);
	        						} catch (InterruptedException e) {
	        							// TODO Auto-generated catch block
	        							e.printStackTrace();
	        						}
									try {
										String id= temp.getValue().getId();
		        						Object value = temp.getValue().read(true).getValue().getObject();
										 String[] a=id.split("读数据.");
							            	String key=a[1];
//							            	if(key.contains("#")){
//							            		key=key.replace("#", "");
//							            	}
							            	boolean b=isNumeric(String.valueOf(value));
							            	
							            	if(b==false){
							            		try {
													Thread.sleep(500);
												} catch (InterruptedException e) {
													// TODO Auto-generated catch block
													e.printStackTrace();
												}
							            		 value = temp.getValue().read(true).getValue().getObject();
							            	}
//							                  String s=String.format("%.1f",value);
							            	 b=isNumeric(String.valueOf(value));
	          									if(b==false){
	          										value="0";	
	          									}else{
	          										value=String.format("%.1f",value);	
	          									}
							                  dmap.put(key, value);
									} catch (JIException e) {
										// TODO Auto-generated catch block
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
	           					maps.put("ghyc", dmap.get("供回水压差"));
	           					maps.put("bsljll", dmap.get("补水累计流量"));
	           					SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
	           					String time=df.format(new Date());// new Date()为获取当前系统时间
	           					maps.put("time", time);
	           					maps.put("hrz", "新乡商务大厦");
	           					historyService.ybbInsertHis(maps);
	            				}
	        					   server.dispose();
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
	

}
