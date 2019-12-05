package com.hnzy.hot.controller;

import java.net.UnknownHostException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.jinterop.dcom.common.JIException;
import org.jinterop.dcom.core.JIVariant;
import org.openscada.opc.lib.common.AlreadyConnectedException;
import org.openscada.opc.lib.common.ConnectionInformation;
import org.openscada.opc.lib.common.NotConnectedException;
import org.openscada.opc.lib.da.AddFailedException;
import org.openscada.opc.lib.da.DuplicateGroupException;
import org.openscada.opc.lib.da.Group;
import org.openscada.opc.lib.da.Item;
import org.openscada.opc.lib.da.Server;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.hnzy.hot.util.DUtil;
import com.hnzy.hot.util.XUtil;

public class text {

private static int count;
 public static void main(String[] args) {

		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());
		System.out.println(server);
		String hrzname="北京华誉.新乡商务大厦.读地址.1#循环泵运行";
		String[] d = {hrzname};
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


					value = it.read(true).getValue().getObject();
					System.out.println(value);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


	}
 
		
}
