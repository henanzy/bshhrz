package com.hnzy.hot.controller;

import java.net.UnknownHostException;
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
import org.openscada.opc.lib.da.ItemState;
import org.openscada.opc.lib.da.Server;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.alibaba.fastjson.JSONObject;
import com.hnzy.hot.util.DUtil;

@RequestMapping("sbkzCon")
@Controller
public class sbkzController {

	OPCConfiguration opcCon = new OPCConfiguration();
	ItemState state;

	@RequestMapping("xtkz")
	public String xtkz() {

		return "xtkz";
	}

	// 开启，关闭
	@RequestMapping("kgdf")
	@ResponseBody
	public JSONObject kgdf(String hrzname, String stas, String flag, String name, String sbname) {
		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());
		JSONObject json = new JSONObject();
		Map<String, Object> maps = new HashMap<>();
		name = hrzname + ".写地址." + sbname + flag + name;
		try {
			// 待写
			String dnamekg = null;
			String zjkgzs=null;
			String gz = null;
			String dfkgdw=null;
			String[] itemId = null;
			if (sbname.equals("蝶阀")) {
//               String dfms=hrzname+"写地址"+"蝶阀"+flag+"模式";	s
				dnamekg = hrzname + ".读地址." + flag + "#" + sbname + "开关";
				dfkgdw= hrzname + ".读地址." +flag+"号蝶阀";
				itemId = new String[2];
				itemId[0] = dnamekg;
				itemId[1] = dfkgdw;
			} else if (sbname.equals("主机")) {
				dnamekg = hrzname + ".读地址." + sbname + flag + "总运行指示";
				zjkgzs=hrzname + ".读地址." + flag + "号主机关机指示";
				itemId = new String[2];
				itemId[0] = dnamekg;
				itemId[1] = zjkgzs;
			} else {
				if (sbname.equals("深井泵")) {

					dnamekg = hrzname + ".读地址." + flag + "#深水泵运行";
					gz = hrzname + ".读地址." + flag + "#深水泵故障";
//					String ssbms=hrzname + ".读地址." +"深井泵"+ flag+"模式";s
				} else {
					// 读
					dnamekg = hrzname + ".读地址." + flag + "#" + sbname + "运行";
					gz = hrzname + ".读地址." + flag + "#" + sbname + "故障";
//					String xhbms=hrzname+"写数据."+"循环泵"+flag+"模式"s
				}
			
				itemId = new String[2];
				itemId[0] = dnamekg;
				itemId[1] = gz;

			}
			server.connect();

			Group group;

			group = server.addGroup();
			group.setActive(true);

			Item item = group.addItem(name);
			// 写
			final JIVariant value = new JIVariant(stas);
			item.write(value);
			try {
				Thread.sleep(3000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			state = item.read(true);
			// 读
			Map<String, Item> ditem = group.addItems(itemId);
			for (String s : ditem.keySet()) {
				// 循环读
				Item it = ditem.get(s);
				Object values = it.read(true).getValue().getObject();

				if (s.contains("读地址")) {
					String[] a = s.split("读地址.");
					String key = "d" + a[1];
					if (key.contains("#")) {
						key = key.replace("#", "");
					}
					System.out.println("-----------val------------"+values);
					maps.put(key, values);
				}

			}

			server.dispose();
			json.put("maps", maps); // 运行状态
			json.put("sbname", sbname);// 名称
			json.put("flag", flag);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return json;
	}

	// 开启连锁
	@RequestMapping("msdf")
	@ResponseBody
	public JSONObject msdf(String hrzname, String flag, String stas, String sbname)
			throws NotConnectedException, DuplicateGroupException {
		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());
		JSONObject json = new JSONObject();
		String name = null;
		Map<String, Object> maps = new HashMap<>();
		// 待写
		name = sbname + flag + "模式";
		name = hrzname + ".写地址." + name;
		System.out.println(name);
		try {
			server.connect();
			// 读
			Group group = null;
			String[] itemId = { name };
			System.out.println("写数据==" + name);
			group = server.addGroup();
			group.setActive(true);
			// 读
			Map<String, Item> ditem;

			ditem = group.addItems(itemId);
			for (String s : ditem.keySet()) {
				Item it = ditem.get(s);
				// 写
				final JIVariant value = new JIVariant(stas);
				it.write(value);
				try {
					Thread.sleep(1000);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
				state = it.read(true);
				// 循环读

				Object values = it.read(true).getValue().getObject();
				if (s.contains("写地址")) {
					String[] a = s.split("写地址.");
					String key = "d" + a[1];
					if (key.contains("#")) {
						key = key.replace("#", "");
					}
					maps.put(key, values);
				}
			}

			maps.put("flag", flag);
			maps.put("sbname", sbname);
			server.dispose();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		json.put("maps", maps);
		return json;
	}

	@SuppressWarnings("null")
	@RequestMapping("dfstate")
	@ResponseBody
	public JSONObject dfstate(String hrzname, String name, String msname, String dfstate, String flag, String kfdwname)
			throws JIException, IllegalArgumentException, UnknownHostException, AlreadyConnectedException,
			NotConnectedException, DuplicateGroupException, AddFailedException {
		JSONObject json = new JSONObject();
		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());
		server.connect();
		name = hrzname + ".读地址." + name;
		kfdwname = hrzname + ".读地址." + kfdwname;
		msname = hrzname + ".写地址." + msname;
		String[] itemId = { name, msname, kfdwname };
		Group group = null;
		group = server.addGroup("groupdf");
		group.setActive(true);
		Map<String, Object> dmap = new HashMap<String, Object>();
		Map<String, Object> maps = new HashMap<>();
		Map<String, Item> item;
		try {
			item = group.addItems(itemId);

			for (String s : item.keySet()) {
				// 循环读
				Item it = item.get(s);
				Object value;
				try {
					value = it.read(true).getValue().getObject();
					maps.put(s, value);
				} catch (JIException e) {
					e.printStackTrace();
				}
			}
			for (Entry<String, Object> entry : maps.entrySet()) {
				String mapKey = entry.getKey();

				Object mapValue = entry.getValue();
				if (mapKey.contains("读地址")) {
					String[] a = mapKey.split("读地址.");
					String key = "d" + a[1];
					if (key.contains("#")) {
						key = key.replace("#", "");
					}
					dmap.put(key, mapValue);
				} else if (mapKey.contains("写地址")) {
					String[] a = mapKey.split("写地址.");
					String key = "d" + a[1];
					if (key.contains("#")) {
						key = key.replace("#", "");
					}
					dmap.put(key, mapValue);
				}
			}
			json.put("map", dmap);
			json.put("flag", flag);
			try {
			} catch (IllegalArgumentException e1) {
				e1.printStackTrace();
			}
		} catch (AddFailedException e) {
			e.printStackTrace();
		}

		server.dispose();
		return json;
	}

	// 故障复位
	@ResponseBody
	@RequestMapping("zjgfw")
	public JSONObject zjgfw(String hrzname, String flag, String val, String name) {
		JSONObject json = new JSONObject();
		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());
		try {
			server.connect();
			String zjzlsx = hrzname + ".写地址.主机" + flag + name;
			final Group group = server.addGroup("zjfw");
			final Item item = group.addItem(zjzlsx);

			final JIVariant value = new JIVariant(val);
			item.write(value);
			state = item.read(true);

		} catch (Exception e) {
			e.printStackTrace();
		}

		json.put("js", "1");
		server.dispose();
		return json;
	}

	// 主机复位，远程本地切换
	@ResponseBody
	@RequestMapping("ycbdqh")
	public JSONObject ycbdqh(String hrzname, String flag, String val, String name, String ycbd) {
		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());
		JSONObject json = new JSONObject();
		try {
			server.connect();
			String zjzlsx = hrzname + ".写地址.主机" + flag + name;
			ycbd = hrzname + ".读数据." + flag + "#" + ycbd;
			final Group group = server.addGroup("zjfw");
			final Item item = group.addItem(zjzlsx);
			final Item items = group.addItem(ycbd);
			final JIVariant value = new JIVariant(val);
			item.write(value);
			state = item.read(true);

			Thread.sleep(3000);
			Object valu = items.read(false).getValue().getObject();

			json.put("valu", valu);

		} catch (Exception e) {
			e.printStackTrace();
		}
		server.dispose();
		return json;
	}

