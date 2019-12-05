package com.hnzy.hot.controller;

import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
import org.openscada.opc.lib.da.Server;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hnzy.hot.service.HistoryService;

import net.sf.json.JSONObject;

@RequestMapping("nhfxCon")
@Controller
public class nhfxController {
	
	@Autowired
	private HistoryService historyService;
	
	
	//水电热分析
	@RequestMapping("sdrfx")
	public String sdrfx(){
		return"nhjk/sdrfx";
	}
	@RequestMapping("findsdyfx")
	@ResponseBody
	public JSONObject findsdyfx(String hrz,String startTime,String endTime) throws UnsupportedEncodingException, ParseException{
		hrz=new String(hrz.getBytes("ISO-8859-1"),"utf-8")+"";
		JSONObject js=new JSONObject();
		double zdl = 0;
		double bsljll=0;
		double ljll=0;
		double ljrl=0;
		if(endTime!=""){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Date data = sdf.parse(endTime);
		
		 Calendar c = Calendar.getInstance();  
        c.setTime(data);  
        c.add(Calendar.DAY_OF_MONTH, 1);  //利用Calendar 实现 Date日期+1天  
        
        data = c.getTime();
        endTime=sdf.format(data);
		}
		List<Map<String,Object>> sel=historyService.selsdrfx(hrz, startTime, endTime);
		for(int i=0;i<sel.size();i++){
			zdl=zdl+((BigDecimal) sel.get(i).get("zdl")).doubleValue();;
			bsljll=bsljll+((BigDecimal) sel.get(i).get("bsljll")).doubleValue();;
			ljll=bsljll+((BigDecimal) sel.get(i).get("ljll")).doubleValue();;
			ljrl=bsljll+((BigDecimal) sel.get(i).get("ljrl")).doubleValue();;
		}
		Map<String,Object>map = new HashMap<>();
		map.put("zdl", String.valueOf(zdl));
		map.put("bsljll", String.valueOf(bsljll));
		map.put("ljll", String.valueOf(ljll));
		map.put("ljrl", String.valueOf(ljrl));
		map.put("hrz", String.valueOf("总合"));
		sel.add(map);
		js.put("list", sel);
		return js;
		
	}
	
	
	//供热模型	
	@RequestMapping("grmx")
	public String grmx(){
		return"nhjk/grmx";
	}

	@RequestMapping("getHrzXx")
	@ResponseBody
	public JSONObject getHrzXx(String hrz) throws UnsupportedEncodingException{
		hrz=new String(hrz.getBytes("ISO-8859-1"),"utf-8")+"";
		JSONObject json=new JSONObject();
		json.put("list", historyService.getHrzXx(hrz));
		return json;
		
	}
	@RequestMapping("findryjk")
	@ResponseBody
	public  JSONObject findryjk(String hrz) throws UnsupportedEncodingException{
		hrz=new String(hrz.getBytes("ISO-8859-1"),"utf-8")+"";
		ConnectionInformation ci=OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server ( ci, Executors.newSingleThreadScheduledExecutor () );
		JSONObject json=new JSONObject();
		Map<String,Object> maps=new HashMap<>();
		 //待写
		 String ssll="北京华誉."+hrz+".瞬时热量";
		try {
			server.connect();
		//读
		 Group group = null;
		 String[] itemId = {ssll};
				group = server.addGroup();
				 group.setActive(true);
				    //读
					 Map<String, Item> ditem; 
				
						ditem = group.addItems ( itemId );
						 for(String s : ditem.keySet()){  
							  Item it = ditem.get(s);  

				            	//循环读
							  Thread.sleep(100);
							  
				                Object values = it.read(true).getValue().getObject();
				                boolean b=isNumeric(String.valueOf(values));
								if(b==false){
									  values="0";	
								}else{
									values=String.format("%.2f",values);	
								}
				                System.out.println(values);
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
	
	//供热分析
	@RequestMapping("grfx")
	public String grfx(){
		return"nhjk/ygrl";
	}
	
	//供热预测
	@RequestMapping("gryc")
	public String gryc(){
		return"nhjk/gryc";
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
