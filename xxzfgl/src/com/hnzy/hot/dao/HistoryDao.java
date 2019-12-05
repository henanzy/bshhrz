package com.hnzy.hot.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface HistoryDao {
	public void InsertHis(Map<String, Object> dmap);
	public void rbbInsertHis(Map<String, Object> dmap);
	public void ybbInsertHis(Map<String, Object> dmap);
	public void zbbInsertHis(Map<String, Object> dmap);
	public List<Map<String,String>>findHis();
	public List<Map<String,String>>rbbfindHis();
	public List<Map<String,String>>zbbfindHis();
	public List<Map<String,String>>ybbfindHis();
	public List<Map<String,String>>startTime(@Param("hrz")String hrz,@Param("startTime")String startTime,@Param("endTime")String endTime);
	public List<Map<String,String>>rbbstartTime(@Param("hrz")String hrz,@Param("startTime")String startTime,@Param("endTime")String endTime);
	public List<Map<String,String>>zbbstartTime(@Param("hrz")String hrz,@Param("startTime")String startTime,@Param("endTime")String endTime);
	public List<Map<String,String>>ybbstartTime(@Param("hrz")String hrz,@Param("startTime")String startTime,@Param("endTime")String endTime);
	public void updateBj(@Param("bjlx")String bjlx,@Param("value")String value,@Param("bjstatime")String bjstatime);
	public void InsHis(@Param("hrz")String hrz,@Param("bjcon")String bjcon,@Param("bjtime")String bjtime);
	public List<Map<String,String>>selBjxx(@Param("hrz")String hrz,@Param("startTime")String startTime,@Param("endTime")String endTime);
	public Map<String,String>findendtime(@Param("hrz")String hrz,@Param("bjcon")String bjcon);
	public void updatendtime(@Param("hrz")String hrz,@Param("bjcon")String bjcon,@Param("bjtime")String bjtime,@Param("endtime")String endtime);
	public List<Map<String,String>>selBjss();
	//获取实时曲线的总电量
	public List<Map<String,String>>selsj(@Param("stateTime")String stateTime,@Param("endTime")String endTime);
	//水电热分析
	public List<Map<String, Object>> selsdrfx(@Param("hrz")String hrz,@Param("startTime")String startTime,@Param("endTime")String endTime);
	//获取换热站系数
	public List<Map<String,String>>getHrzXx(@Param("hrz")String hrz);
	public List<Map<String,String>>selHisqx(@Param("sj")int sj);
}