	// 主机限制
	@SuppressWarnings("null")
	@RequestMapping("zjstate")
	@ResponseBody
	public JSONObject zjstate(String hrzname, String name, String ycjdfk, String zlzrfk, String flag,String zjstate)
			throws JIException, IllegalArgumentException, UnknownHostException, AlreadyConnectedException,
			NotConnectedException, DuplicateGroupException, AddFailedException {
		JSONObject json = new JSONObject();
		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());
		server.connect();
		Group group = null;
		group = server.addGroup("groupzjs");
		group.setActive(true);

		name = hrzname + ".读地址." + name;
		ycjdfk = hrzname + ".读数据." + ycjdfk;
		zlzrfk = hrzname + ".读数据." + zlzrfk;

		String zjzlsx = hrzname + ".读数据.主机" + flag + "制冷温度显示";
		String zjzrsx = hrzname + ".读数据.主机" + flag + "制热温度显示";
		String zjdjs = hrzname + ".读数据.主机" + flag + "启动倒计时";
		String zjgjzs=hrzname + ".读地址." + flag + "号主机关机指示";
//        String zlzrfk=hrzname+".读数据."+flag+"主机zhileng";
        		
		String[] itemId = { name, ycjdfk, zlzrfk, zjzlsx, zjzrsx, zjdjs,zjgjzs };
		group.setActive(true);
		Map<String, Object> dmap = new HashMap<String, Object>();
		Map<String, Object> maps = new HashMap<>();
		Map<String, Item> item;
		try {
			item = group.addItems(itemId);
			for (String s : item.keySet()) {
				// 循环读
				Item it = item.get(s);
				Object value;
				// if(s.contains("反馈")||s.contains("启动倒计时")){
				// value=it.read(true).getValue().getObjectAsUnsigned().getValue();
				// boolean b=isNumeric(String.valueOf(value));
				// if(b==false){
				// try {
				// Thread.sleep(100);
				// } catch (InterruptedException e) {
				// e.printStackTrace();
				// }
				// value=it.read(true).getValue().getObjectAsUnsigned().getValue();
				// }
				//
				// }else{

				value = it.read(true).getValue().getObject();
				// }

				maps.put(s, value);
			}
			for (Entry<String, Object> entry : maps.entrySet()) {
				String mapKey = entry.getKey();

				Object mapValue = entry.getValue();
				if (mapKey.contains("读地址")) {
					String[] a = mapKey.split("读地址.");
					String key = "d" + a[1];
					if (key.contains("#")) {
						key = key.replace("#", "");
					}
					System.out.println(mapValue);
					dmap.put(key, mapValue);
				} else if (mapKey.contains("读数据")) {
					String[] a = mapKey.split("读数据.");
					String key = "d" + a[1];
					if (key.contains("#")) {
						key = key.replace("#", "");
					}
					dmap.put(key, mapValue);
				}
			}
			server.dispose();
			json.put("map", dmap);
			json.put("flag", flag);

		} catch (AddFailedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return json;
	}

