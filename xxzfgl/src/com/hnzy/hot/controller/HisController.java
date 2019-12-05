package com.hnzy.hot.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hnzy.hot.service.HistoryService;
import com.hnzy.hot.util.JSONSerializer;

import net.sf.json.JSONObject;

@RequestMapping("HisCon")
@Controller
public class HisController {
	@Autowired
	private HistoryService hisService;
	
	
	@RequestMapping("His")
	public String list(HttpServletRequest request){
		return "hrz/lssj";
		
	}
	//历史数据搜索
	@RequestMapping("selHistory")
	@ResponseBody
	public JSONObject selHistory(String hrz,String startTime,String endTime) throws UnsupportedEncodingException{
		hrz=new String(hrz.getBytes("ISO-8859-1"),"utf-8")+"";
		JSONObject json=new JSONObject();
		List<Map<String,String>> jsHis=hisService.startTime(hrz, startTime, endTime);
		json.put("list",jsHis);
		return json;
	}
	
	//历史数据
	@RequestMapping("HiList")
	@ResponseBody
	public JSONObject lis(){
		JSONObject json=new JSONObject();
		List<Map<String, String>> d=hisService.findHis();
		json.put("list", JSONSerializer.serialize(d));
		return json;
		
	}
	//月报表
	@RequestMapping("yHiList")
	@ResponseBody
	public JSONObject ylis(){
		JSONObject json=new JSONObject();
		List<Map<String, String>> d=hisService.ybbfindHis();
		json.put("list", JSONSerializer.serialize(d));
		return json;
		
	}
	
	@RequestMapping("ybbselHistory")
	@ResponseBody
	public JSONObject ybbselHistory(String hrz,String startTime,String endTime) throws UnsupportedEncodingException{
		hrz=new String(hrz.getBytes("ISO-8859-1"),"utf-8")+"";
		JSONObject json=new JSONObject();
		List<Map<String,String>> jsHis=hisService.ybbstartTime(hrz, startTime, endTime);
		json.put("list",jsHis);
		return json;
	}
	//日报表
	@RequestMapping("rHiList")
	@ResponseBody
	public JSONObject rlis(){
		JSONObject json=new JSONObject();
		List<Map<String, String>> d=hisService.rbbfindHis();
		json.put("list", JSONSerializer.serialize(d));
		return json;
		
	}
	@RequestMapping("rbbselHistory")
	@ResponseBody
	public JSONObject rbbselHistory(String hrz,String startTime,String endTime) throws UnsupportedEncodingException{
		hrz=new String(hrz.getBytes("ISO-8859-1"),"utf-8")+"";
		JSONObject json=new JSONObject();
		List<Map<String,String>> jsHis=hisService.rbbstartTime(hrz, startTime, endTime);
		json.put("list",jsHis);
		return json;
	}
	//周报表
	@RequestMapping("zHiList")
	@ResponseBody
	public JSONObject zlis(){
		JSONObject json=new JSONObject();
		List<Map<String, String>> d=hisService.zbbfindHis();
		json.put("list", JSONSerializer.serialize(d));
		return json;
		
	}
	@RequestMapping("zbbselHistory")
	@ResponseBody
	public JSONObject zbbselHistory(String hrz,String startTime,String endTime) throws UnsupportedEncodingException{
		hrz=new String(hrz.getBytes("ISO-8859-1"),"utf-8")+"";
		JSONObject json=new JSONObject();
		List<Map<String,String>> jsHis=hisService.zbbstartTime(hrz, startTime, endTime);
		json.put("list",jsHis);
		return json;
	}
	//日
	
	@RequestMapping("rbbHis")
	public String rbbHis(HttpServletRequest request){
		return "hrz/rbbHis";
		
	}
	
	//周
	@RequestMapping("zbbHis")
	public String zbbHis(HttpServletRequest request){
		return "hrz/zbbHis";
		
	}
	
  //月
	@RequestMapping("ybbHis")
	public String ybbHis(HttpServletRequest request){
		return "hrz/ybbHis";
		
	}

}
