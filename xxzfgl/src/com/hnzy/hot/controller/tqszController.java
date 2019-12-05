package com.hnzy.hot.controller;

import java.io.UnsupportedEncodingException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.jinterop.dcom.common.JIException;
import org.jinterop.dcom.core.JIVariant;
import org.openscada.opc.lib.common.AlreadyConnectedException;
import org.openscada.opc.lib.common.ConnectionInformation;
import org.openscada.opc.lib.common.NotConnectedException;
import org.openscada.opc.lib.da.AddFailedException;
import org.openscada.opc.lib.da.DuplicateGroupException;
import org.openscada.opc.lib.da.Group;
import org.openscada.opc.lib.da.Item;
import org.openscada.opc.lib.da.ItemState;
import org.openscada.opc.lib.da.Server;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hnzy.hot.util.XUtil;
import net.sf.json.JSONObject;

@Controller
@RequestMapping("tqszCon")
public class tqszController {

	@RequestMapping("sbkztq")
	public String sbkztq() throws UnsupportedEncodingException {
		return "hrz/qhbc";
	}

	/*@RequestMapping("sbkzsTq")
	@ResponseBody
	public JSONObject sbkzs(String hrzname) throws UnsupportedEncodingException {
		JSONObject json = new JSONObject();
		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());
		String[] c = XUtil.sbkz(hrzname);
		Map<String, Object> dmap = new HashMap<String, Object>();
		Object value;
		Map<String, Item> map = null;
		Group group = null;
		try {
			server.connect();
			
				group = server.addGroup("tqsc");
				group.setActive(true);
				
					map = group.addItems(c);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		

		for (String s : map.keySet()) {
			// 循环读
			Item it = map.get(s);

			try {
				value = it.read(true).getValue().getObject();

				if(s.contains("写数据.")){
				String[] a = s.split("写数据.");
				String key = "d" + a[1];
				if(key.contains("温度")){
				boolean b=isNumeric(String.valueOf(value));
	            if(b==false){
	            	value="0";	
				}else{
					value=String.format("%.2f",value);	
				}
				}else{
//					value=value.toString()
					
				}
				dmap.put(key, value);
				}else if(s.contains("写地址.")){
					
					String[] a = s.split("写地址.");
					String key = "d" + a[1];
					if(s.contains("气候补偿")){
						dmap.put(key,value);
					}else{
					boolean b=isNumeric(String.valueOf(value));
		            if(b==false){
		            	value="0";	
					}else{
						value=String.format("%.2f",value);	
					}
					dmap.put(key,value);
					}
				}
			} catch (JIException e) {
				e.printStackTrace();
			}
		}
		json.put("map", dmap);
		return json;
	}*/
	//天气补偿修改
	@RequestMapping("qhbcxg")
	@ResponseBody
	public JSONObject qhbcxg(String val){
		ConnectionInformation ci=OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server ( ci, Executors.newSingleThreadScheduledExecutor () );
		JSONObject json=new JSONObject();
		Map<String,Object> maps=new HashMap<>();
		 //待写
		 String bpqycjd="北京华誉.新乡商务大厦.写地址.气候补偿";
		try {
			server.connect();
		//读
		 Group group = null;
		 String[] itemId = {bpqycjd};
				group = server.addGroup();
				 group.setActive(true);
				    //读
					 Map<String, Item> ditem; 
				
						ditem = group.addItems ( itemId );
						
						 for(String s : ditem.keySet()){  
							  Item it = ditem.get(s);  
							  //循环写
//				             final JIVariant value = new JIVariant(val);
//				              it.write(value);
							  
							  final JIVariant value = new JIVariant(val);
								 it.write(value);
						        try {
									Thread.sleep(100);
								} catch (InterruptedException e) {
									e.printStackTrace();
								}
						        ItemState  state=it.read(true);
							  Thread.sleep(500);
				            	
				                Object values = it.read(true).getValue().getObject();
					            	  maps.put("vs",values);
				            }
            	server.dispose();
		   }catch (Exception e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} 
		 json.put("maps", maps);
		return json;
	}
	
	

	// 参数设置
	@RequestMapping("cssz")
	@ResponseBody
	public JSONObject cssz(String name, String id, String val)
			throws NotConnectedException, DuplicateGroupException, AddFailedException, UnsupportedEncodingException
	{
		JSONObject json = new JSONObject();
		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());
		name = new String(name.getBytes("ISO-8859-1"), "utf-8");
		String names = "北京华誉.新乡商务大厦.写数据." + name;
		String[] d = { names };
		Map<String, Object> dmap = new HashMap<String, Object>();
		Map<String, Item> map = null;
		Group group = null;
		Object value;
		try {
			server.connect();
			group = server.addGroup("groupcss");
			group.setActive(true);
			map = group.addItems(d);

			Map<String, Item> item;
			item = group.addItems(d);
			for (String s : item.keySet()) {

				// 循环写
				Item it = item.get(s);
//				 final JIVariant values = new JIVariant(val);
//				 it.write(values);
				  final JIVariant values = new JIVariant(val);
					 it.write(values);
			        try {
						Thread.sleep(100);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
			        ItemState  state=it.read(true);
				 Thread.sleep(500);
				
					value = it.read(true).getValue().getObject();
					 boolean b=isNumeric(String.valueOf(value));
			            if(b==false){
			            	value="0";	
						}else{
							value=String.format("%.2f",value);	
						}
//				}
				json.put("map", value);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		json.put("id", id);
		server.dispose();
		return json;
	}

	private boolean isNumeric(String value) {
		 Pattern pattern = Pattern.compile("-?[0-9]+.*[0-9]*");
         Matcher isNum = pattern.matcher(value);
         if( !isNum.matches() ){
             return false;
         }
         return true;
	}

 
}


