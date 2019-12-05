package com.hnzy.hot.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hnzy.hot.dao.HistoryDao;
import com.hnzy.hot.service.HistoryService;

@Service
public class HistoryServiceImpl implements HistoryService {

	@Autowired
	private HistoryDao historyDao;

	@Override
	public void InsertHis(Map<String, Object> dmap) {
		// TODO Auto-generated method stub
		historyDao.InsertHis(dmap);
	}

	@Override
	public List<Map<String, String>> findHis() {
		// TODO Auto-generated method stub
		return historyDao.findHis();
	}

	@Override
	public List<Map<String, String>> startTime(String hrz, String startTime, String endTime) {
		// TODO Auto-generated method stub
		return historyDao.startTime(hrz, startTime, endTime);
	}

	@Override
	public void rbbInsertHis(Map<String, Object> dmap) {
		historyDao.rbbInsertHis(dmap);
		
		// TODO Auto-generated method stub
		
	}

	@Override
	public void ybbInsertHis(Map<String, Object> dmap) {
		// TODO Auto-generated method stub
		historyDao.ybbInsertHis(dmap);
	}

	@Override
	public void zbbInsertHis(Map<String, Object> dmap) {
		// TODO Auto-generated method stub
		historyDao.zbbInsertHis(dmap);
	}

	@Override
	public List<Map<String, String>> rbbstartTime(String hrz, String startTime, String endTime) {
		// TODO Auto-generated method stub
		return historyDao.rbbstartTime(hrz, startTime, endTime);
	}

	@Override
	public List<Map<String, String>> zbbstartTime(String hrz, String startTime, String endTime) {
		// TODO Auto-generated method stub
		return historyDao.zbbstartTime(hrz, startTime, endTime);
	}

	@Override
	public List<Map<String, String>> ybbstartTime(String hrz, String startTime, String endTime) {
		// TODO Auto-generated method stub
		return historyDao.ybbstartTime(hrz, startTime, endTime);
	}

	@Override
	public List<Map<String, String>> rbbfindHis() {
		// TODO Auto-generated method stub
		return historyDao.rbbfindHis();
	}

	@Override
	public List<Map<String, String>> zbbfindHis() {
		// TODO Auto-generated method stub
		return historyDao.zbbfindHis();
	}

	@Override
	public List<Map<String, String>> ybbfindHis() {
		// TODO Auto-generated method stub
		return historyDao.ybbfindHis();
	}

	@Override
	public void updateBj(String bjlx, String value,String bjstatime) {
		// TODO Auto-generated method stub
		historyDao.updateBj(bjlx, value,bjstatime);
	}

	@Override
	public void InsHis(String hrz, String bjcon, String bjtime) {
		// TODO Auto-generated method stub
		historyDao.InsHis(hrz, bjcon, bjtime);
	}

	@Override
	public List<Map<String, String>> selBjxx(String hrz, String startTime, String endTime) {
		// TODO Auto-generated method stub
		return historyDao.selBjxx(hrz, startTime, endTime);
	}

	@Override
	public Map<String, String> findendtime(String hrz, String bjcon) {
		// TODO Auto-generated method stub
		return historyDao.findendtime(hrz, bjcon);
	}

	@Override
	public void updatendtime(String hrz, String bjcon, String bjtime, String endtime) {
		// TODO Auto-generated method stub
		historyDao.updatendtime(hrz, bjcon, bjtime, endtime);
	}

	@Override
	public List<Map<String, String>> selBjss() {
		// TODO Auto-generated method stub
		return historyDao.selBjss();
	}

	@Override
	public List<Map<String, String>> selsj(String stateTime, String endTime) {
		// TODO Auto-generated method stub
		return historyDao.selsj(stateTime, endTime);
	}

	@Override
	public List<Map<String, Object>> selsdrfx(String hrz, String startTime, String endTime) {
		// TODO Auto-generated method stub
		return historyDao.selsdrfx(hrz, startTime, endTime);
	}

	@Override
	public List<Map<String, String>> getHrzXx(String hrz) {
		// TODO Auto-generated method stub
		return historyDao.getHrzXx(hrz);
	}

	@Override
	public List<Map<String, String>> selHisqx(int sj) {
		// TODO Auto-generated method stub
		return historyDao.selHisqx(sj);
	}
}
