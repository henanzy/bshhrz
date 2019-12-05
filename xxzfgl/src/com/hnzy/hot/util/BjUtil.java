package com.hnzy.hot.util;

public class BjUtil {
	private static String xhbgz1=".读地址.1#循环泵故障";
	private static String xhbgz2=".读地址.2#循环泵故障";
	private static String xhbgz3=".读地址.3#循环泵故障";
	private static String ssbgz1=".读地址.1#深水泵故障";
	private static String ssbgz2=".读地址.2#深水泵故障";
	private static String ssbgz3=".读地址.3#深水泵故障";
	private static String Axqybj=".读地址.A项欠压报警";
	private static String Axgybj=".读地址.A项高压报警";
	private static String Bxqybj=".读地址.B项欠压报警";
	private static String Bxgybj=".读地址.B项高压报警";
	private static String Cxqybj=".读地址.C项欠压报警";
	private static String Cxgybj=".读地址.C项高压报警";
	private static String gsycsxbj=".读地址.供回压差上限报警";
	private static String gsycxxbj=".读地址.供回压差下限报警";
	private static String gswdsxbj=".读地址.供水温度上限报警";
	private static String gswdxxbj=".读地址.供水温度下限报警";
	private static String hswdsxbj=".读地址.回水温度上限报警";
	private static String gsylsxbj=".读地址.供水压力上限报警";
	private static String gsylxxbj=".读地址.供水压力下限报警";
	private static String hswdxxbj=".读地址.回水温度下限报警";
	private static String hsylsxbj=".读地址.回水压力上限报警";
	private static String hsylxxbj=".读地址.回水压力下限报警";
	
	private static String hsylgdbj=".读地址.回水压力过低报警";
	private static String ywsxbj=".读地址.液位上限报警";
	private static String ywxxbj=".读地址.液位下限报警";
	private static String zjlcwdbj1=".读地址.主机1冷出温度报警";
	private static String zjljwdbj1=".读地址.主机1冷进温度报警";
	private static String zjldblbj1=".读地址.主机1冷冻靶流报警";
	private static String zjlqblbj1=".读地址.主机1冷却靶流报警";
	private static String zjrjwdbj1=".读地址.主机1热进温度报警";
	private static String zjrcwdbj1=".读地址.主机1热出温度报警";
	private static String zj1xt1dybj=".读地址.主机1系统1低压报警";
	private static String zj1xt1gybj=".读地址.主机1系统1高压报警";
	private static String zj1xt2dybj=".读地址.主机1系统2低压报警";
	private static String zj1xt2gybj=".读地址.主机1系统2高压报警";
	private static String zj1xt1gz=".读地址.主机1系统1故障";
	private static String zj1xt2gz=".读地址.主机1系统2故障";
	private static String zjzrdwbj1=".读地址.主机1制热低温报警";
	private static String zjzlgwbj1=".读地址.主机1制冷高温报警";
	private static String zj2lcwdbj=".读地址.主机2冷出温度报警";
	private static String zj2ldblbj=".读地址.主机2冷冻靶流报警";
	private static String zj2ljwdbj=".读地址.主机2冷进温度报警";
	private static String zj2lqblbj=".读地址.主机2冷却靶流1报警";
	private static String zj2rjwdbj=".读地址.主机2热进温度报警";
	private static String zj2rcwdbj=".读地址.主机2热出温度报警";
	private static String zjxt1dybj=".读地址.主机2系统1低压报警";
	private static String zjxt1gybj=".读地址.主机2系统1高压报警";
	private static String zj2xt1gz=".读地址.主机2系统1故障";
	private static String zj2xt2dybj=".读地址.主机2系统2低压报警";
	private static String zj2xt2gybj=".读地址.主机2系统2高压报警";
	private static String zj2xt2gz=".读地址.主机2系统2故障";
	private static String zj2zrdwbj=".读地址.主机2制热低温报警";
	private static String zj2zlgwbj=".读地址.主机2制冷高温报警";
	private static String zj3lcwdbj=".读地址.主机3冷出温度报警";
	private static String zj3ldblbj=".读地址.主机3冷冻靶流报警";
	private static String zj3ljwdbj=".读地址.主机3冷进温度报警";
	private static String zj3lqblbj=".读地址.主机3冷却靶流1报警";
	private static String zj3rjwdbj=".读地址.主机3热进温度报警";
	private static String zj3rcwdbj=".读地址.主机3热出温度报警";
	private static String zj3xt1gz=".读地址.主机3系统1故障";
	private static String zj3xt1dybj=".读地址.主机3系统1低压报警";
	private static String zj3xt1gybj=".读地址.主机3系统1高压报警";
	private static String zj3xt2dybj=".读地址.主机3系统2低压报警";
	private static String zj3xt2gybj=".读地址.主机3系统2高压报警";
	private static String zj3xt3gz=".读地址.主机3系统2故障";
	private static String zj3zrdwbj=".读地址.主机3制热低温报警";
	private static String zj3zlgwbj=".读地址.主机3制冷高温报警";
	private static String zj4lcwdbj=".读地址.主机4冷出温度报警";
	private static String zj4ldblbj=".读地址.主机4冷冻靶流报警";
	private static String zj4ljwdbj=".读地址.主机4冷进温度报警";
	private static String zj4lqblbj=".读地址.主机4冷却靶流1报警";
	private static String zj4rjwdbj=".读地址.主机4热进温度报警";
	private static String zj4rcwdbj=".读地址.主机4热出温度报警";
	private static String zj4xt1gz=".读地址.主机4系统1故障";
	private static String zj4xt1dybj=".读地址.主机4系统1低压报警";
	private static String zj4xt1gybj=".读地址.主机4系统1高压报警";
	private static String zj4xt2dybj=".读地址.主机4系统2低压报警";
	private static String zj4xt2gybj=".读地址.主机4系统2高压报警";
	private static String zj4xt3gz=".读地址.主机4系统2故障";
	private static String zj4zrdwbj=".读地址.主机4制热低温报警";
	private static String zj4zlgwbj=".读地址.主机4制冷高温报警";
	private static final String HOST_COOL_WATER_NOT_1 = ".读地址.1#主机冷水无水流";
    private static final String HOST_HOT_WATER_NOT_1 = ".读地址.1#主机热水无水流";
    private static final String HOST_COOL_WATER_NOT_2 = ".读地址.2#主机冷水无水流";
    private static final String HOST_HOT_WATER_NOT_2 = ".读地址.2#主机热水无水流";
    private static final String HOST_COOL_WATER_NOT_3 = ".读地址.3#主机冷水无水流";
    private static final String HOST_HOT_WATER_NOT_3 =  ".读地址.3#主机热水无水流";
    private static final String HOST_COOL_WATER_NOT_4 = ".读地址.4#主机冷水无水流";
    private static final String HOST_HOT_WATER_NOT_4 = ".读地址.4#主机热水无水流";
  	
