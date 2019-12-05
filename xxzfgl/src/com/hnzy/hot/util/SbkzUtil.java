package com.hnzy.hot.util;

import java.net.UnknownHostException;
import java.util.concurrent.Executors;

import org.jinterop.dcom.common.JIException;
import org.openscada.opc.lib.common.AlreadyConnectedException;
import org.openscada.opc.lib.common.ConnectionInformation;
import org.openscada.opc.lib.da.Server;

public class SbkzUtil {
	
	public static Server sb(){
		  // 连接信息 
	    final ConnectionInformation ci = new ConnectionInformation();
	    ci.setHost("127.0.0.1");         // 电脑IP
	    ci.setDomain("");                  // 域，为空就行
	    ci.setUser("OPCServer");             // 电脑上自己建好的用户名
	    ci.setPassword("ymq123");          // 用户名的密码
	    
	    ci.setClsid("7BC0CC8E-482C-47CA-ABDC-0FE7F9C6E729"); // KEPServer的注册表ID，可以在“组件服务”里看到
	   

	    final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());
	    	//连接
	        try {
				server.connect();
			} catch (IllegalArgumentException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (UnknownHostException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JIException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (AlreadyConnectedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        return server;
	}
}
