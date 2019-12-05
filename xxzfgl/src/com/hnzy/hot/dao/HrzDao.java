package com.hnzy.hot.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface HrzDao {
	public List<Map<String,String>>findHrzxx();
	public void updateHrz(Map<String,String>map);
	public void insertHrz(Map<String,String>map);
	public void deleteHrz(Integer id);
	//大表集抄查询
	public List<Map<String,String>>finddbjc(@Param("hrz")String hrz,@Param("startTime")String startTime,@Param("endTime")String endTime);
	
	public void updateRy(Map<String,Object>map);
	public void updateJz(Map<String,Object>map);
	public void InsertHis_ry(Map<String,Object>map);
	public void InsertHis_jz(Map<String,Object>map);
}
