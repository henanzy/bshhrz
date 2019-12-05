package com.hnzy.hot.util;

import java.net.UnknownHostException;
import java.util.concurrent.Executors;

import org.jinterop.dcom.common.JIException;
import org.openscada.opc.lib.common.AlreadyConnectedException;
import org.openscada.opc.lib.common.ConnectionInformation;
import org.openscada.opc.lib.common.NotConnectedException;
import org.openscada.opc.lib.da.DuplicateGroupException;
import org.openscada.opc.lib.da.Group;
import org.openscada.opc.lib.da.Server;

public class DOMUtil {
	private String ip="127.0.0.1";
	private String user="OPCServer";
	private String password="ymq123";
	private String clsid="7BC0CC8E-482C-47CA-ABDC-0FE7F9C6E729";
    final static ConnectionInformation ci = new ConnectionInformation ();  
public void init(){
	 // create connection information  
    ci.setHost(ip);         // 电脑IP
    ci.setDomain("");       // 域，为空就行
    ci.setUser(user);       // 电脑上自己建好的用户名
    ci.setPassword(password); // 用户名的密码
    ci.setClsid(clsid);
 }
private DOMUtil() {   
    init();   
}  
public static Group server(){
	// create a new server  
    final Server server = new Server ( ci, Executors.newSingleThreadScheduledExecutor () );  
     Group group = null;
        try {
			server.connect ();
	      
			try {
				group = server.addGroup ( "group" );
				 group.setActive ( true );
			} catch (NotConnectedException e) {
				
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (DuplicateGroupException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  
	        // group is initially active ... just for demonstration  
	       
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
		return group;  
  }
}