	public static String[]yxcs(String hrzn){
 	   	 String[] str=new String[]{
 	   			hrzn+gswdsxbj,hrzn+gswdxxbj,hrzn+hswdsxbj, hrzn+hswdxxbj,
 	   		hrzn+xhbgz1,hrzn+xhbgz2,hrzn+xhbgz3,hrzn+ssbgz1,hrzn+ssbgz2,hrzn+ssbgz3,hrzn+Axqybj,hrzn+Axgybj,hrzn+Bxqybj,hrzn+Bxgybj,hrzn+Cxqybj,hrzn+Cxgybj,hrzn+gsylsxbj,hrzn+gsylxxbj,hrzn+hsylsxbj
 	   	,hrzn+hsylxxbj,hrzn+ywsxbj,hrzn+ywxxbj,hrzn+zjldblbj1,hrzn+zjlqblbj1,hrzn+zjrjwdbj1,hrzn+zjrcwdbj1,hrzn+zj1xt1dybj,hrzn+zj1xt1gybj,hrzn+zj1xt2dybj,hrzn+zj1xt2gybj
 	   ,hrzn+zjzrdwbj1,hrzn+zjzlgwbj1,hrzn+gsycsxbj,hrzn+gsycxxbj,hrzn+gsycxxbj,hrzn+hsylgdbj,hrzn+zjlcwdbj1,hrzn+zjljwdbj1,hrzn+zj1xt1gz,hrzn+zj1xt2gz,hrzn+zj2lcwdbj
				,hrzn+zj2ldblbj,hrzn+zj2ljwdbj,hrzn+zj2lqblbj,hrzn+zj2rjwdbj,hrzn+zj2rcwdbj,hrzn+zjxt1dybj,hrzn+zjxt1gybj,hrzn+zj2xt1gz,hrzn+zj2xt2dybj
				,hrzn+zj2xt2gybj,hrzn+zj2xt2gz,hrzn+zj2zrdwbj,hrzn+zj2zlgwbj,hrzn+zj3lcwdbj,hrzn+zj3ldblbj,hrzn+zj3ljwdbj,hrzn+zj3lqblbj,hrzn+zj3rjwdbj
				,hrzn+zj3zlgwbj,hrzn+zj3rcwdbj,hrzn+zj3xt1gz,hrzn+zj3xt1dybj,hrzn+zj3xt1gybj,hrzn+zj3xt2dybj,hrzn+zj3xt2gybj,hrzn+zj3xt3gz,hrzn+zj3zrdwbj,
 				hrzn+zj4lcwdbj,hrzn+zj4ldblbj,hrzn+zj4ljwdbj,hrzn+zj4lqblbj,hrzn+zj4rjwdbj,hrzn+zj4rcwdbj,hrzn+zj4xt1gz,hrzn+zj4xt1dybj
 				,hrzn+zj4xt1gybj,hrzn+zj4xt2dybj,hrzn+zj4xt2gybj,hrzn+zj4xt3gz,hrzn+zj4zrdwbj,hrzn+zj4zlgwbj
 				
 				,hrzn+HOST_COOL_WATER_NOT_1,hrzn+HOST_HOT_WATER_NOT_1,hrzn+HOST_COOL_WATER_NOT_2,hrzn+HOST_HOT_WATER_NOT_2,hrzn+HOST_COOL_WATER_NOT_3,hrzn+HOST_HOT_WATER_NOT_3,hrzn+HOST_COOL_WATER_NOT_4
 				,hrzn+HOST_HOT_WATER_NOT_4
 				
 	    };
 	   	return str;
 	}
	
}
