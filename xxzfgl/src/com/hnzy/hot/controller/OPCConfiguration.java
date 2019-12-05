package com.hnzy.hot.controller;

import org.openscada.opc.lib.common.ConnectionInformation;

public class OPCConfiguration {
	 private final static ConnectionInformation ci;
	    public final static String CONFIG_USERNAME = "OPCServer";
	    public final static String CONFIG_PASSWORD = "ymq123";
//	    public final static String CONFIG_USERNAME = "OPCServer";
//	    public final static String CONFIG_PASSWORD = "Hnzy67896";
	    
	    public final static String CONFIG_HOST = "127.0.0.1";
	    public final static String CONFIG_DOMAIN = "domain";
	    public final static String CONFIG_CLSID = "7BC0CC8E-482C-47CA-ABDC-0FE7F9C6E729";
	    public final static String CONFIG_PROGID = "Kepware.KEPServerEX.V6";
	    /**
	     * 加载配置文件
	     */
	    static {
	        ci = new ConnectionInformation();

	    }

	    /**
	     * 获得包含ClsId的连接信息
	     */
	    public static ConnectionInformation getCLSIDConnectionInfomation() {
	        ci.setProgId(null);
	        getConnectionInfomation();
	        ci.setClsid(CONFIG_CLSID);
	        return ci;
	    }
	    /**
	     * 获得包含ProgId的连接信息
	     */
	    public static ConnectionInformation getPROGIDConnectionInfomation() {
	        ci.setClsid(null);
	        getConnectionInfomation();
	        ci.setProgId(CONFIG_PROGID);
	        return ci;
	    }
	    /**
	     * 获得基础的连接信息
	     */
	    private static void getConnectionInfomation() {
	        ci.setHost(CONFIG_HOST);
	        ci.setDomain(CONFIG_DOMAIN);
	        ci.setUser(CONFIG_USERNAME);
	        ci.setPassword(CONFIG_PASSWORD);
	    }
}