	@RequestMapping("ssbstate")
	@ResponseBody
	public JSONObject ssbstate(String hrzname, String flag, String yxname, String gzname, String zdname,String ycjd)
			throws JIException, IllegalArgumentException, UnknownHostException, AlreadyConnectedException,
			NotConnectedException, DuplicateGroupException, AddFailedException {
		JSONObject json = new JSONObject();
		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());
		server.connect();
		yxname = hrzname + ".读地址." + yxname;
		gzname = hrzname + ".读地址." + gzname;
		zdname = hrzname + ".写地址." + zdname;
		ycjd=hrzname + ".读地址." + ycjd;
		String[] itemId = { yxname, gzname, zdname,ycjd };
		Group group = null;
		group = server.addGroup("groupssb");
		group.setActive(true);
		Map<String, Object> dmap = new HashMap<String, Object>();
		// Map<String,Object> maps=new HashMap<>();
		Map<String, Item> item;
		try {
			item = group.addItems(itemId);

			for (String s : item.keySet()) {
				// 循环读
				Item it = item.get(s);
				Object value;
				try {
					value = it.read(true).getValue().getObject();
					if (s.contains("读地址")) {
						String[] a = s.split("读地址.");
						String key = "d" + a[1];
						if (key.contains("#")) {
							key = key.replace("#", "");
						}
						dmap.put(key, value);
					} else if (s.contains("写地址")) {
						String[] a = s.split("写地址.");
						String key = "d" + a[1];
						if (key.contains("#")) {
							key = key.replace("#", "");
						}
						dmap.put(key, value);
					}

					// maps.put(s,value );
				} catch (JIException e) {
					e.printStackTrace();
				}
			}
			server.dispose();
			json.put("map", dmap);
			json.put("flag", flag);

		} catch (AddFailedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return json;
	}

