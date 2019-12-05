package com.hnzy.hot.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hnzy.hot.service.HrzService;
import com.hnzy.hot.util.JSONSerializer;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("hrzCon")
public class hrzController {
	@Autowired
	private HrzService hrzService;
	
	@RequestMapping("hrz")
	public String hrz(){
	
		return "hrz/hrzxx";
	}
	
	//换热站
	@RequestMapping("findhrz")
	@ResponseBody
	private JSONObject findhrz(){
		JSONObject json=new JSONObject();
		List<Map<String,String>> findHrz=hrzService.findHrzxx();
		json.put("findhrz",JSONSerializer.serialize(findHrz));
		return json;
	}
	
	//大表集抄
	@RequestMapping("finddbjc")
	@ResponseBody
	public JSONObject dbjc(String hrz,String startTime,String endTime) throws UnsupportedEncodingException{
		hrz=new String(hrz.getBytes("ISO-8859-1"),"utf-8")+"";
		JSONObject json=new JSONObject();
		List<Map<String,String>>finddbjc=hrzService.finddbjc(hrz, startTime, endTime);
    	json.put("list", finddbjc);
		return json;
		
	}
	
	//大表集抄
		@RequestMapping("dbjc")
		public String dbjc(){
			
			return "hrz/dbjc";
			
		}
	
	@RequestMapping("insertHrz")
	
	public String insertHrz(String id,String hrz, String gsdd, String zlmc, String grqy, String Kxs, String shejimj, String shijimj,
			String dz, String bgsj, String rbdz, String lxr, String rblx){
		Map<String, String> map = new HashMap<String, String>();
		map.put("gsdd", gsdd);
		map.put("zlmc", zlmc);
		map.put("grqy", grqy);
		map.put("Kxs", Kxs);
		map.put("shejimj", shejimj);
		map.put("shijimj", shijimj);
		map.put("dz", dz);
		map.put("bgsj", bgsj);
		map.put("rbdz", rbdz);
		map.put("lxr", lxr);
		map.put("rblx", rblx);
		map.put("id", id);
		map.put("hrz", hrz);
		hrzService.insertHrz(map);
		return "redirect:hrz.action";
	}
	@RequestMapping("Delete")
	@ResponseBody
	public void deleteHrz(Integer id){
		hrzService.deleteHrz(id);
	}
	
	
	@RequestMapping("updateHrz")

	public String updateHrz(String id, String hrz,String gsdd, String zlmc, String grqy, String Kxs, String shejimj, String shijimj,
			String dz, String bgsj, String rbdz, String lxr, String rblx){
		Map<String, String> map = new HashMap<String, String>();
		map.put("gsdd", gsdd);
		map.put("zlmc", zlmc);
		map.put("grqy", grqy);
		map.put("Kxs", Kxs);
		map.put("shejimj", shejimj);
		map.put("shijimj", shijimj);
		map.put("dz", dz);
		map.put("bgsj", bgsj);
		map.put("rbdz", rbdz);
		map.put("lxr", lxr);
		map.put("rblx", rblx);
		map.put("id", id);
		map.put("hrz", hrz);
		hrzService.updateHrz(map);
		return "redirect:hrz.action";
	}

}
