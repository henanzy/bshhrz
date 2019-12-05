package com.hnzy.hot.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.jinterop.dcom.core.JIVariant;
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

import com.alibaba.fastjson.JSONObject;
import com.hnzy.hot.util.XUtil;

@RequestMapping("Cssz")
@Controller
public class CsszController {

	@RequestMapping("canssz")
	public String canssz() {

		return "hrz/canssz";
	}
	ItemState state;
	// 参数设置
	@RequestMapping("cssz")
	@ResponseBody
	public JSONObject cssz(String name, String id, String val)
			throws NotConnectedException, DuplicateGroupException, AddFailedException, UnsupportedEncodingException {
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

				// 循环写-------------------
				Item it = item.get(s);
				 final JIVariant values = new JIVariant(val);
				 it.write(values);
				  try {
						Thread.sleep(100);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				 state=it.read(true);
				 Thread.sleep(300);
				 
			

				if (s.contains("主机")) {
					value = it.read(true).getValue().getObjectAsUnsigned().getValue();
					boolean b = isNumeric(String.valueOf(value));
					if (b == false) {
						try {
							Thread.sleep(100);
						} catch (InterruptedException e) {
							e.printStackTrace();
						}
						value = it.read(true).getValue().getObjectAsUnsigned().getValue();

					}

				} else {
					value = it.read(true).getValue().getObject();
					boolean b = isNumeric(String.valueOf(value));
					if (b == false) {
						value = "0";
					} else {
						value = String.format("%.2f", value);
					}
				}
				json.put("map", value);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		json.put("id", id);
		server.dispose();
		return json;
	}

	// 参数设置显示
	@RequestMapping("showCsxs")
	@ResponseBody
	public JSONObject xtkzSj(String hrzname) throws NotConnectedException, DuplicateGroupException, AddFailedException {
		JSONObject json = new JSONObject();
		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());
		
		String[] d =null; /*XUtil.yxcs(hrzname);*/
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
				// 循环读
				Item it = item.get(s);

				String[] a = s.split("写数据.");
				String key = a[1];

				if (s.contains("主机")) {
					value = it.read(true).getValue().getObject();
//					value = it.read(true).getValue().getObjectAsUnsigned().getValue();
//					boolean b = isNumeric(String.valueOf(value));
//
//					if (b == false) {
//						try {
//							Thread.sleep(500);
//						} catch (InterruptedException e) {
//							// TODO Auto-generated catch block
//							e.printStackTrace();
//						}
//						value = it.read(true).getValue().getObjectAsUnsigned().getValue();
//					}

				} else {
					value = it.read(true).getValue().getObject();
					boolean b = isNumeric(String.valueOf(value));
					if (b == false) {
						value = "0";
					} else {
						value = String.format("%.2f", value);
					}

				}
				dmap.put(key, value);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		server.dispose();
		json.put("map", dmap);
		return json;

	}

	// 判断是否是数字
	public boolean isNumeric(String value) {
		Pattern pattern = Pattern.compile("-?[0-9]+.*[0-9]*");
		Matcher isNum = pattern.matcher(value);
		if (!isNum.matches()) {
			return false;
		}
		return true;
	}

}
