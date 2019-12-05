package com.hnzy.hot.controller;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hnzy.hot.service.HistoryService;
import com.hnzy.hot.util.JSONSerializer;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("BjCon")
public class BjController {
	@Autowired
	private HistoryService historyService;
	
	
	@RequestMapping("bjxx")
	public String bjxx(){
		
		return "hrz/lsbj";
	}
	
	@RequestMapping("selbj")
	@ResponseBody
	public JSONObject selbj(String type,String startTime,String endTime ){
		JSONObject json=new JSONObject();
		List<Map<String, String>> his =historyService.selBjxx("新乡商务大厦", startTime, endTime);
		json.put("list",JSONSerializer.serialize(his));
		return json;
	}
	
	
	//获取报警信息
	@RequestMapping("bj")
	@ResponseBody
	public JSONObject bj(){
		JSONObject js=new JSONObject();
	    List<Map<String,String>>selBj=historyService.selBjss();	
		js.put("bj", JSONSerializer.serialize(selBj));
		return js;
	}
	
}
