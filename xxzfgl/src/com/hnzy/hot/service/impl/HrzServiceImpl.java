package com.hnzy.hot.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hnzy.hot.dao.HrzDao;
import com.hnzy.hot.service.HrzService;
@Service
public class HrzServiceImpl implements HrzService{
	@Autowired
	private HrzDao hrzDao;

	@Override
	public void updateHrz(Map<String, String> map) {
		// TODO Auto-generated method stub
		hrzDao.updateHrz(map);
	}

	@Override
	public void insertHrz(Map<String, String> map) {
		// TODO Auto-generated method stub
		hrzDao.insertHrz(map);
	}

	@Override
	public List<Map<String, String>> findHrzxx() {
		// TODO Auto-generated method stub
		return hrzDao.findHrzxx();
	}

	@Override
	public List<Map<String, String>> finddbjc(String hrz, String startTime, String endTime) {
		// TODO Auto-generated method stub
		return hrzDao.finddbjc(hrz, startTime, endTime);
	}

	@Override
	public void deleteHrz(Integer id) {
		// TODO Auto-generated method stub
		hrzDao.deleteHrz(id);
	}

	@Override
	public void updateRy(Map<String, Object> map) {
		// TODO Auto-generated method stub
		hrzDao.updateRy(map);
	}

	@Override
	public void updateJz(Map<String, Object> map) {
		// TODO Auto-generated method stub
		hrzDao.updateJz(map);
	}

	@Override
	public void InsertHis_ry(Map<String, Object> map) {
		// TODO Auto-generated method stub
		hrzDao.InsertHis_ry(map);
	}

	@Override
	public void InsertHis_jz(Map<String, Object> map) {
		// TODO Auto-generated method stub
		hrzDao.InsertHis_jz(map);
	}


}