	// 循环泵页面显示
	@RequestMapping("xhbstate")
	@ResponseBody
	public JSONObject xhbstate(String hrzname, String flag, String yxname, String gzname, String xhbms, String yxjd) {
		JSONObject json = new JSONObject();
		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());
		try {
			server.connect();
			String yxname1 = hrzname + ".读地址." + yxname;
			String gzname1 = hrzname + ".读地址." + gzname;
			xhbms = hrzname + ".写地址." + xhbms;
			yxjd = hrzname + ".读地址." + yxjd;
			String ycsd = hrzname + ".写数据.供回水压差设定";
			String[] itemId = { yxname1, gzname1, xhbms, yxjd, ycsd };
			System.out.println(itemId);
			Group group = null;
			group = server.addGroup("groupssb");
			group.setActive(true);
			Map<String, Object> dmap = new HashMap<String, Object>();

			Map<String, Item> item;
			item = group.addItems(itemId);

			for (String mapKey : item.keySet()) {
				// 循环读
				Item it = item.get(mapKey);
				Object value;

				value = it.read(true).getValue().getObject();
				if (mapKey.contains("读地址")) {
					String[] a = mapKey.split("读地址.");
					String key = "d" + a[1];
					if (key.contains("#")) {
						key = key.replace("#", "");
					}
					dmap.put(key, value);
				} else if (mapKey.contains("写地址")) {
					String[] a = mapKey.split("写地址.");
					String key = "d" + a[1];
					if (key.contains("#")) {
						key = key.replace("#", "");
					}
					dmap.put(key, value);
				} else if (mapKey.contains("写数据")) {
					String[] a = mapKey.split("写数据.");
					String key = "d" + a[1];
					if (key.contains("#")) {
						key = key.replace("#", "");
					}
					dmap.put(key, value);
				}

			}
			json.put("map", dmap);
			json.put("flag", flag);
		} catch (Exception e) {
			e.printStackTrace();
		}
		server.dispose();
		return json;
	}

	// 循环泵变频页面
	@RequestMapping("xhbpstate")
	@ResponseBody
	public JSONObject xhbpstate(String hrzname, String name)
			throws JIException, IllegalArgumentException, UnknownHostException, AlreadyConnectedException,
			NotConnectedException, DuplicateGroupException, AddFailedException {
		JSONObject json = new JSONObject();
		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());
		server.connect();
		String bpqycjd = hrzname + ".写地址.变频器手自动";
		String bppxz = hrzname + ".写数据.变频泵选择";
		String ghsycsd = hrzname + ".写数据.供回水压差设定";
		String xhpplsd = hrzname + ".写数据.循泵频率设定";
		String xhppl = hrzname + ".读数据.循环泵频率";
		
		String[] itemId = { bpqycjd, bppxz, xhpplsd, xhppl, ghsycsd };
		Group group = null;
		group = server.addGroup("groupssb");
		group.setActive(true);
		Map<String, Object> dmap = new HashMap<String, Object>();
		Map<String, Item> item;
		item = group.addItems(itemId);

		for (String mapKey : item.keySet()) {
			// 循环读
			Item it = item.get(mapKey);
			Object value;
			try {
				value = it.read(true).getValue().getObject();
				if (mapKey.contains("写地址")) {
					String[] a = mapKey.split("写地址.");
					String key = a[1];

					dmap.put(key, value);
				} else if (mapKey.contains("写数据")) {
					String[] a = mapKey.split("写数据.");
					String key = a[1];

					dmap.put(key, value);
				} else if (mapKey.contains("读数据")) {
					String[] a = mapKey.split("读数据.");
					String key = a[1];

					boolean b = isNumeric(String.valueOf(value));
					if (b == false) {
						value = "0";
					} else {
						value = String.format("%.2f", value);
					}
					dmap.put(key, value);
				}
			} catch (JIException e) {
				e.printStackTrace();
			}
		}
		server.dispose();
		json.put("map", dmap);

		return json;
	}

	// 循环泵手自动
	@RequestMapping("xhbbpxg")
	@ResponseBody
	public JSONObject xhbbp(String hrzname, String val) throws NotConnectedException, DuplicateGroupException {
		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());
		JSONObject json = new JSONObject();
		Map<String, Object> maps = new HashMap<>();
		// 待写
		String bpqycjd = hrzname + ".写地址.变频器手自动";
		try {
			server.connect();
			// 读
			Group group = null;
			String[] itemId = { bpqycjd };
			group = server.addGroup();
			group.setActive(true);
			// 读
			Map<String, Item> ditem;

			ditem = group.addItems(itemId);
			for (String s : ditem.keySet()) {
				Item it = ditem.get(s);
				// 循环写
				final JIVariant value = new JIVariant(val);
				it.write(value);
				
				state = it.read(true);
				// 循环读
				try {
					Thread.sleep(3000);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
				Object values = it.read(true).getValue().getObject();
				if (s.contains("写地址")) {
					String[] a = s.split("写地址.");
					String key = a[1];
					maps.put(key, values);
				}
			}
			server.dispose();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		json.put("maps", maps);
		return json;
	}

	// 循环泵变频修改
	@RequestMapping("xhbbpcsxg")
	@ResponseBody
	public JSONObject xhbbpcsxg(String hrzname, String id, String val, String name)
			throws NotConnectedException, DuplicateGroupException {
		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());
		JSONObject json = new JSONObject();
		Map<String, Object> maps = new HashMap<>();
		// 待写
		String bpqycjd = hrzname + ".写数据." + name;
		try {
			server.connect();
			// 读
			Group group = null;
			String[] itemId = { bpqycjd };
			group = server.addGroup();
			group.setActive(true);
			// 读
			Map<String, Item> ditem;

			ditem = group.addItems(itemId);
			for (String s : ditem.keySet()) {
				Item it = ditem.get(s);
				// 循环写
				final JIVariant value = new JIVariant(val);
				it.write(value);
				try {
					Thread.sleep(1000);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
				state = it.read(true);
				// 循环读

				Object values = it.read(true).getValue().getObject();

//				if (s.equals("北京华誉.新乡商务大厦.写数据.变频泵选择")) {
//					values = values.toString().substring(0, 1);
//				}
				maps.put("vs", values);
			}
			maps.put("id", id);
			server.dispose();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		json.put("maps", maps);
		return json;
	}

	String s;

	/*// 定时调用数据
	@RequestMapping("xtkzSj")
	@ResponseBody
	public JSONObject xtkzSj(String hrzname) throws NotConnectedException, DuplicateGroupException, AddFailedException {
		JSONObject json = new JSONObject();
		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());
		String[] d = DUtil.dsj(hrzname);
		Map<String, Object> dmap = new HashMap<String, Object>();
		Map<String, Item> map = null;
		Group group = null;
		try {
			server.connect();
			group = server.addGroup("groupyx");
			group.setActive(true);
			map = group.addItems(d);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		if (map != null) {
			for (Entry<String, Item> temp : map.entrySet()) {
				try {
					Thread.sleep(100);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				try {
					String id = temp.getValue().getId();
					Object value = temp.getValue().read(true).getValue().getObject();
					 if(id.contains("读数据")){
					String[] a = id.split("读数据.");
					String key = "d" + a[1];
					if (key.contains("#")) {
						key = key.replace("#", "");
					}
					boolean b = isNumeric(String.valueOf(value));

					if (b == false) {
						value = "0";
					} else {
						value = String.format("%.2f", value);
					}
					dmap.put(key, value);
					 }else if(id.contains("读地址")){
					
					 String[] a=id.split("读地址.");
					 String key="d"+a[1];
					 if(key.contains("#")){
					 key=key.replace("#", "");
					 }
					 dmap.put(key, value);
					 }

				} catch (JIException e) {
					e.printStackTrace();
				}

			}
		}
		server.dispose();
		json.put("map", dmap);
		return json;
	}*/

	// 判断是否是数字
	public boolean isNumeric(String value) {
		Pattern pattern = Pattern.compile("-?[0-9]+.*[0-9]*");
		Matcher isNum = pattern.matcher(value);
		if (!isNum.matches()) {
			return false;
		}
		return true;
	}

	// 循环泵压差设定
	@ResponseBody
	@RequestMapping("xhbylsd")
	public JSONObject xhbylsd(String hrzname, String val) {
		JSONObject json = new JSONObject();
		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());

		Item item;
		try {
			server.connect();
			String zjzlsx = hrzname + ".写数据.供回水压差设定";
			final Group group = server.addGroup("xhbyxsd");
			item = group.addItem(zjzlsx);

			final JIVariant value = new JIVariant(val);
			item.write(value);
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			state = item.read(true);

			Thread.sleep(100);
			Object valu = item.read(false).getValue().getObject();
			boolean b = isNumeric(String.valueOf(valu));
			if (b == false) {
				valu = "0";
			} else {
				valu = String.format("%.2f", valu);
			}
			json.put("valu", valu);
		} catch (Exception e) {
			e.printStackTrace();
		}

		server.dispose();
		return json;
	}
	
	
	
	
	//设备复位
	@ResponseBody
	@RequestMapping("sbfw")
	public JSONObject sbfw(String val,String name,String hrzname) {
		JSONObject json = new JSONObject();
		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());

		Item item;
		try {
			server.connect();
			String zjzlsx = hrzname + ".写地址."+name;
			final Group group = server.addGroup("xhbyxsd");
			item = group.addItem(zjzlsx);

			final JIVariant value = new JIVariant(val);
			item.write(value);
			try {
				Thread.sleep(2000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			state = item.read(true);

		} catch (Exception e) {
			e.printStackTrace();
		}

		server.dispose();
		return json;
	}
	
}
