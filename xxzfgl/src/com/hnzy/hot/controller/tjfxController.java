package com.hnzy.hot.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.openscada.opc.lib.common.ConnectionInformation;
import org.openscada.opc.lib.da.Group;
import org.openscada.opc.lib.da.Item;
import org.openscada.opc.lib.da.ItemState;
import org.openscada.opc.lib.da.Server;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.hnzy.hot.service.HistoryService;
import com.hnzy.hot.util.JSONSerializer;

import net.sf.json.JSONObject;

@RequestMapping("tjfxCon")
@Controller
public class tjfxController {

	@Autowired
	private HistoryService hisService;
	//天气预报
	@RequestMapping("tjfx")
	public String tjfx(){
		return "hrz/tongjfx2";
	}
	
	@RequestMapping("ssqx")
	public String ssqx(){
		return "hrz/ssqx";
	}
	
	//历史曲线
	@RequestMapping("lsqx")
	public String lsqx(){
		return "hrz/lsqx";
	}
	String values;
	@RequestMapping("selsjss")
	@ResponseBody
	public JSONObject selsjss(){
		JSONObject jsonObject= new JSONObject();
		  ConnectionInformation ci=OPCConfiguration.getCLSIDConnectionInfomation();
	       final Server server = new Server ( ci, Executors.newSingleThreadScheduledExecutor () );
		   String d="北京华誉.新乡商务大厦.读数据.供水温度";    
		   SimpleDateFormat format =  new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
		   Map<String,Object> dmap=new HashMap<String, Object>();
	            	     Group group = null;
	            				try {
									server.connect ();
										group = server.addGroup ( "tbd" );
										 group.setActive ( true );
									      final Item item = group.addItem(d);
		            				        //读
		            				        ItemState state;
		            				        state=item.read(true);
		            				        Object value = state.getValue().getObject();
	            				      System.out.println(value);
						         	boolean b=isNumeric(String.valueOf(value));
									if(b==false){
										  values="0";	
									}else{
										values=String.format("%.2f",value);	
									}
						             
						             //获取时间
						             Date t=state.getTimestamp().getTime();
						              String time = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss ").format(t.getTime());
						              Date  date = format.parse(time);
										 //日期转时间戳（毫秒）
						   			 long times=date.getTime();
						              
						   			dmap.put("val",values);
						   			dmap.put("time",times);
						   			jsonObject.put("map", dmap);
						   			jsonObject.put("v",values);
						   			jsonObject.put("t",times);
	            				} catch (Exception e1) {
									// TODO Auto-generated catch block
									e1.printStackTrace();
								}
						         server.dispose();
						         return jsonObject;
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


	
	//新实时数据
	@RequestMapping("selsj")
	@ResponseBody
	public JSONObject selsj(){
		JSONObject json=new JSONObject();
    	List<Map<String,String>>selHis=hisService.selsj("","");	
    	SimpleDateFormat format =  new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
    	
    	Map<String,Object> map=new HashMap<String,Object>(); 
    	   JSONArray members = new JSONArray();
    	   for(int i=0;i<selHis.size();i++){
    		   JSONArray member=new JSONArray();
    		   Date date;
			try {
				date = format.parse(selHis.get(i).get("time"));
				 //日期转时间戳（毫秒）
   			 long times=date.getTime();
   		      member.add(times);
   		      member.add(selHis.get(i).get("zdl"));
   		      members.add(member);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    			
    	   }
		json.put("selHis",members);
		System.out.println(members);
		return json;
	}
	
	

	//新实时数据
	@RequestMapping("selsjs")
	@ResponseBody
	public JSONObject selsj(int is){
		 is = Math.abs(is);
		JSONObject json=new JSONObject();
    	List<Map<String,String>>selHis=hisService.selHisqx(is);
    	SimpleDateFormat format =  new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
    	
    	Map<String,Object> map=new HashMap<String,Object>(); 
    	   JSONArray members = new JSONArray();
    	   for(int i=0;i<selHis.size();i++){
    		   JSONArray member=new JSONArray();
    		   Date date;
			try {
				date = format.parse(selHis.get(i).get("time"));
				 //日期转时间戳（毫秒）
   			 long times=date.getTime();
   		      member.add(times);
   		      member.add(selHis.get(i).get("zdl"));
   		      members.add(member);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    			
    	   }
		json.put("selHis",members);
		System.out.println(members);
		return json;
	}
	
	  Date date;
	
	//新实时数据
	@RequestMapping("sellssj")
	@ResponseBody
	public JSONObject sellssj() throws ParseException{
		JSONObject json=new JSONObject();
		Map<String,Object> maps=new HashMap<String,Object>(); 
    	List<Map<String,String>>selHis=hisService.selsj("","");	
    	SimpleDateFormat format =  new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
    	
    	Map<String,Object> map=new HashMap<String,Object>(); 
    	   JSONArray gswd = new JSONArray();
    	   JSONArray hsyl = new JSONArray();
    	   JSONArray hswd = new JSONArray();
    	   JSONArray gsyl = new JSONArray();
    	   
    	   JSONArray ssll = new JSONArray();
    	   
    	   JSONArray ssrl = new JSONArray();
    	   JSONArray axdy = new JSONArray();
    	   JSONArray bxdy = new JSONArray();
    	   JSONArray cxdy = new JSONArray();
    	   JSONArray axdl = new JSONArray();
    	   JSONArray bxdl = new JSONArray();
    	   JSONArray cxdl = new JSONArray();
    	   JSONArray ghyc = new JSONArray();
    	   
    	   for(int i=0;i<selHis.size();i++){
    		   JSONArray gswdmember=new JSONArray();
    	       JSONArray hswdmember=new JSONArray();
    	       JSONArray gsylmember=new JSONArray();
    	       JSONArray hsylmember=new JSONArray();
    	       JSONArray ssllmember=new JSONArray();
    	       JSONArray ssrlmember=new JSONArray();
    	       JSONArray axdymember=new JSONArray();
    	       JSONArray bxdymember=new JSONArray();
    	       JSONArray cxdymember=new JSONArray();
    	       JSONArray axdlmember=new JSONArray();
    	       JSONArray bxdlmember=new JSONArray();
    	       JSONArray cxdlmember=new JSONArray();
    	       JSONArray ghycmember=new JSONArray();
			date = format.parse(selHis.get(i).get("time"));
			 //日期转时间戳（毫秒）
  			 long times=date.getTime();
				 //日期转时间戳（毫秒）
  			  gswdmember.add(times);
		    
  			  gswdmember.add(selHis.get(i).get("gswd"));
 		       gswd.add(gswdmember);
   		      
   		      hswdmember.add(times);
   		      hswdmember.add(selHis.get(i).get("hswd"));
   		      hswd.add(hswdmember);
   		      
   		    gsylmember.add(times);
   		    gsylmember.add(selHis.get(i).get("gsyl"));
   		      gsyl.add(gsylmember);
		
   		   
   		   hsylmember.add(times);
   		  hsylmember.add(selHis.get(i).get("hsyl"));
   		  hsyl.add(hsylmember);	
   		  
   		  
   		  
   		ssllmember.add(times);
   		ssllmember.add(selHis.get(i).get("ssll"));
   		ssll.add(ssllmember);
   		
   		ssrlmember.add(times);
   		ssrlmember.add(selHis.get(i).get("ssrl"));
   		ssrl.add(ssrlmember);
   		
   		
   		
   		
   		axdymember.add(times);
   		axdymember.add(selHis.get(i).get("axdy"));
		      gsyl.add(axdymember);
	
		   
		      bxdymember.add(times);
		      bxdymember.add(selHis.get(i).get("bxdy"));
		      bxdy.add(bxdymember);	
		  
		  
		  
		      cxdymember.add(times);
		      cxdymember.add(selHis.get(i).get("cxdy"));
		      cxdy.add(cxdymember);
		
		      axdlmember.add(times);
		      axdlmember.add(selHis.get(i).get("axdl"));
		      axdl.add(axdlmember);
		      
		      bxdlmember.add(times);
		      bxdlmember.add(selHis.get(i).get("bxdl"));
		      bxdl.add(bxdlmember);
		      
		      cxdlmember.add(times);
		      cxdlmember.add(selHis.get(i).get("cxdl"));
		      cxdl.add(cxdlmember);
		      
		      ghycmember.add(times);
		      ghycmember.add(selHis.get(i).get("ghyc"));
		      ghyc.add(ghycmember);
    	   }

    	   
    	   maps.put("gswd", gswd);
    	   maps.put("hswd",hswd);
    	   maps.put("gsyl",gsyl);
    	   maps.put("hsyl",hsyl);
    	   maps.put("ssll",ssll);
    	   maps.put("ssrl",ssrl);
    	   maps.put("axdy",axdy);
    	   maps.put("bxdy",bxdy);
    	   maps.put("cxdy",cxdy);
    	   maps.put("axdl",axdl);
    	   maps.put("bxdl",bxdl);
    	   maps.put("cxdl",cxdl);
    	   maps.put("ghyc",ghyc);
		  json.put("selHis",maps);
		return json;
	}
	
	//新实时数据
		@RequestMapping("sellssjS")
		@ResponseBody
		public JSONObject sellssjS() throws ParseException{
			JSONObject json=new JSONObject();
	    	List<Map<String,String>>selHis=hisService.selsj("","");	
			  json.put("selHis",selHis);
			return json;
		}
		
		//新实时数据
		@RequestMapping("lsqxSelS")
		@ResponseBody
		public JSONObject lsqxSelS(String stateTime,String endTime) throws ParseException{
			JSONObject json=new JSONObject();

			 SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd"); 
			if(endTime!=""){
			Date data = format.parse(endTime);
			
			 Calendar c = Calendar.getInstance();  
	        c.setTime(data);  
	        c.add(Calendar.DAY_OF_MONTH, 1);  //利用Calendar 实现 Date日期+1天  
	        
	        data = c.getTime();
	        
	        endTime=format.format(data);
			}
			List<Map<String,String>>selHis=hisService.selsj(stateTime,endTime);	
			  json.put("selHis",selHis);
			return json;
		}
	//新实时数据
		@RequestMapping("lsqxSel")
		@ResponseBody
		public JSONObject lsqxSel(String stateTime,String endTime) throws ParseException{
			JSONObject json=new JSONObject();
			Map<String,Object> maps=new HashMap<String,Object>(); 
	    	List<Map<String,String>>selHis=hisService.selsj(stateTime,endTime);	
	    	SimpleDateFormat format =  new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
	    	
	    	Map<String,Object> map=new HashMap<String,Object>(); 
	    	   JSONArray gswd = new JSONArray();
	    	   JSONArray hsyl = new JSONArray();
	    	   JSONArray hswd = new JSONArray();
	    	   JSONArray gsyl = new JSONArray();
	    	   
	    	   JSONArray ssll = new JSONArray();
	    	   
	    	   JSONArray ssrl = new JSONArray();
	    	   JSONArray axdy = new JSONArray();
	    	   JSONArray bxdy = new JSONArray();
	    	   JSONArray cxdy = new JSONArray();
	    	   JSONArray axdl = new JSONArray();
	    	   JSONArray bxdl = new JSONArray();
	    	   JSONArray cxdl = new JSONArray();
	    	   
	    	   
	    	   for(int i=0;i<selHis.size();i++){
	    		   JSONArray gswdmember=new JSONArray();
	    	       JSONArray hswdmember=new JSONArray();
	    	       JSONArray gsylmember=new JSONArray();
	    	       JSONArray hsylmember=new JSONArray();
	    	       JSONArray ssllmember=new JSONArray();
	    	       JSONArray ssrlmember=new JSONArray();
	    	       JSONArray axdymember=new JSONArray();
	    	       JSONArray bxdymember=new JSONArray();
	    	       JSONArray cxdymember=new JSONArray();
	    	       JSONArray axdlmember=new JSONArray();
	    	       JSONArray bxdlmember=new JSONArray();
	    	       JSONArray cxdlmember=new JSONArray();
				date = format.parse(selHis.get(i).get("time"));
				 //日期转时间戳（毫秒）
	  			 long times=date.getTime();
					 //日期转时间戳（毫秒）
	  			  gswdmember.add(times);
			    
	  			  gswdmember.add(selHis.get(i).get("gswd"));
	 		       gswd.add(gswdmember);
	   		      
	   		      hswdmember.add(times);
	   		      hswdmember.add(selHis.get(i).get("hswd"));
	   		      hswd.add(hswdmember);
	   		      
	   		    gsylmember.add(times);
	   		    gsylmember.add(selHis.get(i).get("gsyl"));
	   		      gsyl.add(gsylmember);
			
	   		   
	   		   hsylmember.add(times);
	   		  hsylmember.add(selHis.get(i).get("hsyl"));
	   		  hsyl.add(hsylmember);	
	   		  
	   		  
	   		  
	   		ssllmember.add(times);
	   		ssllmember.add(selHis.get(i).get("ssll"));
	   		ssll.add(ssllmember);
	   		
	   		ssrlmember.add(times);
	   		ssrlmember.add(selHis.get(i).get("ssrl"));
	   		ssrl.add(ssrlmember);
	   		
	   		
	   		
	   		
	   		axdymember.add(times);
	   		axdymember.add(selHis.get(i).get("axdy"));
			      gsyl.add(axdymember);
		
			   
			      bxdymember.add(times);
			      bxdymember.add(selHis.get(i).get("bxdy"));
			      bxdy.add(bxdymember);	
			  
			  
			  
			      cxdymember.add(times);
			      cxdymember.add(selHis.get(i).get("cxdy"));
			      cxdy.add(cxdymember);
			
			      axdlmember.add(times);
			      axdlmember.add(selHis.get(i).get("axdl"));
			      axdl.add(axdlmember);
			      
			      bxdlmember.add(times);
			      bxdlmember.add(selHis.get(i).get("bxdl"));
			      bxdl.add(bxdlmember);
			      
			      cxdlmember.add(times);
			      cxdlmember.add(selHis.get(i).get("cxdl"));
			      cxdl.add(cxdlmember);
	    	   }

	    	   
	    	   maps.put("gswd", gswd);
	    	   maps.put("hswd",hswd);
	    	   maps.put("gsyl",gsyl);
	    	   maps.put("hsyl",hsyl);
	    	   maps.put("ssll",ssll);
	    	   maps.put("ssrl",ssrl);
	    	   maps.put("axdy",axdy);
	    	   maps.put("bxdy",bxdy);
	    	   maps.put("cxdy",cxdy);
	    	   maps.put("axdl",axdl);
	    	   maps.put("bxdl",bxdl);
	    	   maps.put("cxdl",cxdl);
			  json.put("selHis",maps);
			return json;
		}
	@RequestMapping("tjfxByname")
	@ResponseBody
	public JSONObject tjfx(String name){
		
		System.out.println(name);
		JSONObject js=new JSONObject();
		String aa="[43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175]";
		js.put("csv", aa);
		return js;
	}
}
