package com.hnzy.hot.controller;
import java.io.UnsupportedEncodingException;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.jinterop.dcom.common.JIException;
import org.openscada.opc.lib.common.AlreadyConnectedException;
import org.openscada.opc.lib.common.ConnectionInformation;
import org.openscada.opc.lib.common.NotConnectedException;
import org.openscada.opc.lib.da.AddFailedException;
import org.openscada.opc.lib.da.DuplicateGroupException;
import org.openscada.opc.lib.da.Group;
import org.openscada.opc.lib.da.Item;
import org.openscada.opc.lib.da.Server;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.hnzy.hot.service.HrzService;
import com.hnzy.hot.util.DUtil;
import com.hnzy.hot.util.XUtil;

import net.sf.json.JSONObject;


@Component 
public class JyjTask{
	
	@Autowired
	HrzService hrzService;
	
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss") ;

	 public boolean isNumeric(String value){
         Pattern pattern = Pattern.compile("-?[0-9]+.*[0-9]*");
         Matcher isNum = pattern.matcher(value);
         if( !isNum.matches() ){
             return false;
         }
         return true;
  }
	 
	 @Scheduled(cron="0/30 * *  * * ? ")   
	    public void updateRy(){      
			 ConnectionInformation ci=OPCConfiguration.getCLSIDConnectionInfomation();
		       final Server server = new Server ( ci, Executors.newSingleThreadScheduledExecutor () );
		       String[] d=XUtil.ry();
		       
		       Map<String,Object> dmap=new HashMap<String, Object>();
		       Map<String, Item> map = null;
	            	     Group group = null;
	            				try {
									server.connect ();
	            					 group = server.addGroup ( "groupyx" );
	            					 group.setActive ( true );
					                try {
										map = group.addItems(d);
									} catch (AddFailedException e) {
										// TODO Auto-generated catch block
										e.printStackTrace();
									}
								} catch (IllegalArgumentException e1) {
									// TODO Auto-generated catch block
									e1.printStackTrace();
								} catch (UnknownHostException e1) {
									// TODO Auto-generated catch block
									e1.printStackTrace();
								} catch (JIException e1) {
									// TODO Auto-generated catch block
									e1.printStackTrace();
								} catch (AlreadyConnectedException e1) {
									// TODO Auto-generated catch block
									e1.printStackTrace();
								} catch (NotConnectedException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								} catch (DuplicateGroupException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
	            				
	        					for (Entry<String, Item> temp : map.entrySet()) {
	        						try {
	        							Thread.sleep(100);
	        						} catch (InterruptedException e) {
	        							// TODO Auto-generated catch block
	        							e.printStackTrace();
	        						}
	        					
									try {
										String id= temp.getValue().getId();
		        						Object value = temp.getValue().read(true).getValue().getObject();
		        						
//										 String[] a=id.split("读数据.");
//							            	String key=a[1];
//							            	if(key.contains("#")){
//							            		key=key.replace("#", "");
//							            	}
							            	boolean b=isNumeric(String.valueOf(value));
							            	
							            	if(b==false){
							            		value = temp.getValue().read(true).getValue().getObject();
							            	}
							                  String s=String.format("%.2f",value);
							                  dmap.put(id, s);
									} catch (JIException e) {
										// TODO Auto-generated catch block
										e.printStackTrace();
									}
	        						
	        					}
	        					
	        					   server.dispose();
	        					   
	        					   Map<String, Object> insMap=new HashMap<>();
	        					   
	        					   insMap.put("hrz", "宝石花"); 
	        					   insMap.put("ry_csqkgzt_1", dmap.get(XUtil.ry_csqkgzt_1));insMap.put("ry_cwqdsbj_1", dmap.get(XUtil.ry_cwqdsbj_1));
	        					   insMap.put("ry_csqljll_1", dmap.get(XUtil.ry_csqljll_1));insMap.put("ry_cwqdscf_1", dmap.get(XUtil.ry_cwqdscf_1));
	        					   insMap.put("ry_csqqt_1", dmap.get(XUtil.ry_csqqt_1));insMap.put("ry_csqsdzt_1", dmap.get(XUtil.ry_csqsdzt_1));
	        					   insMap.put("ry_cwqdsjc_1", dmap.get(XUtil.ry_cwqdsjc_1));insMap.put("ry_cwqhyl_1", dmap.get(XUtil.ry_cwqhyl_1));
	        					   insMap.put("ry_csqssll_1", dmap.get(XUtil.ry_csqssll_1));insMap.put("ry_cwqhyljy_1", dmap.get(XUtil.ry_cwqhyljy_1));
	        					   insMap.put("ry_csqzdzt_1", dmap.get(XUtil.ry_csqzdzt_1));insMap.put("ry_cwqhyllc_1", dmap.get(XUtil.ry_cwqhyllc_1));
	        					   insMap.put("ry_cwqqhyc_1", dmap.get(XUtil.ry_cwqqhyc_1));insMap.put("ry_cwqhylsx_1", dmap.get(XUtil.ry_cwqhylsx_1));
	        					   insMap.put("ry_cwqqyl_1", dmap.get(XUtil.ry_cwqqyl_1));insMap.put("ry_cwqhylxx_1", dmap.get(XUtil.ry_cwqhylxx_1));
	        					   insMap.put("ry_cwqqyljy_1", dmap.get(XUtil.ry_cwqqyljy_1));insMap.put("ry_cwqqyllc_1", dmap.get(XUtil.ry_cwqqyllc_1));
	        					   insMap.put("ry_cwqqylsx_1", dmap.get(XUtil.ry_cwqqylsx_1));insMap.put("ry_cwqqylxx_1", dmap.get(XUtil.ry_cwqqylxx_1));
	        					   insMap.put("ry_jzbsljll_1", dmap.get(XUtil.ry_jzbsljll_1));insMap.put("ry_jzbsssll_1", dmap.get(XUtil.ry_jzbsssll_1));
	        					   insMap.put("ry_jbgzzt_1", dmap.get(XUtil.ry_jbgzzt_1));insMap.put("ry_jbkzfs_1", dmap.get(XUtil.ry_jbkzfs_1));
	        					   insMap.put("ry_jbplfk_1", dmap.get(XUtil.ry_jbplfk_1));insMap.put("ry_jbplsd_1", dmap.get(XUtil.ry_jbplsd_1));
	        					   insMap.put("ry_jbqt_1", dmap.get(XUtil.ry_jbqt_1));insMap.put("ry_jbyxzt_1", dmap.get(XUtil.ry_jbyxzt_1));
	        					   insMap.put("ry_qsbzdpl_1", dmap.get(XUtil.ry_qsbzdpl_1));insMap.put("ry_ryjljll_1", dmap.get(XUtil.ry_ryjljll_1));
	        					   insMap.put("ry_ryjssll_1", dmap.get(XUtil.ry_ryjssll_1));insMap.put("ry_ryjyw_1", dmap.get(XUtil.ry_ryjyw_1));
	        					   insMap.put("ry_ryjywjy_1", dmap.get(XUtil.ry_ryjywjy_1));insMap.put("ry_ryjywlc_1", dmap.get(XUtil.ry_ryjywlc_1));
	        					   insMap.put("ry_ryjywsx_1", dmap.get(XUtil.ry_ryjywsx_1));insMap.put("ry_ryjywxx_1", dmap.get(XUtil.ry_ryjywxx_1));
	        					  
	        					   insMap.put("ry_csqkgzt_2", dmap.get(XUtil.ry_csqkgzt_2));insMap.put("ry_cwqdsbj_2", dmap.get(XUtil.ry_cwqdsbj_2));
	        					   insMap.put("ry_csqljll_2", dmap.get(XUtil.ry_csqljll_2));insMap.put("ry_cwqdscf_2", dmap.get(XUtil.ry_cwqdscf_2));
	        					   insMap.put("ry_csqqt_2", dmap.get(XUtil.ry_csqqt_2));insMap.put("ry_csqsdzt_2", dmap.get(XUtil.ry_csqsdzt_2));
	        					   insMap.put("ry_cwqdsjc_2", dmap.get(XUtil.ry_cwqdsjc_2));insMap.put("ry_cwqhyl_2", dmap.get(XUtil.ry_cwqhyl_2));
	        					   insMap.put("ry_csqssll_2", dmap.get(XUtil.ry_csqssll_2));insMap.put("ry_cwqhyljy_2", dmap.get(XUtil.ry_cwqhyljy_2));
	        					   insMap.put("ry_csqzdzt_2", dmap.get(XUtil.ry_csqzdzt_2));insMap.put("ry_cwqhyllc_2", dmap.get(XUtil.ry_cwqhyllc_2));
	        					   insMap.put("ry_cwqqhyc_2", dmap.get(XUtil.ry_cwqqhyc_2));insMap.put("ry_cwqhylsx_2", dmap.get(XUtil.ry_cwqhylsx_2));
	        					   insMap.put("ry_cwqqyl_2", dmap.get(XUtil.ry_cwqqyl_2));insMap.put("ry_cwqhylxx_2", dmap.get(XUtil.ry_cwqhylxx_2));
	        					   insMap.put("ry_cwqqyljy_2", dmap.get(XUtil.ry_cwqqyljy_2));insMap.put("ry_cwqqyllc_2", dmap.get(XUtil.ry_cwqqyllc_2));
	        					   insMap.put("ry_cwqqylsx_2", dmap.get(XUtil.ry_cwqqylsx_2));insMap.put("ry_cwqqylxx_2", dmap.get(XUtil.ry_cwqqylxx_2));
	        					   insMap.put("ry_jzbsljll_2", dmap.get(XUtil.ry_jzbsljll_2));insMap.put("ry_jzbsssll_2", dmap.get(XUtil.ry_jzbsssll_2));
	        					   insMap.put("ry_jbgzzt_2", dmap.get(XUtil.ry_jbgzzt_2));insMap.put("ry_jbkzfs_2", dmap.get(XUtil.ry_jbkzfs_2));
	        					   insMap.put("ry_jbplfk_2", dmap.get(XUtil.ry_jbplfk_2));insMap.put("ry_jbplsd_2", dmap.get(XUtil.ry_jbplsd_2));
	        					   insMap.put("ry_jbqt_2", dmap.get(XUtil.ry_jbqt_2));insMap.put("ry_jbyxzt_2", dmap.get(XUtil.ry_jbyxzt_2));
	        					   insMap.put("ry_qsbzdpl_2", dmap.get(XUtil.ry_qsbzdpl_2));insMap.put("ry_ryjljll_2", dmap.get(XUtil.ry_ryjljll_2));
	        					   insMap.put("ry_ryjssll_2", dmap.get(XUtil.ry_ryjssll_2));insMap.put("ry_ryjyw_2", dmap.get(XUtil.ry_ryjyw_2));
	        					   insMap.put("ry_ryjywjy_2", dmap.get(XUtil.ry_ryjywjy_2));insMap.put("ry_ryjywlc_2", dmap.get(XUtil.ry_ryjywlc_2));
	        					   insMap.put("ry_ryjywsx_2", dmap.get(XUtil.ry_ryjywsx_2));insMap.put("ry_ryjywxx_2", dmap.get(XUtil.ry_ryjywxx_2));
	        					   
	        					   insMap.put("ry_jbgzzt_3", dmap.get(XUtil.ry_jbgzzt_3));insMap.put("ry_jbplfk_3", dmap.get(XUtil.ry_jbplfk_3));
	        					   insMap.put("ry_jbplsd_3", dmap.get(XUtil.ry_jbplsd_3));insMap.put("ry_jbqt_3", dmap.get(XUtil.ry_jbqt_3));
	        					   insMap.put("ry_jbyxzt_3", dmap.get(XUtil.ry_jbyxzt_3));insMap.put("ry_ryjljll_3", dmap.get(XUtil.ry_ryjljll_3));
	        					   insMap.put("ry_ryjssll_3", dmap.get(XUtil.ry_ryjssll_3));insMap.put("ry_ryjyw_3", dmap.get(XUtil.ry_ryjyw_3));
	        					   insMap.put("ry_ryjywjy_3", dmap.get(XUtil.ry_ryjywjy_3));insMap.put("ry_ryjywlc_3", dmap.get(XUtil.ry_ryjywlc_3));
	        					   insMap.put("ry_ryjywsx_3", dmap.get(XUtil.ry_ryjywsx_3));insMap.put("ry_ryjywxx_3", dmap.get(XUtil.ry_ryjywxx_3));
	        					   insMap.put("ry_ryjywsxbj_3", dmap.get(XUtil.ry_ryjywsxbj_3));insMap.put("ry_ryjywxxbj_3", dmap.get(XUtil.ry_ryjywxxbj_3));
	        					   
	        					   insMap.put("ry_jbgzzt_4", dmap.get(XUtil.ry_jbgzzt_4));insMap.put("ry_jbplfk_4", dmap.get(XUtil.ry_jbplfk_4));
	        					   insMap.put("ry_jbplsd_4", dmap.get(XUtil.ry_jbplsd_4));insMap.put("ry_jbqt_4", dmap.get(XUtil.ry_jbqt_4));
	        					   insMap.put("ry_jbyxzt_4", dmap.get(XUtil.ry_jbyxzt_4));insMap.put("ry_ryjljll_4", dmap.get(XUtil.ry_ryjljll_4));
	        					   insMap.put("ry_ryjssll_4", dmap.get(XUtil.ry_ryjssll_4));insMap.put("ry_ryjyw_4", dmap.get(XUtil.ry_ryjyw_4));
	        					   insMap.put("ry_ryjywjy_4", dmap.get(XUtil.ry_ryjywjy_4));insMap.put("ry_ryjywlc_4", dmap.get(XUtil.ry_ryjywlc_4));
	        					   insMap.put("ry_ryjywsx_4", dmap.get(XUtil.ry_ryjywsx_4));insMap.put("ry_ryjywxx_4", dmap.get(XUtil.ry_ryjywxx_4));
	        					   insMap.put("ry_ryjywsxbj_4", dmap.get(XUtil.ry_ryjywsxbj_4));insMap.put("ry_ryjywxxbj_4", dmap.get(XUtil.ry_ryjywxxbj_4));
	        					   
	        					   insMap.put("cw1hylsxbj", dmap.get(XUtil.cw1hylsxbj));insMap.put("cw1hylxxbj", dmap.get(XUtil.cw1hylxxbj));
	        					   insMap.put("cw1qylsxbj", dmap.get(XUtil.cw1qylsxbj));insMap.put("cw1qylxxbj", dmap.get(XUtil.cw1qylxxbj));
	        					   insMap.put("cw2hylsxbj", dmap.get(XUtil.cw2hylsxbj));insMap.put("cw2hylxxbj", dmap.get(XUtil.cw2hylxxbj));
	        					   insMap.put("cw2qylsxbj", dmap.get(XUtil.cw2qylsxbj));insMap.put("cw2qylxxbj", dmap.get(XUtil.cw2qylxxbj));
	        					   insMap.put("fjsqyc", dmap.get(XUtil.fjsqyc));insMap.put("fsqwd", dmap.get(XUtil.fsqwd));
	        					   insMap.put("fsqwdjy", dmap.get(XUtil.fsqwdjy));insMap.put("fsqwdlcsx", dmap.get(XUtil.fsqwdlcsx));
	        					   insMap.put("fsqwdlcxx", dmap.get(XUtil.fsqwdlcxx));insMap.put("fsqwdsx", dmap.get(XUtil.fsqwdsx));
	        					   insMap.put("fsqwdsxbj", dmap.get(XUtil.fsqwdsxbj));insMap.put("fsqwdxx", dmap.get(XUtil.fsqwdxx));
	        					   insMap.put("fsqwdxxbj", dmap.get(XUtil.fsqwdxxbj));insMap.put("glys", dmap.get(XUtil.glys));
	        					   insMap.put("jsqwd", dmap.get(XUtil.jsqwd));insMap.put("jsqwdjy", dmap.get(XUtil.jsqwdjy));
	        					   insMap.put("jsqwdlcsx", dmap.get(XUtil.jsqwdlcsx));insMap.put("jsqwdlcxx", dmap.get(XUtil.jsqwdlcxx));
	        					   insMap.put("jsqwdsx", dmap.get(XUtil.jsqwdsx));insMap.put("jsqwdsxbj", dmap.get(XUtil.jsqwdsxbj));
	        					   insMap.put("jsqwdxx", dmap.get(XUtil.jsqwdxx));insMap.put("jsqyl", dmap.get(XUtil.jsqyl));
	        					   insMap.put("jsqyljy", dmap.get(XUtil.jsqyljy));insMap.put("jsqwdxxbj", dmap.get(XUtil.jsqwdxxbj));
	        					   insMap.put("jsqyllc", dmap.get(XUtil.jsqyllc));insMap.put("jsqylsx", dmap.get(XUtil.jsqylsx));
	        					   insMap.put("jsqylsxbj", dmap.get(XUtil.jsqylsxbj));insMap.put("jsqylxx", dmap.get(XUtil.jsqylxx));
	        					   insMap.put("jsqylxxbj", dmap.get(XUtil.jsqylxxbj));insMap.put("pdfwd", dmap.get(XUtil.pdfwd));
	        					   insMap.put("pdfwdjy", dmap.get(XUtil.pdfwdjy));insMap.put("pdfwdlcsx", dmap.get(XUtil.pdfwdlcsx));
	        					   insMap.put("pdfwdlcxx", dmap.get(XUtil.pdfwdlcxx));insMap.put("pdfwdsx", dmap.get(XUtil.pdfwdsx));
	        					   insMap.put("pdfwdsxbj", dmap.get(XUtil.pdfwdsxbj));insMap.put("pdfwdxx", dmap.get(XUtil.pdfwdxx));
	        					   insMap.put("pdfwdxxbj", dmap.get(XUtil.pdfwdxxbj));insMap.put("pl", dmap.get(XUtil.pl));
	        					   insMap.put("ryjzljll", dmap.get(XUtil.ryjzljll));insMap.put("ryjzssll", dmap.get(XUtil.ryjzssll));
	        					   insMap.put("ryzssllsd", dmap.get(XUtil.ryzssllsd));insMap.put("rhsljll", dmap.get(XUtil.rhsljll));
	        					   insMap.put("rhsssll", dmap.get(XUtil.rhsssll));insMap.put("swwd", dmap.get(XUtil.swwd));
	        					   insMap.put("swwdjy", dmap.get(XUtil.swwdjy));insMap.put("swwdlcsx", dmap.get(XUtil.swwdlcsx));
	        					   insMap.put("swwdlcxx", dmap.get(XUtil.swwdlcxx));insMap.put("sxyw", dmap.get(XUtil.sxyw));
	        					   insMap.put("sxywgdbj", dmap.get(XUtil.sxywgdbj));insMap.put("sxywgdz", dmap.get(XUtil.sxywgdz));
	        					   insMap.put("sxywjy", dmap.get(XUtil.sxywjy));insMap.put("sxywlc", dmap.get(XUtil.sxywlc));
	        					   insMap.put("sxywsx", dmap.get(XUtil.sxywsx));insMap.put("sxywsxbj", dmap.get(XUtil.sxywsxbj));
	        					   insMap.put("sxywxx", dmap.get(XUtil.sxywxx)); insMap.put("sxywxxbj", dmap.get(XUtil.sxywxxbj));
	        					   insMap.put("zlsljll", dmap.get(XUtil.zlsljll)); insMap.put("zlsljll", dmap.get(XUtil.zlsljll));
	        					   insMap.put("zdl", dmap.get(XUtil.zdl)); insMap.put("zlsssll", dmap.get(XUtil.zlsssll));
	        					   insMap.put("ry_ryjywsxbj_1", dmap.get(XUtil.ry_ryjywsxbj_1)); insMap.put("ry_ryjywxxbj_1", dmap.get(XUtil.ry_ryjywxxbj_1));
	        					   insMap.put("ry_ryjywxxbj_2", dmap.get(XUtil.ry_ryjywxxbj_2)); insMap.put("ry_ryjywsxbj_2", dmap.get(XUtil.ry_ryjywsxbj_2));
	        					   
	        					   Date date = new Date();
	        					   insMap.put("time", dateFormat.format(date));
	        					  
	        					   hrzService.updateRy(insMap);
	    }   
	 @Scheduled(cron="0/30 * *  * * ? ")   
	    public void updateJz(){      
			 ConnectionInformation ci=OPCConfiguration.getCLSIDConnectionInfomation();
		       final Server server = new Server ( ci, Executors.newSingleThreadScheduledExecutor () );
		       String[] d=XUtil.jz();
		       
		       Map<String,Object> dmap=new HashMap<String, Object>();
		       Map<String, Item> map = null;
	            	     Group group = null;
	            				try {
									server.connect ();
	            					 group = server.addGroup ( "groupyx" );
	            					 group.setActive ( true );
					                try {
										map = group.addItems(d);
									} catch (AddFailedException e) {
										// TODO Auto-generated catch block
										e.printStackTrace();
									}
								} catch (IllegalArgumentException e1) {
									// TODO Auto-generated catch block
									e1.printStackTrace();
								} catch (UnknownHostException e1) {
									// TODO Auto-generated catch block
									e1.printStackTrace();
								} catch (JIException e1) {
									// TODO Auto-generated catch block
									e1.printStackTrace();
								} catch (AlreadyConnectedException e1) {
									// TODO Auto-generated catch block
									e1.printStackTrace();
								} catch (NotConnectedException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								} catch (DuplicateGroupException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
	            				
	        					for (Entry<String, Item> temp : map.entrySet()) {
	        						try {
	        							Thread.sleep(100);
	        						} catch (InterruptedException e) {
	        							// TODO Auto-generated catch block
	        							e.printStackTrace();
	        						}
	        					
									try {
										String id= temp.getValue().getId();
		        						Object value = temp.getValue().read(true).getValue().getObject();
		        						
//										 String[] a=id.split("读数据.");
//							            	String key=a[1];
//							            	if(key.contains("#")){
//							            		key=key.replace("#", "");
//							            	}
							            	boolean b=isNumeric(String.valueOf(value));
							            	
							            	if(b==false){
							            		value = temp.getValue().read(true).getValue().getObject();
							            	}
							                  String s=String.format("%.2f",value);
							                  dmap.put(id, s);
									} catch (JIException e) {
										// TODO Auto-generated catch block
										e.printStackTrace();
									}
	        						
	        					}
	        					
	        					   server.dispose();
	        					   
	        					   Map<String, Object> insMap=new HashMap<>();
	        					   
	        					   insMap.put("hrz", "宝石花"); 
	        					   insMap.put("bsbgzfk_1", dmap.get(XUtil.bsbgzfk_1));insMap.put("bsbgzfk_2", dmap.get(XUtil.bsbgzfk_2));
	        					   insMap.put("bsbyxfk_1", dmap.get(XUtil.bsbyxfk_1));insMap.put("bsbyxfk_2", dmap.get(XUtil.bsbyxfk_2));
	        					   insMap.put("bsbyxsj_1", dmap.get(XUtil.bsbyxsj_1));insMap.put("bsbyxsj_2", dmap.get(XUtil.bsbyxsj_2));
	        					   insMap.put("bsbyxsjql_1", dmap.get(XUtil.bsbyxsjql_1));insMap.put("bsbyxsjql_2", dmap.get(XUtil.bsbyxsjql_2));
	        					   insMap.put("bsbzdyxkg_1", dmap.get(XUtil.bsbzdyxkg_1));insMap.put("bsbzdyxkg_2", dmap.get(XUtil.bsbzdyxkg_2));
	        					   insMap.put("xhbgzfk_1", dmap.get(XUtil.xhbgzfk_1));insMap.put("xhbgzfk_2", dmap.get(XUtil.xhbgzfk_2));
	        					   insMap.put("xhbyxfk_1", dmap.get(XUtil.xhbyxfk_1));insMap.put("xhbyxfk_2", dmap.get(XUtil.xhbyxfk_2));
	        					   insMap.put("xhbyxsj_1", dmap.get(XUtil.xhbyxsj_1));insMap.put("xhbyxsj_2", dmap.get(XUtil.xhbyxsj_2));
	        					   insMap.put("xhbyxsjql_1", dmap.get(XUtil.xhbyxsjql_1));insMap.put("xhbyxsjql_2", dmap.get(XUtil.xhbyxsjql_2));
	        					   insMap.put("xhbzdyxkg_1", dmap.get(XUtil.xhbzdyxkg_1));insMap.put("xhbzdyxkg_2", dmap.get(XUtil.xhbzdyxkg_2));
	        					   insMap.put("btlsd", dmap.get(XUtil.btlsd));insMap.put("bsbPIDblsd", dmap.get(XUtil.bsbPIDblsd));
	        					   insMap.put("bsbPIDjfsd", dmap.get(XUtil.bsbPIDjfsd));insMap.put("bsbPIDwjfsd", dmap.get(XUtil.bsbPIDwjfsd));
	        					   insMap.put("bsbdbsjsd", dmap.get(XUtil.bsbdbsjsd));insMap.put("bsbplfk", dmap.get(XUtil.bsbplfk));
	        					   insMap.put("bsbszdqh", dmap.get(XUtil.bsbszdqh));insMap.put("bsbyxdb", dmap.get(XUtil.bsbyxdb));
	        					   insMap.put("bsbpqgz", dmap.get(XUtil.bsbpqgz));insMap.put("bshxpcsd", dmap.get(XUtil.bshxpcsd));
	        					   insMap.put("bsplsd", dmap.get(XUtil.bsplsd));insMap.put("bssmplsd", dmap.get(XUtil.bssmplsd));
	        					   insMap.put("bsylsd", dmap.get(XUtil.bsylsd));insMap.put("czbtlsd", dmap.get(XUtil.czbtlsd));
	        					   insMap.put("czjojysd", dmap.get(XUtil.czjojysd));insMap.put("ddfPIDblsd", dmap.get(XUtil.ddfPIDblsd));
	        					   insMap.put("ddfPIDjfsd", dmap.get(XUtil.ddfPIDjfsd));insMap.put("ddfPIDwfsd", dmap.get(XUtil.ddfPIDwfsd));
	        					   insMap.put("ddfszdqh", dmap.get(XUtil.ddfszdqh));insMap.put("ddtjffwfk", dmap.get(XUtil.ddtjffwfk));
	        					   insMap.put("ecghsyc", dmap.get(XUtil.ecghsyc));insMap.put("ecgscwbj", dmap.get(XUtil.ecgscwbj));
	        					   insMap.put("ecgscybj", dmap.get(XUtil.ecgscybj));insMap.put("ecgsdwbj", dmap.get(XUtil.ecgsdwbj));
	        					   insMap.put("ecgswd", dmap.get(XUtil.ecgswd));insMap.put("ecgswdgdsdz", dmap.get(XUtil.ecgswdgdsdz));
	
	        					   insMap.put("ecgswdggsdz", dmap.get(XUtil.ecgswdggsdz));insMap.put("ecgsyl", dmap.get(XUtil.ecgsyl));
	        					   insMap.put("ecgsylgxbhsd", dmap.get(XUtil.ecgsylgxbhsd));insMap.put("ecgsylgxtxhb", dmap.get(XUtil.ecgsylgxtxhb));
	        					   insMap.put("echsyldxbhsd", dmap.get(XUtil.echsyldxbhsd));insMap.put("echsyldxtxhb", dmap.get(XUtil.echsyldxtxhb));
	        					   insMap.put("ecgsylggsdz", dmap.get(XUtil.ecgsylggsdz));insMap.put("echsylgdsdz", dmap.get(XUtil.echsylgdsdz));
	        					   insMap.put("echssybj", dmap.get(XUtil.echssybj));insMap.put("echswd", dmap.get(XUtil.echswd));
	        					   insMap.put("echsyl", dmap.get(XUtil.echsyl));insMap.put("ecljll", dmap.get(XUtil.ecljll));
	        					   insMap.put("eclljjlxs", dmap.get(XUtil.eclljjlxs));insMap.put("eclljzdzsd", dmap.get(XUtil.eclljzdzsd));
	        					   insMap.put("ecssll", dmap.get(XUtil.ecssll));insMap.put("ecylbsqdxlcsd", dmap.get(XUtil.ecylbsqdxlcsd));
	        					   insMap.put("ecylbsqgxlcsd", dmap.get(XUtil.ecylbsqgxlcsd));insMap.put("gzbj", dmap.get(XUtil.gzbj));
	        					   insMap.put("jojysd", dmap.get(XUtil.jojysd));insMap.put("sdgswdsd1", dmap.get(XUtil.sdgswdsd1));
	        					   insMap.put("sdgswdsd2", dmap.get(XUtil.sdgswdsd2));insMap.put("sdgswdsd3", dmap.get(XUtil.sdgswdsd3));
	        					   insMap.put("sdgswdsd4", dmap.get(XUtil.sdgswdsd4));insMap.put("sdgswdsd5", dmap.get(XUtil.sdgswdsd5));
	        					   insMap.put("sdgswdsd6", dmap.get(XUtil.sdgswdsd6));insMap.put("sdgswdsd7", dmap.get(XUtil.sdgswdsd7));
	        					   insMap.put("sdsd1", dmap.get(XUtil.sdsd1));insMap.put("sdsd2", dmap.get(XUtil.sdsd2));
	        					   insMap.put("sdsd3", dmap.get(XUtil.sdsd3));insMap.put("sdsd4", dmap.get(XUtil.sdsd4));
	        					   insMap.put("sdsd5", dmap.get(XUtil.sdsd5));insMap.put("sdsd6", dmap.get(XUtil.sdsd6));
	        					   insMap.put("sdkdsd", dmap.get(XUtil.sdkdsd));insMap.put("wdbsqdxlcsd", dmap.get(XUtil.wdbsqdxlcsd));
	        					   insMap.put("wdbsqgxlcsd", dmap.get(XUtil.wdbsqgxlcsd));insMap.put("xhbPIDblsd", dmap.get(XUtil.xhbPIDblsd));
	        					   insMap.put("xhbPIDjfsd", dmap.get(XUtil.xhbPIDjfsd));insMap.put("xhbPIDwfsd", dmap.get(XUtil.xhbPIDwfsd));
	        					  
	        					   
	        					   Date date = new Date();
	        					   insMap.put("time", dateFormat.format(date));
	        					  
	        					   hrzService.updateRy(insMap);
	    }   
	
}
