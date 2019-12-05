package com.hnzy.hot.service;

import java.util.List;
import java.util.Map;

public interface HrzService {
	public List<Map<String,String>>findHrzxx();
	public void updateHrz(Map<String,String>map);
	public void insertHrz(Map<String,String>map);
	public void deleteHrz(Integer id);
	//大表集抄查询
		public List<Map<String,String>>finddbjc(String hrz,String startTime,String endTime);
		
		public void updateRy(Map<String,Object>map);
		public void updateJz(Map<String,Object>map);
		public void InsertHis_ry(Map<String,Object>map);
		public void InsertHis_jz(Map<String,Object>map);
}
