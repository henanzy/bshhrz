<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>



<!-- Required Stylesheets -->
<link rel="stylesheet" type="text/css" href="../css/reset.css"
	media="screen" />
<link rel="stylesheet" type="text/css" href="../css/text.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="../css/fonts/ptsans/stylesheet.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../css/fluid.css"
	media="screen" />

<link rel="stylesheet" type="text/css" href="../css/mws.style.css"
	media="screen" />
<link rel="stylesheet" type="text/css" href="../css/icons/icons.css"
	media="screen" />

<!-- Demo and Plugin Stylesheets -->
<link rel="stylesheet" type="text/css" href="../css/demo.css"
	media="screen" />

<link rel="stylesheet" type="text/css"
	href="../plugins/colorpicker/colorpicker.css" media="screen" />
<link rel="stylesheet" type="text/css"
	href="../plugins/jimgareaselect/css/imgareaselect-default.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="../plugins/fullcalendar/fullcalendar.css" media="screen" />
<link rel="stylesheet" type="text/css"
	href="../plugins/fullcalendar/fullcalendar.print.css" media="print" />
<link rel="stylesheet" type="text/css" href="../plugins/tipsy/tipsy.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="../plugins/sourcerer/Sourcerer-1.2.css" media="screen" />
<link rel="stylesheet" type="text/css"
	href="../plugins/jgrowl/jquery.jgrowl.css" media="screen" />
<link rel="stylesheet" type="text/css"
	href="../plugins/spinner/spinner.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../css/jui/jquery.ui.css"
	media="screen" />
<link rel="stylesheet" type="text/css" href="../js/layer/2.4/skin/layer.css" media="screen" />
<script type="text/javascript" src="../js/layer/2.4/layer.js"></script>
<script type="text/javascript" src="../js/layui/layui.js"></script>
<script type="text/javascript" src="../js/layui/layui.all.js"></script>
<link rel="stylesheet" type="text/css" href="../js/layui/css/layui.css" media="screen" />
<!-- Theme Stylesheet -->
<link rel="stylesheet" type="text/css" href="../css/mws.theme.css"
	media="screen" />

<!-- JavaScript Plugins -->

<script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>

<script type="text/javascript"
	src="../plugins/jimgareaselect/jquery.imgareaselect.min.js"></script>
<script type="text/javascript"
	src="../plugins/jquery.dualListBox-1.3.min.js"></script>
<script type="text/javascript" src="../plugins/jgrowl/jquery.jgrowl.js"></script>
<script type="text/javascript" src="../plugins/jquery.filestyle.js"></script>
<script type="text/javascript"
	src="../plugins/fullcalendar/fullcalendar.min.js"></script>
<script type="text/javascript" src="../plugins/jquery.dataTables.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="../plugins/flot/excanvas.min.js"></script>
<![endif]-->
<script type="text/javascript" src="../plugins/flot/jquery.flot.min.js"></script>
<script type="text/javascript"
	src="../plugins/flot/jquery.flot.pie.min.js"></script>
<script type="text/javascript"
	src="../plugins/flot/jquery.flot.stack.min.js"></script>
<script type="text/javascript"
	src="../plugins/flot/jquery.flot.resize.min.js"></script>
<script type="text/javascript"
	src="../plugins/colorpicker/colorpicker.js"></script>
<script type="text/javascript" src="../plugins/tipsy/jquery.tipsy.js"></script>
<script type="text/javascript"
	src="../plugins/sourcerer/Sourcerer-1.2.js"></script>
<script type="text/javascript" src="../plugins/jquery.placeholder.js"></script>
<script type="text/javascript" src="../plugins/jquery.validate.js"></script>
<script type="text/javascript" src="../plugins/jquery.mousewheel.js"></script>
<script type="text/javascript" src="../plugins/spinner/ui.spinner.js"></script>
<script type="text/javascript" src="../js/jquery-ui.js"></script>

<script type="text/javascript" src="../js/mws.js"></script>
<script type="text/javascript" src="../js/demo.js"></script>
<script type="text/javascript" src="../js/themer.js"></script>



<style type="text/css">
  .alert-skin .layui-layer-title  {
  background-color: #333;
  color: #C5D52B;
}
 .layui-layer-close{
background-color: #C5D52B
} 
/*  .layui-btn{
background-color:  #333
}  */

.mws-report {
	width: 98% !important;
	min-width: 170px;
	margin: 8px 1%;
	height: 80px;
	float: left;
	cursor: pointer;
	display: block;
	text-decoration: none;
	color: #323232;
}


.xuanzhong{
  border-style:solid !important; 
  border-width:2px !important; 
  border-color:red !important; 
}
#jk_search_btn{
		margin-top:8px;
		margin-left:20px;
		border:none;
		background-color:rgb(60,61,61);
		width:60px;
		height:24px;
		margin-right:6px;
		color:#fff;
		border-radius:6px;
	}

.csinput {
	text-align: center;
	border-radius: 5px;
	height: 20px;
}
.dirlist{
		width:140px;
		height:36px;
		line-height:36px;
		border: 2px solid #2b2d31;
		background-color:rgba(255,255,255,0.6);
		border-radius:8px;
		/* box-shadow:6px 6px 6px 0 #aaa; */
		color:#2b2d31;
		text-align:center;
		position:relative;
		margin-bottom:30px;
	}
	select{
		width:110px;
		height:24px;
		line-height:24px;
		border-radius:4px;
		background-color:rgba(43,45,49,0.8);
		color:#fff;
		cursor:pointer;
		text-align:center;
	}
	.dirlist:after{
		display:block;
		content:'';
	    border-width:8px 8px 8px 8px;
	    border-style:solid;
	    border-color: rgba(43,45,49,0.8) transparent transparent transparent;
	    /* 定位 */
	    position:absolute;
	    left:70%;
	    top:100%;
	}
.alert-skin .layui-layer-title  {

  background-color: #333;
  color: #C5D52B;
}
.bg{
height:100%;
width:100%;


background:url('../images/background/fm.png') no-repeat ;
background-size:96% 80%;


}
</style>

</head>
<script type="text/javascript">

$(function(){	
 	  setInterval(function() { 
 		 var hrzname = $("#hrzname").val();
 		$.ajax({
 			url :"xtkzSj.action",
 			type : "post",
 			dataType : "json",
 			data : {
 				"hrzname":hrzname,
 			},
 			success : function(data) {
 				var d = eval(data).map;
 				var lcwd1=d.d主机1冷出温度;
 				var ljwd1=d.d主机1冷进温度;
 				var rcwd1=d.d主机1热出温度;
 				var rjwd1=d.d主机1热进温度;
 				var lcwd2=d.d2主机冷出温度;
 				var ljwd2=d.d2主机冷进温度;
 				var rcwd2=d.d2主机热出温度;
 				var rjwd2=d.d2主机热进温度;
 				var lcwd3=d.d3主机冷出温度;
 				var ljwd3=d.d3主机冷进温度;
 				var rcwd3=d.d3主机热出温度;
 				var rjwd3=d.d3主机热进温度;
 				var lcwd4=d.d4主机冷出温度;
 				var ljwd4=d.d4主机冷进温度;
 				var rcwd4=d.d4主机热出温度;
 				var rjwd4=d.d4主机热进温度;
 				var gswdxyz=d.d供水温度需要值;
 				var zrwdxyz=d.d制热供水温度需要值;
 				$('#rj1').html(rjwd1+"℃");
 				$('#rc1').html(rcwd1+"℃");
 				$('#lj1').html(ljwd1+"℃");
 				$('#lc1').html(lcwd1+"℃");
 				$('#rj2').html(rjwd2+"℃");
 				$('#rc2').html(rcwd2+"℃");
 				$('#lj2').html(ljwd2+"℃");
 				$('#lc2').html(lcwd2+"℃");
 				$('#rj3').html(rjwd3+"℃");
 				$('#rc3').html(rcwd3+"℃");
 				$('#lj3').html(ljwd3+"℃");
 				$('#lc3').html(lcwd3+"℃");
 				$('#rj4').html(rjwd4+"℃");
 				$('#rc4').html(rcwd4+"℃");
 				$('#lj4').html(ljwd4+"℃");
 				$('#lc4').html(lcwd4+"℃");
 				$('#gswdxyz').html(gswdxyz+"℃");
 				$('#zrwdxyz').html(zrwdxyz+"℃");
 				var hswd=d.d回水温度;
 				var hsyl=d.d回水压力;
 				var ghyc=d.d供回水压差;
 				var gsyl=d.d供水压力;
 				var gswd=d.d供水温度;
 				var ssrl=d.d瞬时热量;
 				var ssll=d.d瞬时流量;
 				var swwd=d.d室外温度;
 				var sxyw=d.d水箱液位;
 				$('#ssrl').html(ssrl+"GJ/h");
 				$('#gsyl').html(gsyl+"bar");
 				$('#gswd').html(gswd+"℃");
 				$('#hswd').html(hswd+"℃");
 				$('#hsyl').html(hsyl+"bar");
 				$('#swwd').html(swwd+"℃");
 				$('#ghyc').html(ghyc+"bar");
 				$('#sxyw').html(sxyw+"m");
 				$('#ssll').html(ssll+"m³/h");
 				
 				/* var xhbyx1=d.d1循环泵运行;
 				var xhbyx2=d.d2循环泵运行;
 				var xhbyx3=d.d3循环泵运行;
 				if(xhbyx1) */
 				
 				var dfyx1=d.d1蝶阀开关;
 				var dfyx2=d.d2蝶阀开关;
 				var dfyx3=d.d3蝶阀开关;
 				var dfyx4=d.d4蝶阀开关;
 				if(dfyx1==true){
 					 $(".dfyx1").attr('src','../images/yxgz/11.png') 	
 				}else if(dfyx1==false){
 					 $(".dfyx1").attr('src','../images/yxgz/00.png') 	
 				}
 				
 				if(dfyx2==true){
 					 $(".dfyx2").attr('src','../images/yxgz/11.png') 	
 				}else if(dfyx2==false){
 					 $(".dfyx2").attr('src','../images/yxgz/00.png') 	
 				}
 				if(dfyx3==true){
 					 $(".dfyx3").attr('src','../images/yxgz/11.png') 	
 				}else if(dfyx3==false){
 					 $(".dfyx3").attr('src','../images/yxgz/00.png') 	
 				}
 				
 				if(dfyx4==true){
 					 $(".dfyx4").attr('src','../images/yxgz/11.png') 	
 				}else if(dfyx4==false){
 					 $(".dfyx4").attr('src','../images/yxgz/00.png') 	
 				}
 				
 				var zjyx1=d.d主机1总运行指示;
 				var zjyx2=d.d主机2总运行指示;
 				var zjyx3=d.d主机3总运行指示;
 				var zjyx4=d.d主机4总运行指示;
 				
 				
 				
 				if(zjyx1==true){
 					 $(".zjyx1").attr('src','../images/yxgz/11.png') 	
 				}else if(zjyx1==false){
 					 $(".zjyx1").attr('src','../images/yxgz/00.png') 	
 				}
 				if(zjyx2==true){
 					 $(".zjyx2").attr('src','../images/yxgz/11.png') 	
 				}else if(zjyx2==false){
 					 $(".zjyx2").attr('src','../images/yxgz/00.png') 	
 				}
 				if(zjyx3==true){
 					 $(".zjyx3").attr('src','../images/yxgz/11.png') 	
 				}else if(zjyx3==false){
 					 $(".zjyx3").attr('src','../images/yxgz/00.png') 	
 				}
 				if(zjyx4==true){
 					 $(".zjyx4").attr('src','../images/yxgz/11.png') 	
 				}else if(zjyx4==false){
 					 $(".zjyx4").attr('src','../images/yxgz/00.png') 	
 				}
 				
 				var xhbyx1=d.d1循环泵运行;
 				var xhbyx2=d.d2循环泵运行;
 				var xhbyx3=d.d3循环泵运行;
 				
 				if(xhbyx1==true){
 					 $(".xhbyx1").attr('src','../images/yxgz/sy.gif') 	
 				}else{
 					 $(".xhbyx1").attr('src','') 
 				}
 				
 				if(xhbyx2==true){
 					 $(".xhbyx2").attr('src','../images/yxgz/sy.gif') 	
 				}else{
 					 $(".xhbyx2").attr('src','') 
 				}
 				if(xhbyx3==true){
 					 $(".xhbyx3").attr('src','../images/yxgz/sy.gif') 	
 				}else{
 					 $(".xhbyx3").attr('src','') 
 				}
 				
 				
 				var ssbyx1=d.d1深水泵运行;
 				var ssbyx2=d.d2深水泵运行;
 				var ssbyx3=d.d3深水泵运行;
 				if(ssbyx1==true){
 					 $(".ssbyx1").attr('src','../images/yxgz/sy.gif') 	
 				}else{
 					 $(".ssbyx1").attr('src','') 
 				}
 				if(ssbyx2==true){
 					 $(".ssbyx2").attr('src','../images/yxgz/sy.gif') 	
 				}else{
 					 $(".ssbyx2").attr('src','') 
 				}
 				if(ssbyx3==true){
 					 $(".ssbyx3").attr('src','../images/yxgz/sy.gif') 	
 				}else{
 					 $(".ssbyx3").attr('src','') 
 				}
 				var zjycj11=d.d1主机压缩机1;
 				var zjycj12=d.d1主机压缩机2;
 				var zjycj13=d.d1主机压缩机3;
 				var zjycj14=d.d1主机压缩机4;
 				var zjycj15=d.d1主机压缩机5;
 				var zjycj16=d.d1主机压缩机6;
 				var zjycj21=d.d2主机压缩机1;
 				var zjycj22=d.d2主机压缩机2;
 				var zjycj23=d.d2主机压缩机3;
 				var zjycj24=d.d2主机压缩机4;
 				var zjycj25=d.d2主机压缩机5;
 				var zjycj26=d.d2主机压缩机6;
 				var zjycj31=d.d3主机压缩机1;
 				var zjycj32=d.d3主机压缩机2;
 				var zjycj33=d.d3主机压缩机3;
 				var zjycj34=d.d3主机压缩机4;
 				var zjycj35=d.d3主机压缩机5;
 				var zjycj36=d.d3主机压缩机6;
 				var zjycj41=d.d4主机压缩机1;
 				var zjycj42=d.d4主机压缩机2;
 				var zjycj43=d.d4主机压缩机3;
 				var zjycj44=d.d4主机压缩机4;
 				var zjycj45=d.d4主机压缩机5;
 				var zjycj46=d.d4主机压缩机6;
 				
 				if(zjycj11==true){
 					 $(".zjyc11").attr('src','../images/yxgz/11.png') 
 				}else if(zjycj11==false){
 					 $(".zjyc11").attr('src','../images/yxgz/00.png') 
 				}
 				if(zjycj12==true){
 					 $(".zjyc12").attr('src','../images/yxgz/11.png') 
 				}else if(zjycj12==false){
 					 $(".zjyc12").attr('src','../images/yxgz/00.png') 
 				}
 				if(zjycj13==true){
 					 $(".zjyc13").attr('src','../images/yxgz/11.png') 
 				}else if(zjycj13==false){
 					 $(".zjyc13").attr('src','../images/yxgz/00.png') 
 				}
 				if(zjycj14==true){
 					 $(".zjyc14").attr('src','../images/yxgz/11.png') 
 				}else if(zjycj14==false){
 					 $(".zjyc14").attr('src','../images/yxgz/00.png') 
 				}
 				if(zjycj15==true){
 					 $(".zjyc15").attr('src','../images/yxgz/11.png') 
 				}else if(zjycj15==false){
 					 $(".zjyc15").attr('src','../images/yxgz/00.png') 
 				}
 				if(zjycj16==true){
 					 $(".zjyc16").attr('src','../images/yxgz/11.png') 
 				}else if(zjycj16==false){
 					 $(".zjyc16").attr('src','../images/yxgz/00.png') 
 				}
 				if(zjycj21==true){
 					 $(".zjyc21").attr('src','../images/yxgz/11.png') 
 				}else if(zjycj21==false){
 					 $(".zjyc21").attr('src','../images/yxgz/00.png') 
 				}
 				if(zjycj22==true){
 					 $(".zjyc22").attr('src','../images/yxgz/11.png') 
 				}else if(zjycj22==false){
 					 $(".zjyc22").attr('src','../images/yxgz/00.png') 
 				}
 				if(zjycj23==true){
 					 $(".zjyc23").attr('src','../images/yxgz/11.png') 
 				}else if(zjycj23==false){
 					 $(".zjyc23").attr('src','../images/yxgz/00.png') 
 				}
 				if(zjycj24==true){
 					 $(".zjyc24").attr('src','../images/yxgz/11.png') 
 				}else if(zjycj24==false){
 					 $(".zjyc24").attr('src','../images/yxgz/00.png') 
 				}
 				if(zjycj25==true){
 					 $(".zjyc25").attr('src','../images/yxgz/11.png') 
 				}else if(zjycj25==false){
 					 $(".zjyc25").attr('src','../images/yxgz/00.png') 
 				}
 				if(zjycj26==true){
 					 $(".zjyc26").attr('src','../images/yxgz/11.png') 
 				}else if(zjycj26==false){
 					 $(".zjyc26").attr('src','../images/yxgz/00.png') 
 				}
 				
 				if(zjycj31==true){
 					 $(".zjyc31").attr('src','../images/yxgz/11.png') 
 				}else if(zjycj31==false){
 					 $(".zjyc31").attr('src','../images/yxgz/00.png') 
 				}
 				if(zjycj32==true){
 					 $(".zjyc32").attr('src','../images/yxgz/11.png') 
 				}else if(zjycj32==false){
 					 $(".zjyc32").attr('src','../images/yxgz/00.png') 
 				}
 				if(zjycj33==true){
 					 $(".zjyc33").attr('src','../images/yxgz/11.png') 
 				}else if(zjycj33==false){
 					 $(".zjyc33").attr('src','../images/yxgz/00.png') 
 				}
 				if(zjycj34==true){
 					 $(".zjyc34").attr('src','../images/yxgz/11.png') 
 				}else if(zjycj34==false){
 					 $(".zjyc34").attr('src','../images/yxgz/00.png') 
 				}
 				if(zjycj35==true){
 					 $(".zjyc35").attr('src','../images/yxgz/11.png') 
 				}else if(zjycj35==false){
 					 $(".zjyc35").attr('src','../images/yxgz/00.png') 
 				}
 				if(zjycj36==true){
 					 $(".zjyc36").attr('src','../images/yxgz/11.png') 
 				}else if(zjycj36==false){
 					 $(".zjyc36").attr('src','../images/yxgz/00.png') 
 				}
 				
 				if(zjycj41==true){
 					 $(".zjyc41").attr('src','../images/yxgz/11.png') 
 				}else if(zjycj41==false){
 					 $(".zjyc41").attr('src','../images/yxgz/00.png') 
 				}
 				if(zjycj42==true){
 					 $(".zjyc42").attr('src','../images/yxgz/11.png') 
 				}else if(zjycj42==false){
 					 $(".zjyc42").attr('src','../images/yxgz/00.png') 
 				}
 				if(zjycj43==true){
 					 $(".zjyc43").attr('src','../images/yxgz/11.png') 
 				}else if(zjycj43==false){
 					 $(".zjyc43").attr('src','../images/yxgz/00.png') 
 				}
 				if(zjycj44==true){
 					 $(".zjyc44").attr('src','../images/yxgz/11.png') 
 				}else if(zjycj44==false){
 					 $(".zjyc44").attr('src','../images/yxgz/00.png') 
 				}
 				if(zjycj45==true){
 					 $(".zjyc45").attr('src','../images/yxgz/11.png') 
 				}else if(zjycj45==false){
 					 $(".zjyc45").attr('src','../images/yxgz/00.png') 
 				}
 				if(zjycj46==true){
 					 $(".zjyc46").attr('src','../images/yxgz/11.png') 
 				}else if(zjycj46==false){
 					 $(".zjyc46").attr('src','../images/yxgz/00.png') 
 				}
 			}
 	   });	
	  },1000); 
});


$(function(){	
		 var hrzname = $("#hrzname").val();
	$.ajax({
		url :"xtkzSj.action",
		type : "post",
		dataType : "json",
		data : {
			"hrzname":hrzname,
		},
		success : function(data) {
			var d = eval(data).map;
				var lcwd1=d.d主机1冷出温度;
				var ljwd1=d.d主机1冷进温度;
				var rcwd1=d.d主机1热出温度;
				var rjwd1=d.d主机1热进温度;
				var lcwd2=d.d2主机冷出温度;
				var ljwd2=d.d2主机冷进温度;
				var rcwd2=d.d2主机热出温度;
				var rjwd2=d.d2主机热进温度;
				var lcwd3=d.d3主机冷出温度;
				var ljwd3=d.d3主机冷进温度;
				var rcwd3=d.d3主机热出温度;
				var rjwd3=d.d3主机热进温度;
				var lcwd4=d.d4主机冷出温度;
				var ljwd4=d.d4主机冷进温度;
				var rcwd4=d.d4主机热出温度;
				var rjwd4=d.d4主机热进温度;
				var gswdxyz=d.d供水温度需要值;
				var zrwdxyz=d.d制热供水温度需要值;
				$('#rj1').html(rjwd1+"℃");
				$('#rc1').html(rcwd1+"℃");
				$('#lj1').html(ljwd1+"℃");
				$('#lc1').html(lcwd1+"℃");
				$('#rj2').html(rjwd2+"℃");
				$('#rc2').html(rcwd2+"℃");
				$('#lj2').html(ljwd2+"℃");
				$('#lc2').html(lcwd2+"℃");
				$('#rj3').html(rjwd3+"℃");
				$('#rc3').html(rcwd3+"℃");
				$('#lj3').html(ljwd3+"℃");
				$('#lc3').html(lcwd3+"℃");
				$('#rj4').html(rjwd4+"℃");
				$('#rc4').html(rcwd4+"℃");
				$('#lj4').html(ljwd4+"℃");
				$('#lc4').html(lcwd4+"℃");
				$('#gswdxyz').html(gswdxyz+"℃");
				$('#zrwdxyz').html(zrwdxyz+"℃");
				var hswd=d.d回水温度;
				var hsyl=d.d回水压力;
				var ghyc=d.d供回水压差;
				var gsyl=d.d供水压力;
				var gswd=d.d供水温度;
				var ssrl=d.d瞬时热量;
				var ssll=d.d瞬时流量;
				var swwd=d.d室外温度;
				var sxyw=d.d水箱液位;
				$('#ssrl').html(ssrl+"GJ/h");
				$('#gsyl').html(gsyl+"bar");
				$('#gswd').html(gswd+"℃");
				$('#hswd').html(hswd+"℃");
				$('#hsyl').html(hsyl+"bar");
				$('#swwd').html(swwd+"℃");
				$('#ghyc').html(ghyc+"bar");
				$('#sxyw').html(sxyw+"m");
				$('#ssll').html(ssll+"m³/h");
			
			/* var xhbyx1=d.d1循环泵运行;
			var xhbyx2=d.d2循环泵运行;
			var xhbyx3=d.d3循环泵运行;
			if(xhbyx1) */
			
			var dfyx1=d.d1蝶阀开关;
			var dfyx2=d.d2蝶阀开关;
			var dfyx3=d.d3蝶阀开关;
			var dfyx4=d.d4蝶阀开关;
			if(dfyx1==true){
				 $(".dfyx1").attr('src','../images/yxgz/11.png') 	
			}else if(dfyx1==false){
				 $(".dfyx1").attr('src','../images/yxgz/00.png') 	
			}
			
			if(dfyx2==true){
				 $(".dfyx2").attr('src','../images/yxgz/11.png') 	
			}else if(dfyx2==false){
				 $(".dfyx2").attr('src','../images/yxgz/00.png') 	
			}
			if(dfyx3==true){
				 $(".dfyx3").attr('src','../images/yxgz/11.png') 	
			}else if(dfyx3==false){
				 $(".dfyx3").attr('src','../images/yxgz/00.png') 	
			}
			
			if(dfyx4==true){
				 $(".dfyx4").attr('src','../images/yxgz/11.png') 	
			}else if(dfyx4==false){
				 $(".dfyx4").attr('src','../images/yxgz/00.png') 	
			}
			
			var zjyx1=d.d主机1总运行指示;
			var zjyx2=d.d主机2总运行指示;
			var zjyx3=d.d主机3总运行指示;
			var zjyx4=d.d主机4总运行指示;
			
			
			
			if(zjyx1==true){
				 $(".zjyx1").attr('src','../images/yxgz/11.png') 	
			}else if(zjyx1==false){
				 $(".zjyx1").attr('src','../images/yxgz/00.png') 	
			}
			if(zjyx2==true){
				 $(".zjyx2").attr('src','../images/yxgz/11.png') 	
			}else if(zjyx2==false){
				 $(".zjyx2").attr('src','../images/yxgz/00.png') 	
			}
			if(zjyx3==true){
				 $(".zjyx3").attr('src','../images/yxgz/11.png') 	
			}else if(zjyx3==false){
				 $(".zjyx3").attr('src','../images/yxgz/00.png') 	
			}
			if(zjyx4==true){
				 $(".zjyx4").attr('src','../images/yxgz/11.png') 	
			}else if(zjyx4==false){
				 $(".zjyx4").attr('src','../images/yxgz/00.png') 	
			}
			
			var xhbyx1=d.d1循环泵运行;
			var xhbyx2=d.d2循环泵运行;
			var xhbyx3=d.d3循环泵运行;
			
			if(xhbyx1==true){
				 $(".xhbyx1").attr('src','../images/yxgz/sy.gif') 	
			}
			
			if(xhbyx2==true){
				 $(".xhbyx2").attr('src','../images/yxgz/sy.gif') 	
			}
			if(xhbyx3==true){
				 $(".xhbyx3").attr('src','../images/yxgz/sy.gif') 	
			}
			
			
			var ssbyx1=d.d1深水泵运行;
			var ssbyx2=d.d2深水泵运行;
			var ssbyx3=d.d3深水泵运行;
			if(ssbyx1==true){
				 $(".ssbyx1").attr('src','../images/yxgz/sy.gif') 	
			}
			if(ssbyx2==true){
				 $(".ssbyx2").attr('src','../images/yxgz/sy.gif') 	
			}
			if(ssbyx3==true){
				 $(".ssbyx3").attr('src','../images/yxgz/sy.gif') 	
			}
			var zjycj11=d.d1主机压缩机1;
			var zjycj12=d.d1主机压缩机2;
			var zjycj13=d.d1主机压缩机3;
			var zjycj14=d.d1主机压缩机4;
			var zjycj15=d.d1主机压缩机5;
			var zjycj16=d.d1主机压缩机6;
			var zjycj21=d.d2主机压缩机1;
			var zjycj22=d.d2主机压缩机2;
			var zjycj23=d.d2主机压缩机3;
			var zjycj24=d.d2主机压缩机4;
			var zjycj25=d.d2主机压缩机5;
			var zjycj26=d.d2主机压缩机6;
			var zjycj31=d.d3主机压缩机1;
			var zjycj32=d.d3主机压缩机2;
			var zjycj33=d.d3主机压缩机3;
			var zjycj34=d.d3主机压缩机4;
			var zjycj35=d.d3主机压缩机5;
			var zjycj36=d.d3主机压缩机6;
			var zjycj41=d.d4主机压缩机1;
			var zjycj42=d.d4主机压缩机2;
			var zjycj43=d.d4主机压缩机3;
			var zjycj44=d.d4主机压缩机4;
			var zjycj45=d.d4主机压缩机5;
			var zjycj46=d.d4主机压缩机6;
			
			if(zjycj11==true){
				 $(".zjyc11").attr('src','../images/yxgz/11.png') 
			}else if(zjycj11==false){
				 $(".zjyc11").attr('src','../images/yxgz/00.png') 
			}
			if(zjycj12==true){
				 $(".zjyc12").attr('src','../images/yxgz/11.png') 
			}else if(zjycj12==false){
				 $(".zjyc12").attr('src','../images/yxgz/00.png') 
			}
			if(zjycj13==true){
				 $(".zjyc13").attr('src','../images/yxgz/11.png') 
			}else if(zjycj13==false){
				 $(".zjyc13").attr('src','../images/yxgz/00.png') 
			}
			if(zjycj14==true){
				 $(".zjyc14").attr('src','../images/yxgz/11.png') 
			}else if(zjycj14==false){
				 $(".zjyc14").attr('src','../images/yxgz/00.png') 
			}
			if(zjycj15==true){
				 $(".zjyc15").attr('src','../images/yxgz/11.png') 
			}else if(zjycj15==false){
				 $(".zjyc15").attr('src','../images/yxgz/00.png') 
			}
			if(zjycj16==true){
				 $(".zjyc16").attr('src','../images/yxgz/11.png') 
			}else if(zjycj16==false){
				 $(".zjyc16").attr('src','../images/yxgz/00.png') 
			}
			if(zjycj21==true){
				 $(".zjyc21").attr('src','../images/yxgz/11.png') 
			}else if(zjycj21==false){
				 $(".zjyc21").attr('src','../images/yxgz/00.png') 
			}
			if(zjycj22==true){
				 $(".zjyc22").attr('src','../images/yxgz/11.png') 
			}else if(zjycj22==false){
				 $(".zjyc22").attr('src','../images/yxgz/00.png') 
			}
			if(zjycj23==true){
				 $(".zjyc23").attr('src','../images/yxgz/11.png') 
			}else if(zjycj23==false){
				 $(".zjyc23").attr('src','../images/yxgz/00.png') 
			}
			if(zjycj24==true){
				 $(".zjyc24").attr('src','../images/yxgz/11.png') 
			}else if(zjycj24==false){
				 $(".zjyc24").attr('src','../images/yxgz/00.png') 
			}
			if(zjycj25==true){
				 $(".zjyc25").attr('src','../images/yxgz/11.png') 
			}else if(zjycj25==false){
				 $(".zjyc25").attr('src','../images/yxgz/00.png') 
			}
			if(zjycj26==true){
				 $(".zjyc26").attr('src','../images/yxgz/11.png') 
			}else if(zjycj26==false){
				 $(".zjyc26").attr('src','../images/yxgz/00.png') 
			}
			
			if(zjycj31==true){
				 $(".zjyc31").attr('src','../images/yxgz/11.png') 
			}else if(zjycj31==false){
				 $(".zjyc31").attr('src','../images/yxgz/00.png') 
			}
			if(zjycj32==true){
				 $(".zjyc32").attr('src','../images/yxgz/11.png') 
			}else if(zjycj32==false){
				 $(".zjyc32").attr('src','../images/yxgz/00.png') 
			}
			if(zjycj33==true){
				 $(".zjyc33").attr('src','../images/yxgz/11.png') 
			}else if(zjycj33==false){
				 $(".zjyc33").attr('src','../images/yxgz/00.png') 
			}
			if(zjycj34==true){
				 $(".zjyc34").attr('src','../images/yxgz/11.png') 
			}else if(zjycj34==false){
				 $(".zjyc34").attr('src','../images/yxgz/00.png') 
			}
			if(zjycj35==true){
				 $(".zjyc35").attr('src','../images/yxgz/11.png') 
			}else if(zjycj35==false){
				 $(".zjyc35").attr('src','../images/yxgz/00.png') 
			}
			if(zjycj36==true){
				 $(".zjyc36").attr('src','../images/yxgz/11.png') 
			}else if(zjycj36==false){
				 $(".zjyc36").attr('src','../images/yxgz/00.png') 
			}
			
			if(zjycj41==true){
				 $(".zjyc41").attr('src','../images/yxgz/11.png') 
			}else if(zjycj41==false){
				 $(".zjyc41").attr('src','../images/yxgz/00.png') 
			}
			if(zjycj42==true){
				 $(".zjyc42").attr('src','../images/yxgz/11.png') 
			}else if(zjycj42==false){
				 $(".zjyc42").attr('src','../images/yxgz/00.png') 
			}
			if(zjycj43==true){
				 $(".zjyc43").attr('src','../images/yxgz/11.png') 
			}else if(zjycj43==false){
				 $(".zjyc43").attr('src','../images/yxgz/00.png') 
			}
			if(zjycj44==true){
				 $(".zjyc44").attr('src','../images/yxgz/11.png') 
			}else if(zjycj44==false){
				 $(".zjyc44").attr('src','../images/yxgz/00.png') 
			}
			if(zjycj45==true){
				 $(".zjyc45").attr('src','../images/yxgz/11.png') 
			}else if(zjycj45==false){
				 $(".zjyc45").attr('src','../images/yxgz/00.png') 
			}
			if(zjycj46==true){
				 $(".zjyc46").attr('src','../images/yxgz/11.png') 
			}else if(zjycj46==false){
				 $(".zjyc46").attr('src','../images/yxgz/00.png') 
			}
		}
   });	
});
</script>


<script type="text/javascript" >

function xz(p){
	
	$(p).addClass("xuanzhong");
	$(p).next().removeClass("xuanzhong");
	$(p).prev().removeClass("xuanzhong");
}
//循环泵
function showXhb(flag,xhbyx,xhbgz,xhbms,yxjd){
	var xhbgz;
	var xhbyx;
	var xhbms;
	var yxjds;
	var xhbycsd;
	layui.form.render();
	  layer.open({
		  skin:"alert-skin",
	        type: 1,
	        title: "循环泵控制",
	        area: '450px',
	        offset: '120px',
	        content: $("#xhb").html()
	    });
	  /* setInterval(function() { */ 
	  var hrzname = $("#hrzname").val();
	  $.ajax({
			url :"xhbstate.action",
			type : "post",
			dataType : "json",
			async:false,
			data : {
				"yxname":xhbyx,
				"gzname":xhbgz,
				"xhbms":xhbms,
				"flag":flag,
				"yxjd":yxjd,
				"hrzname":hrzname,
			},
			success : function(data) {
				var sta=data.map;
				var flag=data.flag;
				if(flag==1){
					 xhbgz=sta.d1循环泵故障;
					 xhbyx=sta.d1循环泵运行;
					 xhbms=sta.d循环泵1模式;
				
				}else if(flag==2){
					xhbgz=sta.d2循环泵故障;
					xhbyx=sta.d2循环泵运行;
					xhbms=sta.d循环泵2模式;
					
				}else if(flag==3){
					xhbgz=sta.d3循环泵故障;
					xhbyx=sta.d3循环泵运行;
					xhbms=sta.d循环泵3模式;
					
				}
				//只可读
				yxjds=sta.d循环泵远程就地;
				xhbycsd=sta.d供回水压差设定;
				 
				$("#xhbycsd").val(xhbycsd);	
				
				if(yxjds==true){
					
					/*  $("#xxbyc").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#xxbjd").attr("class","layui-btn layui-btn-normal"); */
					
					$("#xhbyxjd").html("远程");
				}else if(yxjds==false){
				/* 	 $("#xxbjd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#xxbyc").attr("class","layui-btn layui-btn-normal"); */
						$("#xhbyxjd").html("就地");
				}
				//模式
				if(xhbms==false){
					/*  $("#zjbd").attr("class","layui-btn layui-btn-normal");
					 $("#zjycgk").attr("class","layui-btn layui-btn-normal"); */
					//强制
					 $("#xhbqz").attr("class","layui-btn layui-btn-disabled")
					  $("#xhbls").attr("class","layui-btn  layui-btn-normal");
					 $("#xhbqd").attr("class","layui-btn").prop("disabled" , false);
					 $("#xhbtz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false);
				 }else if(xhbms==true){
					 //连锁
					 $("#xhbls").attr("class","layui-btn layui-btn-disabled");
					  $("#xhbqz").attr("class","layui-btn  layui-btn-normal");
					 $("#xhbqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#xhbtz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
				 }
				
			
				 if(xhbgz ==true){
					  $(".xhbgzimg").attr('src','../images/yxgz/01.png') 
				  }else if(xhbgz ==false){
					  $(".xhbgzimg").attr('src','../images/yxgz/00.png') 
				  }
					if(xhbyx==false){
						$(".xhbyximg").attr('src','../images/yxgz/00.png') 
						//不运行强制连锁不可用
						/*  $("#xhbqd").attr("class","layui-btn").prop("disabled" , false);
						 $("#xhbtz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false); */
					}else if(xhbyx==true){
						
						 $(".xhbyximg").attr('src','../images/yxgz/11.png') 
						/*  
						 $("#xhbqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
						 $("#xhbtz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true); */
					}
				  $("#xhbbh").html(flag)
			}
	  });
	/*   },1000); */ 
	  layui.form.render();
}
//循环泵刷新
function xhpsx(xhbyx,xhbgz,xhbms,yxjd){
	var flag=$("#xhbbh").html();
	var xhbgz;
	var xhbyx;
	var xhbms;
	var yxjds;
	var xhbycsd;
	/* '3#循环泵运行','3#循环泵故障','循环泵3模式','循环泵远程就地') */
	
	var xhbyx=flag+"#循环泵运行";
	var xhbgz=flag+"#循环泵故障";
	var xhbms="循环泵"+flag+"模式";
	var yxjd="循环泵远程就地";

	  var hrzname = $("#hrzname").val();
	  $.ajax({
			url :"xhbstate.action",
			type : "post",
			dataType : "json",
			async:false,
			data : {
				"yxname":xhbyx,
				"gzname":xhbgz,
				"xhbms":xhbms,
				"flag":flag,
				"yxjd":yxjd,
				"hrzname":hrzname,
			},
			success : function(data) {
				
				var sta=data.map;
				var flag=data.flag;
				if(flag==1){
					 xhbgz=sta.d1循环泵故障;
					 xhbyx=sta.d1循环泵运行;
					 xhbms=sta.d循环泵1模式;
				
				}else if(flag==2){
					xhbgz=sta.d2循环泵故障;
					xhbyx=sta.d2循环泵运行;
					xhbms=sta.d循环泵2模式;
					
				}else if(flag==3){
					xhbgz=sta.d3循环泵故障;
					xhbyx=sta.d3循环泵运行;
					xhbms=sta.d循环泵3模式;
					
				}
				//只可读
				yxjds=sta.d循环泵远程就地;
				xhbycsd=sta.d供回水压差设定;
				 
				$("#xhbycsd").val(xhbycsd);	
				
				if(yxjds==true){
					
					/*  $("#xxbyc").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#xxbjd").attr("class","layui-btn layui-btn-normal"); */
					
					$("#xhbyxjd").html("远程");
				}else if(yxjds==false){
				/* 	 $("#xxbjd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#xxbyc").attr("class","layui-btn layui-btn-normal"); */
						$("#xhbyxjd").html("就地");
				}
				//模式
				if(xhbms==false){
					/*  $("#zjbd").attr("class","layui-btn layui-btn-normal");
					 $("#zjycgk").attr("class","layui-btn layui-btn-normal"); */
					//强制
					 $("#xhbqz").attr("class","layui-btn layui-btn-disabled")
					  $("#xhbls").attr("class","layui-btn  layui-btn-normal");
					 $("#xhbqd").attr("class","layui-btn").prop("disabled" , false);
					 $("#xhbtz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false);
				 }else if(xhbms==true){
					 //连锁
					 $("#xhbls").attr("class","layui-btn layui-btn-disabled");
					  $("#xhbqz").attr("class","layui-btn  layui-btn-normal");
					 $("#xhbqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#xhbtz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
				 }
				
			
				 if(xhbgz ==true){
					  $(".xhbgzimg").attr('src','../images/yxgz/01.png') 
				  }else if(xhbgz ==false){
					  $(".xhbgzimg").attr('src','../images/yxgz/00.png') 
				  }
					if(xhbyx==false){
						$(".xhbyximg").attr('src','../images/yxgz/00.png') 
						//不运行强制连锁不可用
						/*  $("#xhbqd").attr("class","layui-btn").prop("disabled" , false);
						 $("#xhbtz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false); */
					}else if(xhbyx==true){
						
						 $(".xhbyximg").attr('src','../images/yxgz/11.png') 
						/*  
						 $("#xhbqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
						 $("#xhbtz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true); */
					}
				  $("#xhbbh").html(flag)
			}
	  });
}






//循环泵变频1
function showXhbp(name){
	  layui.form.render();
	  layer.open({
		  skin:"alert-skin",
	        type: 1,
	        title: "循环泵变频",
	        area: '450px',
	        offset: '120px',
	        closeBtn:1,
	        content: $("#xhbp").html()
	    });
	  
	  var hrzname = $("#hrzname").val();
	  $.ajax({
			url :"xhbpstate.action",
			type : "post",
			dataType : "json",
			async:false,
			data : {
				"name":name,
				"hrzname":hrzname,
			},
			success : function(data) {
				
				var map=data.map;
				var ycjd=map.变频器手自动;
				var xhbpsd=map.变频泵选择;
				var xhbpycsd=map.供回水压差设定;
				var xhbpplsd=map.循泵频率设定;
				var plfk=map.循环泵频率;
				if(ycjd==true){
					
					 $("#xxbpyc").attr("class","layui-btn layui-btn-disabled")
					  $("#xxbpjd").attr("class","layui-btn layui-btn-normal")
				}else if(ycjd==false){
					 $("#xxbpjd").attr("class","layui-btn layui-btn-disabled")
					 $("#xxbpyc").attr("class","layui-btn layui-btn-normal")
				}
				if(xhbpsd==1){
					 var sel2 = document.getElementById("shbsd").options;
					sel2[0].selected = true;
				}else if(xhbpsd==2){
					 var sel2 = document.getElementById("shbsd").options;
						sel2[1].selected = true;
				} else if(xhbpsd==3){
					 var sel2 = document.getElementById("shbsd").options;
					sel2[2].selected = true;
				}
				$("#xhbpycsd").val(xhbpycsd);
				$("#xhbpplsd").val(xhbpplsd);	
				$("#xhbpplfk").val(plfk);
				
			  }
			})
	  
	  layui.form.render();
}



function showssb(flag,yxname,gzname,zdname,ycjd){
	var ssbgz;
	var ssbyx;
	var ssbzd;
	var ycjd;
	layui.form.render();
	  layer.open({
		  skin:"alert-skin",
	        type: 1,
	        title: "深水泵控制",
	        area: '450px',
	        offset: '120px',
	        content: $("#ssb").html()
	    });
	  var hrzname = $("#hrzname").val();
	  $.ajax({
			url :"ssbstate.action",
			type : "post",
			dataType : "json",
			async:false,
			data : {
				"yxname":yxname,
				"gzname":gzname,
				"zdname":zdname,
				"flag":flag,
				"hrzname":hrzname,
				"ycjd":ycjd,
			},
			success : function(data) {
				var sta=data.map;
				var flag=data.flag;
				if(flag==1){
					 ssbgz=sta.d1深水泵故障;
					 ssbyx=sta.d1深水泵运行;	
					 ssbzd=sta.d深井泵1模式;
					 ycjd=sta.d1深水泵手自动;
				}else if(flag==2){
					ssbgz=sta.d2深水泵故障;
					 ssbyx=sta.d2深水泵运行;
					 ssbzd=sta.d深井泵2模式;
					 ycjd=sta.d2深水泵手自动;
				}else if(flag==3){
					ssbgz=sta.d3深水泵故障;
					 ssbyx=sta.d3深水泵运行;
					 ssbzd=sta.d深井泵3模式;
					 ycjd=sta.d3深水泵手自动;
				}
				if(ycjd==true){
					
					 /* $("#ssbyc").attr("class","layui-btn layui-btn-disabled")
					  $("#ssbjd").attr("class","layui-btn layui-btn-normal")
					   */
					  $("#ssbyxjd").html("远程");
					  
				}else if(ycjd==false){
					/*  $("#ssbjd").attr("class","layui-btn layui-btn-disabled")
					 $("#ssbyc").attr("class","layui-btn layui-btn-normal") */
					$("#ssbyxjd").html("就地");
				}
				 if(ssbzd==false){
					 //强制
					 $("#ssbqz").attr("class","layui-btn layui-btn-disabled");
					 $("#ssbls").attr("class","layui-btn layui-btn-normal");
					 $("#ssbqd").attr("class","layui-btn").prop("disabled" , false);
					 $("#ssbtz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false);
				
				 }else if(ssbzd==true){
					 //连锁
					 $("#ssbls").attr("class","layui-btn layui-btn-disabled");
					 $("#ssbqz").attr("class","layui-btn layui-btn-normal");
					 $("#ssbqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#ssbtz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
				 }
				if(ssbyx==false){
					 $(".ssbyximg").attr('src','../images/yxgz/00.png') 
					 
					/*  $("#ssbqd").attr("class","layui-btn").prop("disabled" , false);
					 $("#ssbtz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false); */
				}else if(ssbyx==true){
					$(".ssbyximg").attr('src','../images/yxgz/11.png') 
					
					/* $("#ssbqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#ssbtz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true); */
				}
				if(ssbgz ==true){
					  $(".ssbgzimg").attr('src','../images/yxgz/01.png') 
				}else if(ssbgz ==false){
					  $(".ssbgzimg").attr('src','../images/yxgz/00.png') 
			    }
				   $("#ssbbh").html(flag) 
			}
	  });
	  layui.form.render();
	
}



//深水泵刷新
function ssbsx(){
	
	/* 1,'1#深水泵运行','1#深水泵故障','深井泵1模式','1#深水泵手自动' */
	/* 2,'2#深水泵运行','2#深水泵故障','深井泵2模式','2#深水泵手自动'
	flag,yxname,gzname,zdname,ycjd */
	
	var flag=$("#ssbbh").html();
	var yxname=flag+"#深水泵运行";
	var gzname=flag+"#深水泵故障";
	var zdname="深井泵"+flag+"模式";
	var ycjd=flag+"#深水泵手自动";
	 var hrzname = $("#hrzname").val();
	  $.ajax({
			url :"ssbstate.action",
			type : "post",
			dataType : "json",
			async:false,
			data : {
				"yxname":yxname,
				"gzname":gzname,
				"zdname":zdname,
				"flag":flag,
				"hrzname":hrzname,
				"ycjd":ycjd,
			},
			success : function(data) {
				
				var sta=data.map;
				var flag=data.flag;
				if(flag==1){
					 ssbgz=sta.d1深水泵故障;
					 ssbyx=sta.d1深水泵运行;	
					 ssbzd=sta.d深井泵1模式;
					 ycjd=sta.d1深水泵手自动;
				}else if(flag==2){
					ssbgz=sta.d2深水泵故障;
					 ssbyx=sta.d2深水泵运行;
					 ssbzd=sta.d深井泵2模式;
					 ycjd=sta.d2深水泵手自动;
				}else if(flag==3){
					ssbgz=sta.d3深水泵故障;
					 ssbyx=sta.d3深水泵运行;
					 ssbzd=sta.d深井泵3模式;
					 ycjd=sta.d3深水泵手自动;
				}
				if(ycjd==true){
					
					 /* $("#ssbyc").attr("class","layui-btn layui-btn-disabled")
					  $("#ssbjd").attr("class","layui-btn layui-btn-normal")
					   */
					  $("#ssbyxjd").html("远程");
					  
				}else if(ycjd==false){
					/*  $("#ssbjd").attr("class","layui-btn layui-btn-disabled")
					 $("#ssbyc").attr("class","layui-btn layui-btn-normal") */
					$("#ssbyxjd").html("就地");
				}
				 if(ssbzd==false){
					 //强制
					 $("#ssbqz").attr("class","layui-btn layui-btn-disabled");
					 $("#ssbls").attr("class","layui-btn layui-btn-normal");
					 $("#ssbqd").attr("class","layui-btn").prop("disabled" , false);
					 $("#ssbtz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false);
				
				 }else if(ssbzd==true){
					 //连锁
					 $("#ssbls").attr("class","layui-btn layui-btn-disabled");
					 $("#ssbqz").attr("class","layui-btn layui-btn-normal");
					 $("#ssbqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#ssbtz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
				 }
				if(ssbyx==false){
					 $(".ssbyximg").attr('src','../images/yxgz/00.png') 
					 
					/*  $("#ssbqd").attr("class","layui-btn").prop("disabled" , false);
					 $("#ssbtz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false); */
				}else if(ssbyx==true){
					$(".ssbyximg").attr('src','../images/yxgz/11.png') 
					
					/* $("#ssbqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#ssbtz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true); */
				}
				if(ssbgz ==true){
					  $(".ssbgzimg").attr('src','../images/yxgz/01.png') 
				}else if(ssbgz ==false){
					  $(".ssbgzimg").attr('src','../images/yxgz/00.png') 
			    }
			}
	  });
}







//蝶阀
function showdf(flag,name,msname,kfdwname){
	var dkg;
	var dms;
	var kfdw;
	  layer.open({
		  skin:"alert-skin",
	        type: 1,
	        title: "蝶阀控制",
	        area: '450px',
	        offset: '120px',
	        content: $("#df").html()
	    });
	  var hrzname = $("#hrzname").val();
	  $.ajax({
			url :"dfstate.action",
			type : "post",
			dataType : "json",
			async:false,
			data : {
				"name":name,
				"msname":msname,
				"flag":flag,
				"kfdwname":kfdwname,
				"hrzname":hrzname,
			},
			success : function(data) {
			
				var sta=data.map;
				var flag=data.flag;
				if(flag==1){
				 dkg=sta.d1蝶阀开关;
				 dms=sta.d蝶阀1模式;
				 kfdw=sta.d1号蝶阀;
				}else if(flag==2){
				 dkg=sta.d2蝶阀开关;
				 dms=sta.d蝶阀2模式;	
				 kfdw=sta.d2号蝶阀;
				}else if(flag==3){
				 dkg=sta.d3蝶阀开关;
				 dms=sta.d蝶阀3模式;	
				 kfdw=sta.d3号蝶阀;
				}else if(flag==4){
				 dkg=sta.d4蝶阀开关;
				 dms=sta.d蝶阀4模式;	
				 kfdw=sta.d4号蝶阀;
				}
				
				
				if(kfdw==false){
					$(".kfdwimg").attr('src','../images/yxgz/00.png') 
				}else if(kfdw==true){
					 $(".kfdwimg").attr('src','../images/yxgz/11.png') 
				}
				//模式
			
				 if(dms==false){
					 //强制
					 $("#dfqz").attr("class","layui-btn layui-btn-disabled");
					 $("#dfls").attr("class","layui-btn layui-btn-normal");
					 $("#dfqd").attr("class","layui-btn").prop("disabled" , false);
					 $("#dftz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false);
				 }else if(dms==true){
					 //连锁
					 $("#dfls").attr("class","layui-btn layui-btn-disabled");
					 $("#dfqz").attr("class","layui-btn layui-btn-normal");
					 $("#dfqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#dftz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
				 }
				//开关状态true开启false关闭
					if(dkg==false){
						$(".dfimg").attr('src','../images/yxgz/00.png') 
					/* 	 $("#dfqd").attr("class","layui-btn").prop("disabled" , false);
						 $("#dftz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false); */
					}else if(dkg==true){
					/* 	 $("#dfqz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);;
						 $("#dfls").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);; */
						 $(".dfimg").attr('src','../images/yxgz/11.png') 
					}
				
				 $("#dfbh").html(flag)
			}
	  });
	  layui.form.render();
}

//蝶阀刷新

function  dfsx(){
	/* flag,name,msname,kfdwname
	1,'1#蝶阀开关','蝶阀1模式','1号蝶阀' */
	var flag=$("#dfbh").html();
	var name=flag+"#蝶阀开关";
	var msname="蝶阀"+flag+"模式";
	var kfdwname=flag+"号蝶阀";
	var hrzname = $("#hrzname").val();
	  $.ajax({
			url :"dfstate.action",
			type : "post",
			dataType : "json",
			async:false,
			data : {
				"name":name,
				"msname":msname,
				"flag":flag,
				"kfdwname":kfdwname,
				"hrzname":hrzname,
			},
			success : function(data) {
				var sta=data.map;
				var flag=data.flag;
				if(flag==1){
				 dkg=sta.d1蝶阀开关;
				 dms=sta.d蝶阀1模式;
				 kfdw=sta.d1号蝶阀;
				}else if(flag==2){
				 dkg=sta.d2蝶阀开关;
				 dms=sta.d蝶阀2模式;	
				 kfdw=sta.d2号蝶阀;
				}else if(flag==3){
				 dkg=sta.d3蝶阀开关;
				 dms=sta.d蝶阀3模式;	
				 kfdw=sta.d3号蝶阀;
				}else if(flag==4){
				 dkg=sta.d4蝶阀开关;
				 dms=sta.d蝶阀4模式;	
				 kfdw=sta.d4号蝶阀;
				}
				if(kfdw==false){
					$(".kfdwimg").attr('src','../images/yxgz/00.png') 
				}else if(kfdw==true){
					 $(".kfdwimg").attr('src','../images/yxgz/11.png') 
				}
				//模式
			
				 if(dms==false){
					 //强制
					 $("#dfqz").attr("class","layui-btn layui-btn-disabled");
					 $("#dfls").attr("class","layui-btn layui-btn-normal");
					 $("#dfqd").attr("class","layui-btn").prop("disabled" , false);
					 $("#dftz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false);
				 }else if(dms==true){
					 //连锁
					 $("#dfls").attr("class","layui-btn layui-btn-disabled");
					 $("#dfqz").attr("class","layui-btn layui-btn-normal");
					 $("#dfqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#dftz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
				 }
				//开关状态true开启false关闭
					if(dkg==false){
						$(".dfimg").attr('src','../images/yxgz/00.png') 
					/* 	 $("#dfqd").attr("class","layui-btn").prop("disabled" , false);
						 $("#dftz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false); */
					}else if(dkg==true){
					/* 	 $("#dfqz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);;
						 $("#dfls").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);; */
						 $(".dfimg").attr('src','../images/yxgz/11.png') 
					}
				
				 $("#dfbh").html(flag)
			}
	  });
}










function dfzgzt(num){
	if(num == 1){
		  $(".dfyximg").attr('src','../images/yxgz/11.png') 
	  }else if(num == 0){
		  $(".dfyximg").attr('src','../images/yxgz/00.png') 
	  }
}

function zjgfw(val,name){
	var flag=$("#zjbh").text();
	  var hrzname = $("#hrzname").val();
	  $.ajax({
			url :"zjgfw.action",
			type : "post",
			dataType : "json",
			async:false,
			data : {
				"val":val,
				"name":name,
				"flag":flag,
				"hrzname":hrzname,
			},
			success : function(data) {
				var js=data.js;
				if(js=="1"){
					alert("修改成功")
				}
			}
			});
}


function ycbdqh(val,name,ycbd){
	var flag=$("#zjbh").text();
	 var hrzname = $("#hrzname").val();
	  $.ajax({
			url :"ycbdqh.action",
			type : "post",
			dataType : "json",
			async:false,
			data : {
				"val":val,
				"name":name,
				"flag":flag,
				"ycbd":ycbd,
				"hrzname":hrzname,
			},
			success : function(data) {
				
				var ycjdfk=data.valu.value;
				
				/* if(ycjdfk==1){//远程智慧
					 $("#zjyczh").attr("class","layui-btn layui-btn-disabled");
					 $("#zjbd").attr("class","layui-btn layui-btn-normal");
					 $("#zjycgk").attr("class","layui-btn layui-btn-normal");
					 $("#qd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#tz").attr("class","layui-btn layui-btn-danger layui-btn-disabled").prop("disabled" , true);
				}else if(ycjdfk==2){//远程本地
					 $("#zjbd").attr("class","layui-btn layui-btn-disabled");
					 $("#zjycgk").attr("class","layui-btn layui-btn-normal");
					 $("#zjyczh").attr("class","layui-btn layui-btn-normal");
					 $("#qd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#tz").attr("class","layui-btn layui-btn-danger layui-btn-disabled").prop("disabled" , true);
				}else if(ycjdfk==3){
					 //远程工控,启动和停止可用
					 $("#zjycgk").attr("class","layui-btn layui-btn-disabled");
					 $("#zjyczh").attr("class","layui-btn layui-btn-normal");
					 $("#zjbd").attr("class","layui-btn layui-btn-normal");
					 $("#qd").attr("class","layui-btn ").prop("disabled" , false);
					 $("#tz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false);
				
				} */
				if(ycjdfk==1){//远程智慧
					/*  $("#zjyczh").attr("class","layui-btn layui-btn-disabled");
					 $("#zjbd").attr("class","layui-btn layui-btn-normal");
					 $("#zjycgk").attr("class","layui-btn layui-btn-normal"); */

					 $("#ycjdfk").val("远程智慧");
					 $("#qd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#tz").attr("class","layui-btn layui-btn-danger layui-btn-disabled").prop("disabled" , true);
				}else if(ycjdfk==2){//远程本地
					/*  $("#zjbd").attr("class","layui-btn layui-btn-disabled");
					 $("#zjyczh").attr("class","layui-btn layui-btn-normal");
					 $("#zjycgk").attr("class","layui-btn layui-btn-normal"); */
					 $("#ycjdfk").val("本地");
					 $("#qd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#tz").attr("class","layui-btn layui-btn-danger layui-btn-disabled").prop("disabled" , true);
				}else if(ycjdfk==3){
					 //远程工控,启动和停止可用
					 /* $("#zjycgk").attr("class","layui-btn layui-btn-disabled");
					 $("#zjyczh").attr("class","layui-btn layui-btn-normal");
					 $("#zjbd").attr("class","layui-btn layui-btn-normal"); */
					 $("#ycjdfk").val("远程工控");
					 $("#qd").attr("class","layui-btn ").prop("disabled" , false);
					 $("#tz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false);
				
				}
			}
			});
}

function showzj(flag,name,ycjdfk,zlzrfk,zjgjzs){

	var zyxzs;
	var gzfus;
	var ycjdfk;
	var zlzrfk;
	var zjgjzs;
	var zjzl;
	var zjzr;
	var zjjs;
	layui.form.render();
	  layer.open({
		  skin:"alert-skin",
	        type: 1,
	        title: "主机控制",
	        area: '450px',
	        offset: '120px',
	        content: $("#zj").html()
	    });
	  var hrzname = $("#hrzname").val();
	  $.ajax({
			url :"zjstate.action",
			type : "post",
			dataType : "json",
			async:false,
			data : {
				"name":name,
				"flag":flag,
				"ycjdfk":ycjdfk,
				"zlzrfk":zlzrfk,
				"hrzname":hrzname,
				"zjgjzs":zjgjzs,
			},
			success : function(data) {
				var sta=data.map;
				var flag=data.flag;
				if(flag==1){
					ycjdfk=sta.d1主机远程就地反馈.value;
					zlzrfk=sta.d1主机制冷制热反馈.value;
					zjzl=sta.d主机1制冷温度显示;
					zjzr=sta.d主机1制热温度显示;
					zjjs=sta.d主机1启动倒计时.value;
					zjgjzs=sta.d1号主机关机指示
				}else if(flag==2){
					ycjdfk=sta.d2主机远程就地反馈.value;
					zlzrfk=sta.d2主机制冷制热反馈.value;
					zjzl=sta.d主机2制冷温度显示;
					zjzr=sta.d主机2制热温度显示;
					zjjs=sta.d主机2启动倒计时.value;
					zjgjzs=sta.d2号主机关机指示
				}else if(flag==3){
					ycjdfk=sta.d3主机远程就地反馈.value;
					zlzrfk=sta.d3主机制冷制热反馈.value;
					zjzl=sta.d主机3制冷温度显示;
					zjzr=sta.d主机3制热温度显示;
					zjjs=sta.d主机3启动倒计时.value;
					zjgjzs=sta.d3号主机关机指示
				}else if(flag==4){
					ycjdfk=sta.d4主机远程就地反馈.value;
					zlzrfk=sta.d4主机制冷制热反馈.value;
					zjzl=sta.d主机4制冷温度显示;
					zjzr=sta.d主机4制热温度显示;
					zjjs=sta.d主机4启动倒计时.value;
					zjgjzs=sta.d4号主机关机指示
				}
				
				$("#zjzl").val(zjzl);	
				$("#zjzr").val(zjzr);	
				$("#zjjs").val(zjjs);	
			/* 	<input value="" id="zlzrfk">
	              <input value="" id="ycjdfk"> */
				if(ycjdfk==1){//远程智慧
					/*  $("#zjyczh").attr("class","layui-btn layui-btn-disabled");
					 $("#zjbd").attr("class","layui-btn layui-btn-normal");
					 $("#zjycgk").attr("class","layui-btn layui-btn-normal"); */

					 $("#ycjdfk").val("远程智慧");
					 $("#qd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#tz").attr("class","layui-btn layui-btn-danger layui-btn-disabled").prop("disabled" , true);
				}else if(ycjdfk==2){//远程本地
					/*  $("#zjbd").attr("class","layui-btn layui-btn-disabled");
					 $("#zjyczh").attr("class","layui-btn layui-btn-normal");
					 $("#zjycgk").attr("class","layui-btn layui-btn-normal"); */
					 $("#ycjdfk").val("本地");
					 $("#qd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#tz").attr("class","layui-btn layui-btn-danger layui-btn-disabled").prop("disabled" , true);
				}else if(ycjdfk==3){
					 //远程工控,启动和停止可用
					 /* $("#zjycgk").attr("class","layui-btn layui-btn-disabled");
					 $("#zjyczh").attr("class","layui-btn layui-btn-normal");
					 $("#zjbd").attr("class","layui-btn layui-btn-normal"); */
					 $("#ycjdfk").val("远程工控");
					 $("#qd").attr("class","layui-btn ").prop("disabled" , false);
					 $("#tz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false);
				
				}else{
					 $("#qd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#tz").attr("class","layui-btn layui-btn-danger layui-btn-disabled").prop("disabled" , true);
				}
	              
	            if(zlzrfk==1){
	            	//制热
	            	 $("#zlzrfk").val("制热");
	            }else if(zlzrfk==2){
	            	//制冷
	            	 $("#zlzrfk").val("制冷");
	            }
	              
				if(flag==1){
					zyxzs=sta.d主机1总运行指示;
				}else if(flag==2){
					zyxzs=sta.d主机2总运行指示;
				}else if(flag==3){
					zyxzs=sta.d主机3总运行指示;
				}else if(flag==4){
					zyxzs=sta.d主机4总运行指示;
				}
				
				if(zyxzs==false){
					$(".zjyximg").attr('src','../images/yxgz/00.png') 
				}else if(zyxzs==true){
					$(".zjyximg").attr('src','../images/yxgz/11.png') 
				}
				
				if(zjgjzs==false){
					$(".zjgjimg").attr('src','../images/yxgz/00.png') 
				}else if(zjgjzs==true){
					$(".zjgjimg").attr('src','../images/yxgz/11.png') 
				}
				
				  $("#zjbh").html(flag)
			}
	  });
	  layui.form.render();
}



//刷新主机
function zjsx(){
	var flag=$("#zjbh").html();
	var name="主机"+flag+"总运行指示";
	var ycjdfk=flag+"#主机远程就地反馈";
	var zlzrfk=flag+"#主机制冷制热反馈";
	var zjgjzs=flag+"号主机关机指示";
	  var hrzname = $("#hrzname").val();
	  $.ajax({
			url :"zjstate.action",
			type : "post",
			dataType : "json",
			async:false,
			data : {
				"name":name,
				"flag":flag,
				"ycjdfk":ycjdfk,
				"zlzrfk":zlzrfk,
				"hrzname":hrzname,
				"zjgjzs":zjgjzs,
			},
			success : function(data) {
				
				var sta=data.map;
				var flag=data.flag;
				if(flag==1){
					ycjdfk=sta.d1主机远程就地反馈.value;
					zlzrfk=sta.d1主机制冷制热反馈.value;
					zjzl=sta.d主机1制冷温度显示;
					zjzr=sta.d主机1制热温度显示;
					zjjs=sta.d主机1启动倒计时.value;
					zjgjzs=sta.d1号主机关机指示
				}else if(flag==2){
					ycjdfk=sta.d2主机远程就地反馈.value;
					zlzrfk=sta.d2主机制冷制热反馈.value;
					zjzl=sta.d主机2制冷温度显示;
					zjzr=sta.d主机2制热温度显示;
					zjjs=sta.d主机2启动倒计时.value;
					zjgjzs=sta.d2号主机关机指示
				}else if(flag==3){
					ycjdfk=sta.d3主机远程就地反馈.value;
					zlzrfk=sta.d3主机制冷制热反馈.value;
					zjzl=sta.d主机3制冷温度显示;
					zjzr=sta.d主机3制热温度显示;
					zjjs=sta.d主机3启动倒计时.value;
					zjgjzs=sta.d3号主机关机指示
				}else if(flag==4){
					ycjdfk=sta.d4主机远程就地反馈.value;
					zlzrfk=sta.d4主机制冷制热反馈.value;
					zjzl=sta.d主机4制冷温度显示;
					zjzr=sta.d主机4制热温度显示;
					zjjs=sta.d主机4启动倒计时.value;
					zjgjzs=sta.d4号主机关机指示
				}
				
				$("#zjzl").val(zjzl);	
				$("#zjzr").val(zjzr);	
				$("#zjjs").val(zjjs);	
			/* 	<input value="" id="zlzrfk">
	              <input value="" id="ycjdfk"> */
				if(ycjdfk==1){//远程智慧
					/*  $("#zjyczh").attr("class","layui-btn layui-btn-disabled");
					 $("#zjbd").attr("class","layui-btn layui-btn-normal");
					 $("#zjycgk").attr("class","layui-btn layui-btn-normal"); */

					 $("#ycjdfk").val("远程智慧");
					 $("#qd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#tz").attr("class","layui-btn layui-btn-danger layui-btn-disabled").prop("disabled" , true);
				}else if(ycjdfk==2){//远程本地
					/*  $("#zjbd").attr("class","layui-btn layui-btn-disabled");
					 $("#zjyczh").attr("class","layui-btn layui-btn-normal");
					 $("#zjycgk").attr("class","layui-btn layui-btn-normal"); */
					 $("#ycjdfk").val("本地");
					 $("#qd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#tz").attr("class","layui-btn layui-btn-danger layui-btn-disabled").prop("disabled" , true);
				}else if(ycjdfk==3){
					 //远程工控,启动和停止可用
					 /* $("#zjycgk").attr("class","layui-btn layui-btn-disabled");
					 $("#zjyczh").attr("class","layui-btn layui-btn-normal");
					 $("#zjbd").attr("class","layui-btn layui-btn-normal"); */
					 $("#ycjdfk").val("远程工控");
					 $("#qd").attr("class","layui-btn ").prop("disabled" , false);
					 $("#tz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false);
				
				}
	              
	            if(zlzrfk==1){
	            	//制热
	            	 $("#zlzrfk").val("制热");
	            }else if(zlzrfk==2){
	            	//制冷
	            	 $("#zlzrfk").val("制冷");
	            }
	              
				if(flag==1){
					zyxzs=sta.d主机1总运行指示;
				}else if(flag==2){
					zyxzs=sta.d主机2总运行指示;
				}else if(flag==3){
					zyxzs=sta.d主机3总运行指示;
				}else if(flag==4){
					zyxzs=sta.d主机4总运行指示;
				}
				
				if(zyxzs==false){
					$(".zjyximg").attr('src','../images/yxgz/00.png') 
				}else if(zyxzs==true){
					$(".zjyximg").attr('src','../images/yxgz/11.png') 
				}
				
				if(zjgjzs==false){
					$(".zjgjimg").attr('src','../images/yxgz/00.png') 
				}else if(zjgjzs==true){
					$(".zjgjimg").attr('src','../images/yxgz/11.png') 
				}
				
				  $("#zjbh").html(flag)
			}
	  });
}





//刷新定时主机
$(function(){	
 	  setInterval(function() {
	var flag=$("#zjbh").html();
	if(flag!=null){
	var name="主机"+flag+"总运行指示";
	var ycjdfk=flag+"#主机远程就地反馈";
	var zlzrfk=flag+"#主机制冷制热反馈";
	var zjgjzs=flag+"号主机关机指示";
	  var hrzname = $("#hrzname").val();
	  $.ajax({
			url :"zjstate.action",
			type : "post",
			dataType : "json",
			async:false,
			data : {
				"name":name,
				"flag":flag,
				"ycjdfk":ycjdfk,
				"zlzrfk":zlzrfk,
				"hrzname":hrzname,
				"zjgjzs":zjgjzs,
			},
			success : function(data) {
				
				var sta=data.map;
				var flag=data.flag;
				if(flag==1){
					ycjdfk=sta.d1主机远程就地反馈.value;
					zlzrfk=sta.d1主机制冷制热反馈.value;
					zjzl=sta.d主机1制冷温度显示;
					zjzr=sta.d主机1制热温度显示;
					zjjs=sta.d主机1启动倒计时.value;
					zjgjzs=sta.d1号主机关机指示
				}else if(flag==2){
					ycjdfk=sta.d2主机远程就地反馈.value;
					zlzrfk=sta.d2主机制冷制热反馈.value;
					zjzl=sta.d主机2制冷温度显示;
					zjzr=sta.d主机2制热温度显示;
					zjjs=sta.d主机2启动倒计时.value;
					zjgjzs=sta.d2号主机关机指示
				}else if(flag==3){
					ycjdfk=sta.d3主机远程就地反馈.value;
					zlzrfk=sta.d3主机制冷制热反馈.value;
					zjzl=sta.d主机3制冷温度显示;
					zjzr=sta.d主机3制热温度显示;
					zjjs=sta.d主机3启动倒计时.value;
					zjgjzs=sta.d3号主机关机指示
				}else if(flag==4){
					ycjdfk=sta.d4主机远程就地反馈.value;
					zlzrfk=sta.d4主机制冷制热反馈.value;
					zjzl=sta.d主机4制冷温度显示;
					zjzr=sta.d主机4制热温度显示;
					zjjs=sta.d主机4启动倒计时.value;
					zjgjzs=sta.d4号主机关机指示
				}
				
				$("#zjzl").val(zjzl);	
				$("#zjzr").val(zjzr);	
				$("#zjjs").val(zjjs);
				
				if(ycjdfk==1){//远程智慧
					 $("#ycjdfk").val("远程智慧");
					 $("#qd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#tz").attr("class","layui-btn layui-btn-danger layui-btn-disabled").prop("disabled" , true);
				}else if(ycjdfk==2){//远程本地
					 $("#ycjdfk").val("本地");
					 $("#qd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#tz").attr("class","layui-btn layui-btn-danger layui-btn-disabled").prop("disabled" , true);
				}else if(ycjdfk==3){
					 //远程工控,启动和停止可用
					 $("#ycjdfk").val("远程工控");
					 $("#qd").attr("class","layui-btn ").prop("disabled" , false);
					 $("#tz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false);
				}
	            if(zlzrfk==1){
	            	//制热
	            	 $("#zlzrfk").val("制热");
	            }else if(zlzrfk==2){
	            	//制冷
	            	 $("#zlzrfk").val("制冷");
	            }
	              
				if(flag==1){
					zyxzs=sta.d主机1总运行指示;
				}else if(flag==2){
					zyxzs=sta.d主机2总运行指示;
				}else if(flag==3){
					zyxzs=sta.d主机3总运行指示;
				}else if(flag==4){
					zyxzs=sta.d主机4总运行指示;
				}
				
				if(zyxzs==false){
					$(".zjyximg").attr('src','../images/yxgz/00.png') 
				}else if(zyxzs==true){
					$(".zjyximg").attr('src','../images/yxgz/11.png') 
				}
				
				if(zjgjzs==false){
					$(".zjgjimg").attr('src','../images/yxgz/00.png') 
				}else if(zjgjzs==true){
					$(".zjgjimg").attr('src','../images/yxgz/11.png') 
				}
				
				  $("#zjbh").html(flag)
			}
	 	 });
		}
		},5000); 
 	  
 	 });


//蝶阀定时刷新
$(function(){	
 	  setInterval(function() {
	/* flag,name,msname,kfdwname
	1,'1#蝶阀开关','蝶阀1模式','1号蝶阀' */
	var flag=$("#dfbh").html();
	if(flag!=null){
	var name=flag+"#蝶阀开关";
	var msname="蝶阀"+flag+"模式";
	var kfdwname=flag+"号蝶阀";
	var hrzname = $("#hrzname").val();
	  $.ajax({
			url :"dfstate.action",
			type : "post",
			dataType : "json",
			async:false,
			data : {
				"name":name,
				"msname":msname,
				"flag":flag,
				"kfdwname":kfdwname,
				"hrzname":hrzname,
			},
			success : function(data) {
				var sta=data.map;
				var flag=data.flag;
				if(flag==1){
				 dkg=sta.d1蝶阀开关;
				 dms=sta.d蝶阀1模式;
				 kfdw=sta.d1号蝶阀;
				}else if(flag==2){
				 dkg=sta.d2蝶阀开关;
				 dms=sta.d蝶阀2模式;	
				 kfdw=sta.d2号蝶阀;
				}else if(flag==3){
				 dkg=sta.d3蝶阀开关;
				 dms=sta.d蝶阀3模式;	
				 kfdw=sta.d3号蝶阀;
				}else if(flag==4){
				 dkg=sta.d4蝶阀开关;
				 dms=sta.d蝶阀4模式;	
				 kfdw=sta.d4号蝶阀;
				}
				if(kfdw==false){
					$(".kfdwimg").attr('src','../images/yxgz/00.png') 
				}else if(kfdw==true){
					 $(".kfdwimg").attr('src','../images/yxgz/11.png') 
				}
				//模式
			
				 if(dms==false){
					 //强制
					 $("#dfqz").attr("class","layui-btn layui-btn-disabled");
					 $("#dfls").attr("class","layui-btn layui-btn-normal");
					 $("#dfqd").attr("class","layui-btn").prop("disabled" , false);
					 $("#dftz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false);
				 }else if(dms==true){
					 //连锁
					 $("#dfls").attr("class","layui-btn layui-btn-disabled");
					 $("#dfqz").attr("class","layui-btn layui-btn-normal");
					 $("#dfqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#dftz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
				 }
				//开关状态true开启false关闭
					if(dkg==false){
						$(".dfimg").attr('src','../images/yxgz/00.png')
					}else if(dkg==true){
						 $(".dfimg").attr('src','../images/yxgz/11.png') 
					}
				
				 $("#dfbh").html(flag)
			}
			
	  });
	}
},5000); 
 	  
 });

//深水泵定时刷新
$(function(){	
 	  setInterval(function() {
	var flag=$("#ssbbh").html();
	if(flag!=null){
	var yxname=flag+"#深水泵运行";
	var gzname=flag+"#深水泵故障";
	var zdname="深井泵"+flag+"模式";
	var ycjd=flag+"#深水泵手自动";
	 var hrzname = $("#hrzname").val();
	  $.ajax({
			url :"ssbstate.action",
			type : "post",
			dataType : "json",
			async:false,
			data : {
				"yxname":yxname,
				"gzname":gzname,
				"zdname":zdname,
				"flag":flag,
				"hrzname":hrzname,
				"ycjd":ycjd,
			},
			success : function(data) {
				
				var sta=data.map;
				var flag=data.flag;
				if(flag==1){
					 ssbgz=sta.d1深水泵故障;
					 ssbyx=sta.d1深水泵运行;	
					 ssbzd=sta.d深井泵1模式;
					 ycjd=sta.d1深水泵手自动;
				}else if(flag==2){
					ssbgz=sta.d2深水泵故障;
					 ssbyx=sta.d2深水泵运行;
					 ssbzd=sta.d深井泵2模式;
					 ycjd=sta.d2深水泵手自动;
				}else if(flag==3){
					ssbgz=sta.d3深水泵故障;
					 ssbyx=sta.d3深水泵运行;
					 ssbzd=sta.d深井泵3模式;
					 ycjd=sta.d3深水泵手自动;
				}
				if(ycjd==true){
					$("#ssbyxjd").html("远程");
				}else if(ycjd==false){
					$("#ssbyxjd").html("就地");
				}
				 if(ssbzd==false){
					 //强制
					 $("#ssbqz").attr("class","layui-btn layui-btn-disabled");
					 $("#ssbls").attr("class","layui-btn layui-btn-normal");
					 $("#ssbqd").attr("class","layui-btn").prop("disabled" , false);
					 $("#ssbtz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false);
				
				 }else if(ssbzd==true){
					 //连锁
					 $("#ssbls").attr("class","layui-btn layui-btn-disabled");
					 $("#ssbqz").attr("class","layui-btn layui-btn-normal");
					 $("#ssbqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#ssbtz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
				 }
				if(ssbyx==false){
					 $(".ssbyximg").attr('src','../images/yxgz/00.png') 
					 
				}else if(ssbyx==true){
					$(".ssbyximg").attr('src','../images/yxgz/11.png') 
				}
				if(ssbgz ==true){
					  $(".ssbgzimg").attr('src','../images/yxgz/01.png') 
				}else if(ssbgz ==false){
					  $(".ssbgzimg").attr('src','../images/yxgz/00.png') 
			    }
			}
	  });
	}
},5000); 
});



//循环泵定时刷新
$(function(){
	 setInterval(function() {
	var flag=$("#xhbbh").html();
	if(flag!=null){
	var xhbgz;
	var xhbyx;
	var xhbms;
	var yxjds;
	var xhbycsd;
	/* '3#循环泵运行','3#循环泵故障','循环泵3模式','循环泵远程就地') */
	
	var xhbyx=flag+"#循环泵运行";
	var xhbgz=flag+"#循环泵故障";
	var xhbms="循环泵"+flag+"模式";
	var yxjd="循环泵远程就地";

	  var hrzname = $("#hrzname").val();
	  $.ajax({
			url :"xhbstate.action",
			type : "post",
			dataType : "json",
			async:false,
			data : {
				"yxname":xhbyx,
				"gzname":xhbgz,
				"xhbms":xhbms,
				"flag":flag,
				"yxjd":yxjd,
				"hrzname":hrzname,
			},
			success : function(data) {
				
				var sta=data.map;
				var flag=data.flag;
				if(flag==1){
					 xhbgz=sta.d1循环泵故障;
					 xhbyx=sta.d1循环泵运行;
					 xhbms=sta.d循环泵1模式;
				
				}else if(flag==2){
					xhbgz=sta.d2循环泵故障;
					xhbyx=sta.d2循环泵运行;
					xhbms=sta.d循环泵2模式;
					
				}else if(flag==3){
					xhbgz=sta.d3循环泵故障;
					xhbyx=sta.d3循环泵运行;
					xhbms=sta.d循环泵3模式;
					
				}
				//只可读
				yxjds=sta.d循环泵远程就地;
				xhbycsd=sta.d供回水压差设定;
				 
				$("#xhbycsd").val(xhbycsd);	
				
				if(yxjds==true){
					
					$("#xhbyxjd").html("远程");
				}else if(yxjds==false){
			
						$("#xhbyxjd").html("就地");
				}
				//模式
				if(xhbms==false){
					
					//强制
					 $("#xhbqz").attr("class","layui-btn layui-btn-disabled")
					  $("#xhbls").attr("class","layui-btn  layui-btn-normal");
					 $("#xhbqd").attr("class","layui-btn").prop("disabled" , false);
					 $("#xhbtz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false);
				 }else if(xhbms==true){
					 //连锁
					 $("#xhbls").attr("class","layui-btn layui-btn-disabled");
					  $("#xhbqz").attr("class","layui-btn  layui-btn-normal");
					 $("#xhbqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#xhbtz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
				 }
				
			
				 if(xhbgz ==true){
					  $(".xhbgzimg").attr('src','../images/yxgz/01.png') 
				  }else if(xhbgz ==false){
					  $(".xhbgzimg").attr('src','../images/yxgz/00.png') 
				  }
					if(xhbyx==false){
						$(".xhbyximg").attr('src','../images/yxgz/00.png') 
						
					}else if(xhbyx==true){
						
						 $(".xhbyximg").attr('src','../images/yxgz/11.png') 
						
					}
				  $("#xhbbh").html(flag)
			}
	      });
		}
	 }
	,5000); 
	});


function zjzgzt(num){
	if(num == 1){
		  $(".zjyximg").attr('src','../images/yxgz/11.png') 
	  }else if(num == 0){
		  $(".zjyximg").attr('src','../images/yxgz/00.png') 
	  }
}


//蝶阀 开启，停止
//鼠标点击时 //鼠标移开时
function kgdfqd(b,name,sbname){
	var flag
	//获取蝶阀编号
	if(sbname=='蝶阀'){
		 flag=$("#dfbh").text();	
	}else if(sbname=='循环泵'){
		 flag=$("#xhbbh").text();	
	}else if(sbname=='深井泵'){
		flag=$("#ssbbh").text();
	}else if(sbname=='主机'){
		flag=$("#zjbh").text();
	}
	 var hrzname = $("#hrzname").val();
	$.ajax({
		url :"kgdf.action",
		type : "post",
		dataType : "json",
		data : {
			"stas" : b,
			"flag":flag,
			"name":name,
			"sbname":sbname,
			"hrzname":hrzname,
		},
		success : function(data) {
		
			 var sbname=eval(data).sbname;
			 var sbyxname=eval(data).maps;
			 var flag=eval(data).flag;
			 if(flag==1){
			 if(sbname=='蝶阀'){
				 var dfyx=sbyxname.d1蝶阀开关;
				 var  kfdw=sbyxname.d1号蝶阀;
					if(kfdw==false){
						$(".kfdwimg").attr('src','../images/yxgz/00.png') 
					}else if(kfdw==true){
						 $(".kfdwimg").attr('src','../images/yxgz/11.png') 
					}
			 if(dfyx==true){ //启动
				  $(".dfimg").attr('src','../images/yxgz/11.png')  
				 /*  $("#dfqz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
				  $("#dfls").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true); */
			 }
			 if(dfyx==false){ //停止layui-btn
				 $(".dfimg").attr('src','../images/yxgz/00.png') 
				/*  $("#dfqd").attr("class","layui-btn").prop("disabled" , false);
				 $("#dftz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false); */
			 }
			 }else if(sbname=='循环泵'){
				 var xhbyx=sbyxname.d1循环泵运行;
				 var xhbgz=sbyxname.d1循环泵故障;
				/*  var xhbms=sta.d循环泵1模式; */
				
					
				 if(xhbyx==false){
						$(".xhbyximg").attr('src','../images/yxgz/00.png') 
						//不运行强制连锁不可用
						/* if(xhbms==false){
						
							//强制
							
							 $("#xhbqd").attr("class","layui-btn").prop("disabled" , false);
							 $("#xhbtz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false);
						 }else if(xhbms==true){
							 //连锁
							 $("#xhbqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
							 $("#xhbtz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
						 } */
						
					}else if(xhbyx==true){
						 $(".xhbyximg").attr('src','../images/yxgz/11.png') 
						/*  $("#xhbqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
						 $("#xhbtz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true); */
					}
					 if(xhbgz ==true){
						  $(".xhbgzimg").attr('src','../images/yxgz/01.png') 
					  }else if(xhbgz ==false){
						  $(".xhbgzimg").attr('src','../images/yxgz/00.png') 
					  }
			 }else if(sbname=='深井泵'){
				
				 var ssbyx=sbyxname.d1深水泵运行;
				 var ssbgz=sbyxname.d1深水泵故障;
				/*  var ssbzd=sta.d深井泵1模式; */
				 if(ssbyx==false){
					 $(".ssbyximg").attr('src','../images/yxgz/00.png') 
				/* 	 $("#ssbqd").attr("class","layui-btn").prop("disabled" , false);
					 $("#ssbtz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false); */
					 
					/*  if(ssbzd==false){
						 //强制
						 $("#ssbqz").attr("class","layui-btn layui-btn-disabled");
						 $("#ssbls").attr("class","layui-btn layui-btn-normal");
					
					 }else if(ssbzd==true){
						 //连锁
						 $("#ssbls").attr("class","layui-btn layui-btn-disabled");
						 $("#ssbqz").attr("class","layui-btn layui-btn-normal");
					 } */
					 
					 
				}else if(ssbyx==true){
					$(".ssbyximg").attr('src','../images/yxgz/11.png') 
				/* 	$("#ssbqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#ssbtz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true); */
				}
				if(ssbgz ==true){
					  $(".ssbgzimg").attr('src','../images/yxgz/01.png') 
				}else if(ssbgz ==false){
					  $(".ssbgzimg").attr('src','../images/yxgz/00.png') 
			    } 
			 }else if(sbname=='主机'){
				 var zyxzs=sbyxname.d主机1总运行指示; 
				 var zjkgzs=sbyxname.d1号主机关机指示;
				 
				 
				 if(zyxzs==false){
						$(".zjyximg").attr('src','../images/yxgz/00.png') 
					}else if(zyxzs==true){
						$(".zjyximg").attr('src','../images/yxgz/11.png') 
					}
				 
					if(zjkgzs==false){
						$(".zjgjimg").attr('src','../images/yxgz/00.png') 
					}else if(zjkgzs==true){
						$(".zjgjimg").attr('src','../images/yxgz/11.png') 
					}
			     }
			 }else if(flag==2){
				 if(sbname=='蝶阀'){
					 var dfyx=sbyxname.d2蝶阀开关;
					 var  kfdw=sbyxname.d2号蝶阀;
						if(kfdw==false){
							$(".kfdwimg").attr('src','../images/yxgz/00.png') 
						}else if(kfdw==true){
							 $(".kfdwimg").attr('src','../images/yxgz/11.png') 
						}
						
						
				 if(dfyx==true){ //启动
					  $(".dfimg").attr('src','../images/yxgz/11.png')  
					  /* $("#dfqz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					  $("#dfls").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true); */
				 }
				 if(dfyx==false){ //停止layui-btn
					 $(".dfimg").attr('src','../images/yxgz/00.png') 
				/* 	 $("#dfqd").attr("class","layui-btn").prop("disabled" , false);
					 $("#dftz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false); */
				 }
				 }else if(sbname=='循环泵'){
					 var xhbyx=sbyxname.d2循环泵运行;
					 var xhbgz=sbyxname.d2循环泵故障;
					 if(xhbyx==false){
							$(".xhbyximg").attr('src','../images/yxgz/00.png') 
							//不运行强制连锁不可用
						/* 	 $("#xhbqd").attr("class","layui-btn").prop("disabled" , false);
							 $("#xhbtz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false); */
						}else if(xhbyx==true){
							 $(".xhbyximg").attr('src','../images/yxgz/11.png') 
							/*  $("#xhbqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
							 $("#xhbtz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true); */
						}
					 
					/*  if(xhbyx==false){
							$(".xhbyximg").attr('src','../images/yxgz/00.png') 
						}else if(xhbyx==true){
							 $(".xhbyximg").attr('src','../images/yxgz/11.png') 
						} */
						 if(xhbgz ==true){
							  $(".xhbgzimg").attr('src','../images/yxgz/01.png') 
						  }else if(xhbgz ==false){
							  $(".xhbgzimg").attr('src','../images/yxgz/00.png') 
						  }
				 }else if(sbname=='深井泵'){
					 var ssbyx=sbyxname.d2深水泵运行;
					 var ssbgz=sbyxname.d2深水泵故障;
					/*  if(ssbyx==false){
						 $(".ssbyximg").attr('src','../images/yxgz/00.png') 
					}else if(ssbyx==true){
						$(".ssbyximg").attr('src','../images/yxgz/11.png') 
					} */
					 if(ssbyx==false){
						 $(".ssbyximg").attr('src','../images/yxgz/00.png') 
						/*  $("#ssbqd").attr("class","layui-btn").prop("disabled" , false);
						 $("#ssbtz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false); */
					}else if(ssbyx==true){
						$(".ssbyximg").attr('src','../images/yxgz/11.png') 
					/* 	$("#ssbqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
						 $("#ssbtz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true); */
					}
					if(ssbgz ==true){
						  $(".ssbgzimg").attr('src','../images/yxgz/01.png') 
					}else if(ssbgz ==false){
						  $(".ssbgzimg").attr('src','../images/yxgz/00.png') 
				    } 
				 }else if(sbname=='主机'){
					 var zyxzs=sbyxname.d主机2总运行指示; 
					 var zjkgzs=sbyxname.d2号主机关机指示;
					 if(zyxzs==false){
							$(".zjyximg").attr('src','../images/yxgz/00.png') 
						}else if(zyxzs==true){
							$(".zjyximg").attr('src','../images/yxgz/11.png') 
						}
					 if(zjkgzs==false){
							$(".zjgjimg").attr('src','../images/yxgz/00.png') 
						}else if(zjkgzs==true){
							$(".zjgjimg").attr('src','../images/yxgz/11.png') 
						}
				     }
				 }else  if(flag==3){
					 if(sbname=='蝶阀'){
						 var dfyx=sbyxname.d3蝶阀开关;
						 var  kfdw=sbyxname.d3号蝶阀;
							if(kfdw==false){
								$(".kfdwimg").attr('src','../images/yxgz/00.png') 
							}else if(kfdw==true){
								 $(".kfdwimg").attr('src','../images/yxgz/11.png') 
							}
							
						
					 if(dfyx==true){ //启动
						  $(".dfimg").attr('src','../images/yxgz/11.png')  
					/* 	  $("#dfqz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
						  $("#dfls").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true); */
					 }
					 if(dfyx==false){ //停止layui-btn
						 $(".dfimg").attr('src','../images/yxgz/00.png') 
						/*  $("#dfqd").attr("class","layui-btn").prop("disabled" , false);
						 $("#dftz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false); */
					 }
					 }else if(sbname=='循环泵'){
						 var xhbyx=sbyxname.d3循环泵运行;
						 var xhbgz=sbyxname.d3循环泵故障;
						/*  if(xhbyx==false){
								$(".xhbyximg").attr('src','../images/yxgz/00.png') 
							}else if(xhbyx==true){
								 $(".xhbyximg").attr('src','../images/yxgz/11.png') 
							} */
						 if(xhbyx==false){
								$(".xhbyximg").attr('src','../images/yxgz/00.png') 
								//不运行强制连锁不可用
								/*  $("#xhbqd").attr("class","layui-btn").prop("disabled" , false);
								 $("#xhbtz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false); */
							}else if(xhbyx==true){
								 $(".xhbyximg").attr('src','../images/yxgz/11.png') 
								/*  $("#xhbqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
								 $("#xhbtz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true); */
							}
							 if(xhbgz ==true){
								  $(".xhbgzimg").attr('src','../images/yxgz/01.png') 
							  }else if(xhbgz ==false){
								  $(".xhbgzimg").attr('src','../images/yxgz/00.png') 
							  }
					 }else if(sbname=='深井泵'){
						 var ssbyx=sbyxname.d3深水泵运行;
						 var ssbgz=sbyxname.d3深水泵故障;
						/*  if(ssbyx==false){
							 $(".ssbyximg").attr('src','../images/yxgz/00.png') 
						}else if(ssbyx==true){
							$(".ssbyximg").attr('src','../images/yxgz/11.png') 
						} */
						 if(ssbyx==false){
							 $(".ssbyximg").attr('src','../images/yxgz/00.png') 
						/* 	 $("#ssbqd").attr("class","layui-btn").prop("disabled" , false);
							 $("#ssbtz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false); */
						}else if(ssbyx==true){
							$(".ssbyximg").attr('src','../images/yxgz/11.png') 
						/* 	$("#ssbqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
							 $("#ssbtz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true); */
						}
						if(ssbgz ==true){
							  $(".ssbgzimg").attr('src','../images/yxgz/01.png') 
						}else if(ssbgz ==false){
							  $(".ssbgzimg").attr('src','../images/yxgz/00.png') 
					    } 
					 }else if(sbname=='主机'){
						 var zyxzs=sbyxname.d主机3总运行指示; 
						 var zjkgzs=sbyxname.d3号主机关机指示;
						 if(zyxzs==false){
								$(".zjyximg").attr('src','../images/yxgz/00.png') 
							}else if(zyxzs==true){
								$(".zjyximg").attr('src','../images/yxgz/11.png') 
							}
						 
						 if(zjkgzs==false){
								$(".zjgjimg").attr('src','../images/yxgz/00.png') 
							}else if(zjkgzs==true){
								$(".zjgjimg").attr('src','../images/yxgz/11.png') 
							}
					     }
					 }else if(flag==4){
						 if(sbname=='蝶阀'){
							 var dfyx=sbyxname.d4蝶阀开关;
							 var  kfdw=sbyxname.d4号蝶阀;
							
								if(kfdw==false){
									$(".kfdwimg").attr('src','../images/yxgz/00.png') 
								}else if(kfdw==true){
									
									 $(".kfdwimg").attr('src','../images/yxgz/11.png') 
								}
						 if(dfyx==true){ //启动
							  $(".dfimg").attr('src','../images/yxgz/11.png')  
							  $("#dfqz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
							  $("#dfls").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
						 }
						 if(dfyx==false){ //停止layui-btn
							 $(".dfimg").attr('src','../images/yxgz/00.png') 
							 $("#dfqd").attr("class","layui-btn").prop("disabled" , false);
							 $("#dftz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false);
						 }
						 }else if(sbname=='主机'){
							 var zyxzs=sbyxname.d主机4总运行指示; 
							 var zjkgzs=sbyxname.d4号主机关机指示;
							 if(zyxzs==false){
									$(".zjyximg").attr('src','../images/yxgz/00.png') 
								}else if(zyxzs==true){
									$(".zjyximg").attr('src','../images/yxgz/11.png') 
								}
							 
							 if(zjkgzs==false){
									$(".zjgjimg").attr('src','../images/yxgz/00.png') 
								}else if(zjkgzs==true){
									$(".zjgjimg").attr('src','../images/yxgz/11.png') 
								}
						     }
					 }
		}
     });
}

//模式
function msqd(b,sbname){
	var flag
	if(sbname=='蝶阀'){
		 flag=$("#dfbh").text();	
	}else if(sbname=='循环泵'){
		 flag=$("#xhbbh").text();	
	}else if(sbname=='深井泵'){
		flag=$("#ssbbh").text();
	}else if(sbname=='主机'){
		flag=$("#zjbh").text();
	}
	 var hrzname = $("#hrzname").val();
	$.ajax({
		url :"msdf.action",
		type : "post",
		dataType : "json",
		data : {
			"stas" : b,
			"flag":flag,
			"sbname":sbname,
			"hrzname":hrzname,
		},
		success : function(data) {
			 var d = eval(data).maps;
			 var flag=d.flag;
			 var sbname=d.sbname;
			 if(flag==1){
				
			 if(sbname=='蝶阀'){
				 
			     var dms=d.d蝶阀1模式;
				 //模式
				 if(dms==false){//强制
					 //强制
					 $("#dfqz").attr("class","layui-btn layui-btn-disabled");
					//连锁
					 $("#dfls").attr("class","layui-btn layui-btn-normal");
					 $("#dfqd").attr("class","layui-btn").prop("disabled" , false);
					 $("#dftz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false);
				 }else if(dms==true){
					//强制
					 $("#dfqz").attr("class","layui-btn layui-btn-normal");
					 //连锁
					 $("#dfls").attr("class","layui-btn layui-btn-disabled");
					 $("#dfqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 $("#dftz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
				 }
				 }else if(sbname=='循环泵'){
					 var xhbms=d.d循环泵1模式;
					 if(xhbms==false){
						 //强制
						 $("#xhbqz").attr("class","layui-btn layui-btn-disabled");
						 $("#xhbls").attr("class","layui-btn layui-btn-normal");
						 $("#xhbqd").attr("class","layui-btn").prop("disabled" , false);
						 $("#xhbtz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false);
						 
					}else if(xhbms==true){
						 $("#xhbqz").attr("class","layui-btn layui-btn-normal");
						//连锁
						 $("#xhbls").attr("class","layui-btn layui-btn-disabled");
						 $("#xhbqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
						 $("#xhbtz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					}
					 
				 }else if(sbname=='深井泵'){
					 var ssbms=d.d深井泵1模式;
					 if(ssbms==false){
						 //强制
						 $("#ssbqz").attr("class","layui-btn layui-btn-disabled");
						 $("#ssbls").attr("class","layui-btn layui-btn-normal");
						 $("#ssbqd").attr("class","layui-btn").prop("disabled" , false);
						 $("#ssbtz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false);
						 
					}else if(ssbms==true){
						//连锁
						 $("#ssbls").attr("class","layui-btn layui-btn-disabled");
						 $("#ssbqz").attr("class","layui-btn layui-btn-normal");
						 $("#ssbqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
						 $("#ssbtz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					} 
				 }
			 } if(flag==2){

				 if(sbname=='蝶阀'){
					 
				     var dms=d.d蝶阀2模式;
					 //模式
					 if(dms==false){//强制
						 //强制
						 $("#dfqz").attr("class","layui-btn layui-btn-disabled");
						//连锁
						 $("#dfls").attr("class","layui-btn layui-btn-normal");
						 $("#dfqd").attr("class","layui-btn").prop("disabled" , false);
						 $("#dftz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false);
					 }else if(dms==true){
						//强制
						 $("#dfqz").attr("class","layui-btn layui-btn-normal");
						 //连锁
						 $("#dfls").attr("class","layui-btn layui-btn-disabled");
						 $("#dfqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
						 $("#dftz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
					 }
					 }else if(sbname=='循环泵'){
						 var xhbms=d.d循环泵2模式;
						 if(xhbms==false){
							 //强制
							 $("#xhbqz").attr("class","layui-btn layui-btn-disabled");
							 $("#xhbls").attr("class","layui-btn layui-btn-normal");
							 $("#xhbqd").attr("class","layui-btn").prop("disabled" , false);
							 $("#xhbtz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false);
							 
						}else if(xhbms==true){
							 $("#xhbqz").attr("class","layui-btn layui-btn-normal");
							//连锁
							 $("#xhbls").attr("class","layui-btn layui-btn-disabled");
							 $("#xhbqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
							 $("#xhbtz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
						}
						 
					 }else if(sbname=='深井泵'){
						 var ssbms=d.d深井泵2模式;
						 if(ssbms==false){
							 //强制
							 $("#ssbqz").attr("class","layui-btn layui-btn-disabled");
							 $("#ssbls").attr("class","layui-btn layui-btn-normal");
							 $("#ssbqd").attr("class","layui-btn").prop("disabled" , false);
							 $("#ssbtz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false);
							 
						}else if(ssbms==true){
							//连锁
							 $("#ssbls").attr("class","layui-btn layui-btn-disabled");
							 $("#ssbqz").attr("class","layui-btn layui-btn-normal");
							 $("#ssbqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
							 $("#ssbtz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
						} 
					 }
				 } if(flag==3){

					 if(sbname=='蝶阀'){
						 
					     var dms=d.d蝶阀3模式;
						 //模式
						 if(dms==false){//强制
							 //强制
							 $("#dfqz").attr("class","layui-btn layui-btn-disabled");
							//连锁
							 $("#dfls").attr("class","layui-btn layui-btn-normal");
							 $("#dfqd").attr("class","layui-btn").prop("disabled" , false);
							 $("#dftz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false);
						 }else if(dms==true){
							//强制
							 $("#dfqz").attr("class","layui-btn layui-btn-normal");
							 //连锁
							 $("#dfls").attr("class","layui-btn layui-btn-disabled");
							 $("#dfqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
							 $("#dftz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
						 }
						 }else if(sbname=='循环泵'){
							 var xhbms=d.d循环泵3模式;
							 if(xhbms==false){
								 //强制
								 $("#xhbqz").attr("class","layui-btn layui-btn-disabled");
								 $("#xhbls").attr("class","layui-btn layui-btn-normal");
								 $("#xhbqd").attr("class","layui-btn").prop("disabled" , false);
								 $("#xhbtz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false);
								 
							}else if(xhbms==true){
								 $("#xhbqz").attr("class","layui-btn layui-btn-normal");
								//连锁
								 $("#xhbls").attr("class","layui-btn layui-btn-disabled");
								 $("#xhbqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
								 $("#xhbtz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
							}
							 
						 }else if(sbname=='深井泵'){
							 var ssbms=d.d深井泵3模式;
							 if(ssbms==false){
								 //强制
								 $("#ssbqz").attr("class","layui-btn layui-btn-disabled");
								 $("#ssbls").attr("class","layui-btn layui-btn-normal");
								 $("#ssbqd").attr("class","layui-btn").prop("disabled" , false);
								 $("#ssbtz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false);
								 
							}else if(ssbms==true){
								//连锁
								 $("#ssbls").attr("class","layui-btn layui-btn-disabled");
								 $("#ssbqz").attr("class","layui-btn layui-btn-normal");
								 $("#ssbqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
								 $("#ssbtz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
							} 
						 }
					 }else if(flag==4){
						 if(sbname=='蝶阀'){
							 
						     var dms=d.d蝶阀4模式;
							 //模式
							 if(dms==false){//强制
								 //强制
								 $("#dfqz").attr("class","layui-btn layui-btn-disabled");
								//连锁
								 $("#dfls").attr("class","layui-btn layui-btn-normal");
								 $("#dfqd").attr("class","layui-btn").prop("disabled" , false);
								 $("#dftz").attr("class","layui-btn layui-btn-danger").prop("disabled" , false);
							 }else if(dms==true){
								//强制
								 $("#dfqz").attr("class","layui-btn layui-btn-normal");
								 //连锁
								 $("#dfls").attr("class","layui-btn layui-btn-disabled");
								 $("#dfqd").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
								 $("#dftz").attr("class","layui-btn layui-btn-disabled").prop("disabled" , true);
							 }
							 }
					 }
		}
     });
}

//压差设定
function ylsd(){
	var flag=$("#dfbh").text();
	 var hrzname = $("#hrzname").val();
	$.ajax({
		url :"msdf.action",
		type : "post",
		dataType : "json",
		data : {
			"flag" : flag,
			"stas" : b,
			"sbname":sbname,
			"hrzname":hrzname,
		},
		success : function(data) {
			 var d = eval(data).df;
			 if(d==true){
				  $(".dfimg").attr('src','../images/yxgz/11.png')  
			 }
			 if(d==false){
				 
				 $(".dfimg").attr('src','../images/yxgz/00.png') 
			 }
		
		}
     });	
}
 //循环泵设定值
function xhbylsd(){
	var val=$("#xhbycsd").val();
	 var hrzname = $("#hrzname").val();
	$.ajax({
		url :"xhbylsd.action",
		type : "post",
		dataType : "json",
		data : {
			"val" : val,
			"hrzname":hrzname,
		},
		success : function(data) {
			var xhbycsd=data.valu;
			$("#xhbycsd").val(xhbycsd);	
		}
     });
	
}
 
 
//变频器手自动
function xhbbp(value){
	
	 var hrzname = $("#hrzname").val();
	$.ajax({
		url :"xhbbpxg.action",
		type : "post",
		dataType : "json",
		data : {
			"val" : value,
			"hrzname":hrzname,
		},
		success : function(data) {
			
			var map=data.maps;
			var ycjd=map.变频器手自动;
		
			if(ycjd==true){//手动
				 $("#xxbpyc").attr("class","layui-btn layui-btn-disabled")
				  $("#xxbpjd").attr("class","layui-btn layui-btn-normal")
			}else if(ycjd==false){
				 $("#xxbpjd").attr("class","layui-btn layui-btn-disabled")
				 $("#xxbpyc").attr("class","layui-btn layui-btn-normal")
			}
		}
     });
}
/* //变频器手自动
function bpqszd(id,name){
	 var hrzname = $("#hrzname").val();
		$.ajax({
			url :"bpqszd.action",
			type : "post",
			dataType : "json",
			data : {
				"val" : value,
				"hrzname":hrzname,
			},
			success : function(data) {
				
				var map=data.map;
				var ycjd=map.变频器手自动;
			
				if(ycjd==true){
					 $("#xxbpyc").attr("class","layui-btn layui-btn-disabled")
					  $("#xxbpjd").attr("class","layui-btn layui-btn-normal")
				}else if(ycjd==false){
					 $("#xxbpjd").attr("class","layui-btn layui-btn-disabled")
					 $("#xxbpyc").attr("class","layui-btn layui-btn-normal")
				}
			}
	     });
	
} */
function xhbbpg(id,name){
	 var val = $("#"+id).val();
	 var hrzname = $("#hrzname").val();
	$.ajax({
		url :"xhbbpcsxg.action",
		type : "post",
		dataType : "json",
		data : {
			"val" : val,
			"name":name,
			"id":id,
			"hrzname":hrzname,
		},
		success : function(data) {
			var map=data.maps;
			var val=map.vs;
			var id=map.id;
			if(id=="shbsd"){
			if(val==1){
				 var sel2 = document.getElementById("shbsd").options;
				sel2[0].selected = true;
			}else if(val==2){
				 var sel2 = document.getElementById("shbsd").options;
					sel2[1].selected = true;
			} else if(val==3){
				 var sel2 = document.getElementById("shbsd").options;
				sel2[2].selected = true;
			}
			}else{
				$("#"+id).val(val);	
			}
		
		}
     });
	
}
//循环泵变频刷新
function xhbpsx(){
	
	 var hrzname = $("#hrzname").val();
	  $.ajax({
			url :"xhbpstate.action",
			type : "post",
			dataType : "json",
			async:false,
			data : {
				"name":name,
				"hrzname":hrzname,
			},
			success : function(data) {
				
				var map=data.map;
				var ycjd=map.变频器手自动;
				var xhbpsd=map.变频泵选择;
				var xhbpycsd=map.供回水压差设定;
				var xhbpplsd=map.循泵频率设定;
				var plfk=map.循环泵频率;
				if(ycjd==true){
					
					 $("#xxbpyc").attr("class","layui-btn layui-btn-disabled")
					  $("#xxbpjd").attr("class","layui-btn layui-btn-normal")
				}else if(ycjd==false){
					 $("#xxbpjd").attr("class","layui-btn layui-btn-disabled")
					 $("#xxbpyc").attr("class","layui-btn layui-btn-normal")
				}
				if(xhbpsd==1){
					 var sel2 = document.getElementById("shbsd").options;
					sel2[0].selected = true;
				}else if(xhbpsd==2){
					 var sel2 = document.getElementById("shbsd").options;
						sel2[1].selected = true;
				} else if(xhbpsd==3){
					 var sel2 = document.getElementById("shbsd").options;
					sel2[2].selected = true;
				}
				$("#xhbpycsd").val(xhbpycsd);
				$("#xhbpplsd").val(xhbpplsd);	
				$("#xhbpplfk").val(plfk);
				
			  }
			})	
	
}


</script>
<!-- <button class="layui-btn layui-btn-normal" type="button"  id="xxbyc">远程</button>
            <button class="layui-btn layui-btn-normal" type="button"  id="xxbjd">就地</button> -->
<script type="text/html" id="xhb">
    <form id="xhb" class="layui-form model-form" action="" method="PUT">

       <div class="layui-form-item" style="width:450px">
<div class="layui-inline">
            <label   class="layui-form-label" style="width:150px">循环泵编号</label>
</div>
           <div class="layui-inline">
           <span id="xhbbh"></span>
			<i class="layui-icon layui-icon-refresh" style="font-size: 15px; color: #1E9FFF;"><a style="font-size: 15px; color: #1E9FFF;" onclick="xhpsx()">刷新</a></i>                
		</div>
        </div>       
 		
        <div class="layui-form-item" style="width:450px">
<div class="layui-inline">
            <label   class="layui-form-label" style="width:150px">启动柜工作模式</label>
</div>
           <div class="layui-inline">
           
           <span id="xhbyxjd" style="background-color:#CCFFCC;text-align:center;font-size:18px;width:100px;hight:100px;display:block;" ></span>
            </div>
        </div>
       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">PLC控制方式</label>
            <div class="layui-input-block">
            <button class="layui-btn layui-btn-normal" id="xhbqz" type="button"  onmousedown="msqd('0','循环泵')"  id="qingd">强制</button>
            <button class="layui-btn layui-btn-normal" id="xhbls" type="button"  onmousedown="msqd('1','循环泵')"  id="tingz">连锁</button>
            </div>
        </div>

       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">工作状态</label>
            <div class="layui-input-block">
             <button class="layui-btn" type="button" id="xhbqd"  onmousedown="kgdfqd('1','启动','循环泵')" onmouseup="kgdfqd('0','启动','循环泵')"  id="qingd">启动</button>
             <button class="layui-btn layui-btn-danger" id="xhbtz" type="button" onmousedown="kgdfqd('1','停止','循环泵')" onmouseup="kgdfqd('0','停止','循环泵')" id="tingz">停止</button>

            </div>
        </div>

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">循环泵压差设定（bar）</label>
            <div class="layui-input-block">
                <input style="width:50px;display:inline" autocomplete="off" id="xhbycsd"  name="xhbycsd"  class="layui-input" maxlength="12"/>
				<button class="layui-btn layui-btn-normal" type="button" onclick="xhbylsd()"   id="tingz">压差设定</button>
            </div>
        </div>

        <div class="layui-form-item" style="width:450px">
			<div  style="float:left">
            <label   class="layui-form-label" style="width:150px">运行状态</label>
            <div class="layui-input-block">
                <img class="xhbyximg" style="width:50px" src="" />
            </div>
           </div>
			<div style="float:left">
            <label   class="layui-form-label" style="width:150px">故障状态</label>
            <div class="layui-input-block">
                <img class="xhbgzimg" style="width:50px" src="" />
            </div>
		</div>
        </div>
      

      
        <div class="layui-form-item model-form-footer" style="margin-left:130px">
           
        </div>
    </form>

</script>

<script type="text/html" id="xhbp">
     <form id="xhb" class="layui-form model-form" action="" method="PUT">    
<ul style="float:right; width:10%;">  		
<i class="layui-icon layui-icon-refresh" style="font-size: 15px; color: #1E9FFF;"><a style="font-size: 15px; color: #1E9FFF;" onclick="xhbpsx()">刷新</a></i>                
</ul>        
<div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">变频器设定</label>
            <div class="layui-input-block">
            <button class="layui-btn layui-btn-normal" type="button" id="xxbpyc"  onclick="xhbbp('1')">手动</button>
            <button class="layui-btn layui-btn-normal" type="button"  id="xxbpjd" onclick="xhbbp('0')">自动</button>
            </div>
        </div>
  
   <div class="layui-form-item" style="width:450px">
			
            <label   class="layui-form-label" style="width:150px">频率反馈(Hz)</label>
            <div class="layui-input-block">
                <input style="width:75px;display:inline" autocomplete="off" id="xhbpplfk"  name="xhbpplfk"  class="layui-input" maxlength="12"/>
            </div>
       
		</div>
       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">循环泵压差设定(bar)</label>
            <div class="layui-input-block">
              <input style="width:75px;display:inline" autocomplete="off" id="xhbpycsd"  name="xhbpycsd"  class="layui-input" maxlength="12"/>
				<button class="layui-btn layui-btn-normal" type="button" onclick="xhbbpg('xhbpycsd','供回水压差设定')" id="tingz">设定</button>
            </div>
        </div>

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">频率设定(Hz)</label>
            <div class="layui-input-block">
                <input style="width:75px;display:inline" autocomplete="off" id="xhbpplsd"  name="xhbpplsd"  class="layui-input" maxlength="12"/>
				<button class="layui-btn layui-btn-normal" type="button" onclick="xhbbpg('xhbpplsd','循泵频率设定')" id="tingz">设定</button>
            </div>
        </div>

     
           <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">变频泵设定</label>
            <div class="layui-input-block">
          <div  class="layui-input-inline"  style="width:120px;">
			<select id="shbsd" class="layui-input-inline" style="width:10px;" >
			<option value="1">1号循环泵</option>
			<option value="2">2号循环泵</option>
			<option value="3">3号循环泵</option>
			</select>
		</div>
				<button class="layui-btn layui-btn-normal" type="button" onclick="xhbbpg('shbsd','变频泵选择')"   id="tingz">设定</button>
            </div>
        </div>
        <div class="layui-form-item model-form-footer" style="margin-left:130px">
           
        </div>
    </form>

</script>
  <!-- <label   class="layui-form-label" style="width:150px">工作模式</label>
            <div class="layui-input-block">
            <button class="layui-btn layui-btn-normal" type="button"  id="ssbyc">远程</button>
            <button class="layui-btn layui-btn-normal" type="button"  id="ssbjd">就地</button>
			
            </div> -->
<script type="text/html" id="ssb">
    <form id="xhb" class="layui-form model-form" action="" method="PUT">

     
       <div class="layui-form-item" style="width:450px">
<div class="layui-inline">
            <label   class="layui-form-label" style="width:150px">深水泵编号</label>
</div>
            <div class="layui-inline">
           <span id="ssbbh"></span>

<i class="layui-icon layui-icon-refresh" style="font-size: 15px; color: #1E9FFF;"><a style="font-size: 15px; color: #1E9FFF;" onclick="ssbsx()">刷新</a></i>                
            </div>
        </div>       
           <div class="layui-form-item" style="width:450px">
 
		<div class="layui-inline">
            <label   class="layui-form-label" style="width:150px">工作模式</label>
           </div>
             <div class="layui-inline">
           
           <span id="ssbyxjd" style="background-color:#CCFFCC;text-align:center;font-size:18px;width:100px;hight:100px;display:block;" >111</span>
            </div>
        </div>
       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">PLC控制方式</label>
            <div class="layui-input-block">
            <button class="layui-btn layui-btn-normal" type="button"  onmousedown="msqd('0','深井泵')"  id="ssbqz">强制</button>
            <button class="layui-btn layui-btn-normal" type="button" onmousedown="msqd('1','深井泵')"   id="ssbls">连锁</button>
			
            </div>
        </div>

       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">工作状态</label>
            <div class="layui-input-block">
             <button class="layui-btn" type="button"  onmousedown="kgdfqd('1','启动','深井泵')" onmouseup="kgdfqd('0','启动','深井泵')"  id="ssbqd">启动</button>
             <button class="layui-btn layui-btn-danger"  type="button"  onmousedown="kgdfqd('1','停止','深井泵')" onmouseup="kgdfqd('0','停止','深井泵')"  id="ssbtz">停止</button>
            </div>
        </div>

       <div class="layui-form-item" style="width:450px">
			<div style="float:left">
            <label   class="layui-form-label" style="width:150px">运行状态</label>
            <div class="layui-input-block">
 				<img class="ssbyximg" style="width:50px" src="" />
            </div>
    		</div>
			<div  style="float:left">
            <label   class="layui-form-label" style="width:150px">故障状态</label>
            <div class="layui-input-block">
                <img class="ssbgzimg" style="width:50px" src="" />
            </div>
			</div>
        </div>
      
        <div class="layui-form-item model-form-footer" style="margin-left:130px">
           
        </div>
    </form>

</script>

<script type="text/html" id="df">
    <form id="df" class="layui-form model-form" action="" method="PUT">

     
       <div class="layui-form-item" style="width:450px">
<div class="layui-inline">
            <label   class="layui-form-label" style="width:150px">蝶阀编号</label>
           </div>
<div class="layui-inline">
           <span id="dfbh"></span>
<i class="layui-icon layui-icon-refresh" style="font-size: 15px; color: #1E9FFF;"><a style="font-size: 15px; color: #1E9FFF;" onclick="dfsx()">刷新</a></i>         
            </div>
        </div>       

       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">PLC工作方式</label>
            <div class="layui-input-block">
            <button class="layui-btn layui-btn-normal" id="dfqz" type="button" onmousedown="msqd('0','蝶阀')"  id="qingd">强制</button>
            <button class="layui-btn layui-btn-normal" id="dfls" type="button" onmousedown="msqd('1','蝶阀')"   id="tingz">连锁</button>
            </div>
        </div>

       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">工作状态</label>
            <div class="layui-input-block">
             <button class="layui-btn" type="button" id="dfqd"  onmousedown="kgdfqd('1','开启','蝶阀')" onmouseup="kgdfqd('0','开启','蝶阀')">启动</button>
             <button class="layui-btn layui-btn-danger" id="dftz" type="button" onmousedown="kgdfqd('1','关闭','蝶阀')" onmouseup="kgdfqd('0','关闭','蝶阀')">停止</button>
            </div>
        </div>

       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">运行状态</label>
            <div class="layui-input-block">
                <img class="dfimg" style="width:50px" src="" />
            </div>
        
            <label   class="layui-form-label" style="width:150px">开阀到位</label>
            <div class="layui-input-block">
                <img class="kfdwimg" style="width:50px" src="" />
            </div>
        </div>
        <div class="layui-form-item model-form-footer" style="margin-left:130px">
           
        </div>
    </form>

</script>

<script type="text/html" id="zj">
    <form id="zj" class="layui-form model-form" action="" method="PUT">

     
        <div class="layui-form-item" style="width:450px">
      <div class="layui-inline">
            <label   class="layui-form-label" style="width:130px">主机编号</label>
       </div>
          <div class="layui-inline"> 
           <span id="zjbh"></span>
			<i class="layui-icon layui-icon-refresh" style="font-size: 15px; color: #1E9FFF;"><a style="font-size: 15px; color: #1E9FFF;" onclick="zjsx()">刷新</a></i>         
            </div>
        </div>       



       <div class="layui-form-item" style="width:200px;  padding-left: 35%;">
        
            <div class="layui-inline">
            <input class='layui-input' style="width:80px;" autocomplete="off" id="zlzrfk"  name=""  class="layui-input" maxlength="12" />
  </div>
<div class="layui-inline">            
<input class='layui-input' type="float:left" style="width:80px;" autocomplete="off" id="ycjdfk"  name=""  class="layui-input" maxlength="12" />
  		</div>
        </div>
			<div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:130px">远程就地切换</label>
            <div class="layui-input-block">
             <button class="layui-btn layui-btn-normal" id="gz" type="button" onclick="ycbdqh('1','远程本地切换','主机远程就地反馈')"   id="bd">远程本地切换</button>
            </div>
        </div>
       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:130px">故障复位</label>
            <div class="layui-input-block">
             <button class="layui-btn layui-btn-normal" id="gz" type="button" onclick="zjgfw('1','故障复位')"   id="bd">故障复位</button>
            </div>
        </div>
       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:130px">工作状态</label>
            <div class="layui-input-block">
             <button class="layui-btn" type="button"   onmousedown="kgdfqd('1','开机信号','主机')" onmouseup="kgdfqd('0','开机信号','主机')"  id="qd">启动</button>
            <button class="layui-btn layui-btn-danger" type="button"  onmousedown="kgdfqd('1','关机信号','主机')" onmouseup="kgdfqd('0','关机信号','主机')"   id="tz">停止</button>
            </div>
        </div>
 		
       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">开机倒计时（ms）</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="zjjs"  name=""  class="layui-input" maxlength="12"
                       />
            </div>
       </div>

       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">制冷目标温度值（℃）</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="zjzl"  name=""  class="layui-input" maxlength="12"
                       />
            </div>
       </div>

       
         

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">制热目标温度值（℃）</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="zjzr"  name="zjrcwd"  class="layui-input" maxlength="12"
                       />
            </div>
        </div>

      

      <div class="layui-form-item" style="width:450px">
			<div  style="float:left">
              <label   class="layui-form-label" style="width:150px">运行状态</label>
            <div class="layui-input-block">
                <img class="zjyximg" style="width:50px" src="" />
            </div>
           </div>
			<div style="float:left">
            <label   class="layui-form-label" style="width:150px">关机指示</label>
            <div class="layui-input-block">
                <img class="zjgjimg" style="width:50px" src="" />
            </div>
		</div>
        </div>
        <div class="layui-form-item model-form-footer" style="margin-left:130px">
           
        </div>
    </form>

</script>

 <!--  <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">运行状态</label>
            <div class="layui-input-block">
                <img class="zjyximg" style="width:50px" src="" />
            </div>
        </div> -->

<script type="text/html" id="bsf">
    <form id="pswForm" class="layui-form model-form" action="" method="PUT">

     
        <div class="layui-form-item" style="width:550px>
            <label class="layui-form-label" style="width:150px">远程就地状态</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt" readonly="readonly" name="tjfzt" value="就地" class="layui-input" maxlength="12"
                       />
            </div>
        </div>
    

        <div class="layui-form-item" style="width:550px>
            <label   class="layui-form-label" style="width:150px">控制状态设定</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt"  name="tjfzt" value="0.0" class="layui-input" maxlength="12"
                       />
            </div>
        </div>

       <div class="layui-form-item" style="width:550px>
            <label   class="layui-form-label" style="width:150px">水阀开关上限（m）</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt" readonly="readonly" name="tjfzt" value="0.0" class="layui-input" maxlength="12"
                       />
            </div>
       </div>

        <div class="layui-form-item" style="width:550px>
            <label   class="layui-form-label" style="width:150px">水阀开关下限（m）</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt" readonly="readonly" name="tjfzt" value="0.5" class="layui-input" maxlength="12"
                       />
            </div>
        </div>
         <div class="layui-form-item" style="width:550px>
            <label   class="layui-form-label" style="width:150px">启动状态控制</label>
            <button class="layui-btn" type="button"  onmousedown="kgdfqd('1','开启','蝶阀')" onmouseup="kgdfqd('0','开启','蝶阀')"  id="qingd">启动</button>
            <button class="layui-btn layui-btn-danger" type="button"  onmousedown="kgdfqd('1','关闭','蝶阀')" onmouseup="kgdfqd('0','关闭','蝶阀')"  id="tingz">停止</button>
        </div>
    </form>

</script>

<script type="text/html" id="bsb">
 <form id="pswForm" class="layui-form model-form" action="" method="PUT">

     
        <div class="layui-form-item" style="width:550px>
            <label class="layui-form-label" style="width:150px">远程就地状态</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt" readonly="readonly" name="tjfzt" value="就地" class="layui-input" maxlength="12"
                       />
            </div>
        </div>
       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">控制状态设定</label>
            <div class="layui-input-block" >
                <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this)"   id="qingd">强制</button>
            <button class="layui-btn layui-btn-normal"  type="button" onclick="xz(this)"   id="tingz">非强制</button>
            </div>
        </div>

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">急停操作</label>
            <div class="layui-input-block" >
            <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this)"   id="qingd">急停</button>
            <button class="layui-btn layui-btn-normal" style="width:77px" type="button" onclick="xz(this)"   id="tingz">正常</button>
            </div>
        </div>

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">频率给定（HZ）</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt"  name="tjfzt" value="0.0" class="layui-input" maxlength="12"
                       />
            </div>
        </div>

       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">频率反馈（HZ）</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt" readonly="readonly" name="tjfzt" value="0.0" class="layui-input" maxlength="12"
                       />
            </div>
       </div>

        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">二次供压力设定值（Mpa）</label>
            <div class="layui-input-block">
                <input style="width:200px" autocomplete="off" id="tjfzt"  name="tjfzt" value="0.5" class="layui-input" maxlength="12"
                       />
            </div>
        </div>
         <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">启动状态控制</label>
            <div class="layui-input-block" >
            <button class="layui-btn" style="width:77px" type="button"  onmousedown="kgdfqd('1','开启','蝶阀')" onmouseup="kgdfqd('0','开启','蝶阀')"  id="qingd">启动</button>
            <button class="layui-btn layui-btn-danger" style="width:77px" type="button"onmousedown="kgdfqd('1','关闭','蝶阀')" onmouseup="kgdfqd('0','关闭','蝶阀')"  id="tingz">停止</button>
            </div>
        </div>
        <div class="layui-form-item model-form-footer" style="margin-left:130px">
           
        </div>
    </form>

</script>
<script type="text/javascript">
function fwLogin(){
	
	 layui.form.render();
	  layer.open({
		  type: 1,
	        title: "请登录",
	        area: '400px',
	        offset: '120px',
	        content: $("#YhModel").html()
	    });
	  layui.form.render();
}
function loginYh(){
	var msg;
	var userName=$("#userName").val();
	var passWord=$("#passWord").val();
	if(userName==null||userName==""||passWord==null||passWord==""){
		alert("请输入用户名和密码")
		return
	}
	$.ajax({
		url : "<%=basePath%>user/yxsblogin.action", 
		async : false,
		dataType : "json",
		data : {
			"username" : userName,
			"password" : passWord,
		},
		success : function(data) {
			msg = data.msg;
			if (msg == "0") {
				layer.closeAll();//关闭所有层
				//账号和密码正确
				 layui.form.render();
				  layer.open({
					  type: 1,
				        title: "设备复位",
				        area: '400px',
				        offset: '120px',
				        content: $("#YhModel1").html()
				    });
				  layui.form.render();
				  
				  
				  
			}
			if (msg == "1") {
				alert("账号或密码错误")
				return false;
			} 
		}

	});
}

//设备复位
function sbfw(val,name){
	var hrzname = $("#hrzname").val();
	$.ajax({
		url :"sbfw.action",
		type : "post",
		dataType : "json",
		data : {
			"hrzname":hrzname,
			"val" : val,
			"name":name,
		},
		success : function(data) {
			alert("设置成功！")
		}
     });
	
}
 
</script>
<script type="text/html" id="YhModel1">

<form id="LoginForm" class="layui-form model-form" action="" method="PUT">

    
       <div class="layui-form-item">
           <label class="layui-form-label">设备复位</label>
           <div class="layui-input-block">
           <button class="layui-btn layui-btn-normal" type="button"  onmousedown="sbfw('1','设备复位')" onmouseup="sbfw('0','设备复位')">一键复位</button>
           </div>
       </div>
   </form>
</script>
<script type="text/html" id="YhModel">

<form id="LoginForm" class="layui-form model-form" action="" method="PUT">

    
       <div class="layui-form-item">
           <label class="layui-form-label">用户名</label>
           <div class="layui-input-block">
               <input style="width:200px" autocomplete="off" id="userName" name="userName" placeholder="请输入用户名" value="" class="layui-input" maxlength="12"
                      lay-verify="required" required/>
           </div>
       </div>

       <div class="layui-form-item">
           <label class="layui-form-label">密码</label>
           <div class="layui-input-block">
               <input style="width:200px" autocomplete="off" id="passWord" name="passWord" placeholder="请输入密码" type="password" class="layui-input" maxlength="12"
                      lay-verify="required|pass" required/>
           </div>
       </div>
       
       <div class="layui-form-item model-form-footer" style="margin-left:130px">
           <button class="layui-btn layui-btn-normal" type="button" onclick="loginYh()">登录</button>
       </div>
   </form>
</script>
<body  style=" ">
 &nbsp;   &nbsp;   &nbsp;   <select id="hrzname" class="csinput" >
	    <option value="北京华誉.新乡商务大厦">新乡商务大厦</option>
	   </select> <input id="jk_search_btn" value="选择" type="button"> 
 <div class="bg">
   <div style="width:5%;height:3%;  position: absolute;left: 5%;top: 6%;">
	<button  type="button"  onclick="fwLogin()"  class="layui-btn layui-btn-sm layui-btn-radius  ">一键复位</button>、
	<button  type="button"  onclick="jzxncs()"  class="layui-btn layui-btn-sm layui-btn-radius  ">机组性能参数</button>
	<button  type="button"  onclick="sbgkt()"  class="layui-btn layui-btn-sm layui-btn-radius  ">水泵工况图</button>
	<!-- <span><input readonly="readonly"  class="csinput" style="width:90px" id="ljrl" value=""></span> -->
	</div>  
	<!-- 参数 -->
	<!-- 上热表 -->
	<div style="width:5%;height:3%;  position: absolute;left: 69%;top: 6%;">
	 <span id="ssrl"></span><br/>
	<!-- <span><input readonly="readonly"  class="csinput" style="width:90px" id="ljrl" value=""></span> -->
	</div>	
	<div style="width:5%;height:3%;  position: absolute;left: 69%;top: 8%;">
	 <span id="ssll"></span><br/>
	<!-- <span><input readonly="readonly"  class="csinput" style="width:90px" id="ljrl" value=""></span> -->
	</div>	
	<!-- 上压力表 -->
	<div style="width:5%;height:3%; position: absolute;left: 76%;top: 8%;">
	 <span id="gsyl"></span><br/>
	<!-- <span><input readonly="readonly" class="csinput" style="width:90px" id="gsyl" value=""></span> -->
	</div>	
	<!-- 上温度表 -->
	<div style="width:5%;height:3%;  position: absolute;left: 82%;top: 8%;">
	<span id="gswd"></span><br/>
	<!-- <span><input readonly="readonly" class="csinput" style="width:90px" id="gswd" value=""></span> -->
	</div>
	<!-- 下压力表 -->
	<div style="width:5%;height:3%; position: absolute;left: 76%;top: 27.5%;">
	<span id="hsyl"></span><br/>
	<!-- <span><input readonly="readonly" class="csinput" style="width:90px" id="hsyl" value=""></span> -->
	</div>	
	<!-- 下温度表 -->	
	<div style="width:5%;height:3%;  position: absolute;left: 81%;top: 27.5%;">
	<!-- <span><input readonly="readonly" class="csinput" style="width:90px" id="hswd" value=""></span> -->
	<span id="hswd"></span><br/>
	</div>
	<!-- 水箱  -->	
	<div style="width:5%;height:3%;   position: absolute;left: 55%;top: 60%;">
	<span id="sxyw"></span><br/>
	<!-- <span><input readonly="readonly" class="csinput" style="width:90px" id="sxyw" value=""></span> -->
	</div>	
	
	<div style="width:15%;height:13%;  position: absolute;left: 83%;top: 56%;">
	<!-- <span>室外温度:&nbsp;&nbsp;&nbsp;<input readonly="readonly" class="csinput" style="width:80px" id="swwd" value=""></span><br/><br/> -->
	<span>室外温度:&nbsp;&nbsp;&nbsp;<span id="swwd"></span></span><br/>
	<!-- <span>供回水压差:<input readonly="readonly" class="csinput" style="width:93px" id="ghyc" value=""></span> -->
	<span>供回水压差:<span id="ghyc"></span></span>
	<br/>
	<span>制冷温度需要值:<span id="gswdxyz"></span></span>
	<br/>
	<span>制热温度需要值:<span id="zrwdxyz"></span></span>
	</div>
	

	 
	<!--循环泵  -->
	<div id="x1" style="width:3%;height:4.1%; position: absolute;left: 57.5%;top: 34.5%;"  onclick="showXhb(3,'3#循环泵运行','3#循环泵故障','循环泵3模式','循环泵远程就地')"
	 onmouseover = "over('x1')" onmouseout="out('x1')"  >
	<img class="xhbyx3" style="width:100%;height: 100%" />
	</div>
	
	
	
	<div id="x2" style="width:3%;height:4.1%;  position: absolute;left: 57.5%;top: 42%;" onclick="showXhb(2,'2#循环泵运行','2#循环泵故障','循环泵2模式','循环泵远程就地')"
		onmouseover = "over('x2')" onmouseout="out('x2')" >
		<img class="xhbyx2" style="width:100%;height: 100%"/>
	</div>
	
	<div id="x3"style="width:3%;height:4%;   position: absolute;left: 57.5%;top: 49.5%;" onclick="showXhb(1,'1#循环泵运行','1#循环泵故障','循环泵1模式','循环泵远程就地')"
	onmouseover = "over('x3')" onmouseout="out('x3')">
		<img class="xhbyx1" style="width:100%;height: 100%"/>
	</div>
	<div style="width:3%;height:4%;    position: absolute;left: 60%;top: 10%;" onclick="showXhbp()">
	<button class="layui-btn  layui-btn-sm" style="width:80px"   >循环泵变频</button>
	</div>
	
	
	<!--蝶阀 -->
	<div id="d1"  onmouseover = "over('d1')" onmouseout="out('d1')" style="width:4%;height:4%;    position: absolute;left: 2.5%;top: 25%" onclick="showdf(1,'1#蝶阀开关','蝶阀1模式','1号蝶阀')">
	
	</div>
	
	<div style="width:3%;height:4%; font-size:5px;  position: absolute;left: 0.6%;top: 26%" >
	 <img class="dfyx1" style="width:35px" src="" />
	</div>
	
	
	<div style="width:7%;height:12%; font-size:5px;  position: absolute;left: 7%;top: 23%" >
	热进<span id="rj1"></span><br/>
	热出<span id="rc1"></span><br/>
	冷进<span id="lj1"></span><br/>
	冷出<span id="lc1"></span>
	</div>
	
	<div id="d2"  onmouseover = "over('d2')" onmouseout="out('d2')" style="width:4%;height:4%;   position: absolute;left: 14.5%;top: 25%" onclick="showdf(2,'2#蝶阀开关','蝶阀2模式','2号蝶阀')">
	
	</div>
	<div style="width:3%;height:4%; font-size:5px;  position: absolute;left: 12.5%;top: 26%" >
	 <img class="dfyx2" style="width:35px" src="" />
	</div>
	<div style="width:7%;height:12%; font-size:5px;  position: absolute;left: 19%;top: 23%" >
	热进<span id="rj2"></span><br/>
	热出<span id="rc2"></span><br/>
	冷进<span id="lj2"></span><br/>
	冷出<span id="lc2"></span>
	</div>
	
	<div id="d3"  onmouseover = "over('d3')" onmouseout="out('d3')" style="width:4%;height:4%;    position: absolute;left: 26.5%;top: 25%" onclick="showdf(3,'3#蝶阀开关','蝶阀3模式','3号蝶阀')">
	
	</div>
	<div style="width:3%;height:4%; font-size:5px; position: absolute;left: 24.5%;top: 26%" >
	 <img class="dfyx3" style="width:35px" src="" />
	</div>
	<div style="width:7%;height:12%;font-size:5px;   position: absolute;left: 31%;top: 23%" >
	热进:<span id="rj3"></span><br/>
	热出:<span id="rc3"></span><br/>
	冷进:<span id="lj3"></span><br/>
	冷出:<span id="lc3"></span>
	</div>
	
	<div id="d4"  onmouseover = "over('d4')" onmouseout="out('d4')" style="width:4%;height:4%;    position: absolute;left: 38.5%;top: 25%;" onclick="showdf(4,'4#蝶阀开关','蝶阀4模式','4号蝶阀')">
	
	</div>
	<div style="width:3%;height:4%; font-size:5px; position: absolute;left: 36.5%;top: 26%" >
	 <img class="dfyx4" style="width:35px" src="" />
	</div>
	<div style="width:7%;height:12%; font-size:5px;  position: absolute;left: 43%;top: 23%" >
	热进:<span id="rj4"></span><br/>
	热出:<span id="rc4"></span><br/>
	冷进:<span id="lj4"></span><br/>
	冷出:<span id="lc4"></span>
	</div>
	<!--主机  -->
	<div style="width:2%;height:3%; font-size:5px; position: absolute;left: 8.3%;top: 42%" >
	 <img class="zjyx1" style="width:30px" src="" />
	</div>
	<div style="width:7%;height:12%;  position: absolute;left: 12%;top: 37%" >
	<span id=""> <img class="zjyc11" style="width:25px" src="" /></span><br/>
	<span id=""> <img class="zjyc12" style="width:25px" src="" /></span><br/>
    <span id=""> <img class="zjyc13" style="width:25px" src="" /></span><br/>
	<span id=""> <img class="zjyc14" style="width:25px" src="" /></span><br/>
	<span id=""> <img class="zjyc15" style="width:25px" src="" /></span><br/>
	<span id=""> <img class="zjyc16" style="width:25px" src="" /></span><br/>
	</div>
	<!--主机  -->
	<div style="width:2%;height:3%; font-size:5px;  position: absolute;left: 20.2%;top: 42%" >
	 <img class="zjyx2" style="width:30px" src="" />
	</div>
	<div style="width:7%;height:12%;  position: absolute;left: 23.5%;top: 37%" >
	<span id=""> <img class="zjyc21" style="width:25px" src="" /></span><br/>
	<span id=""> <img class="zjyc22" style="width:25px" src="" /></span><br/>
    <span id=""> <img class="zjyc23" style="width:25px" src="" /></span><br/>
	<span id=""> <img class="zjyc24" style="width:25px" src="" /></span><br/>
	<span id=""> <img class="zjyc25" style="width:25px" src="" /></span><br/>
	<span id=""> <img class="zjyc26" style="width:25px" src="" /></span><br/>
	</div>
	<!--主机  -->
	<div style="width:2%;height:3%; font-size:5px;  position: absolute;left: 32.5%;top: 42%" >
	 <img class="zjyx3" style="width:30px" src="" />
	</div>
	<div style="width:7%;height:12%;  position: absolute;left: 35.5%;top: 37%" >
	<span id=""> <img class="zjyc31" style="width:25px" src="" /></span><br/>
	<span id=""> <img class="zjyc32" style="width:25px" src="" /></span><br/>
    <span id=""> <img class="zjyc33" style="width:25px" src="" /></span><br/>
	<span id=""> <img class="zjyc34" style="width:25px" src="" /></span><br/>
	<span id=""> <img class="zjyc35" style="width:25px" src="" /></span><br/>
	<span id=""> <img class="zjyc36" style="width:25px" src="" /></span><br/>
	</div>
	<!--主机  -->
	<div style="width:2%;height:3%; font-size:5px;  position: absolute;left: 44.5%;top: 42%" >
	 <img class="zjyx4" style="width:30px" src="" />
	</div>
	<div style="width:7%;height:12%;  position: absolute;left: 47.5%;top: 37%" >
	<span id=""> <img class="zjyc41" style="width:25px" src="" /></span><br/>
	<span id=""> <img class="zjyc42" style="width:25px" src="" /></span><br/>
    <span id=""> <img class="zjyc43" style="width:25px" src="" /></span><br/>
	<span id=""> <img class="zjyc44" style="width:25px" src="" /></span><br/>
	<span id=""> <img class="zjyc45" style="width:25px" src="" /></span><br/>
	<span id=""> <img class="zjyc46" style="width:25px" src="" /></span><br/>
	</div>
	<div id="z1"  onmouseover = "over('z1')" onmouseout="out('z1')" style="width:7%;height:9.5%;    position: absolute;left: 3.7%;top: 39%;" onclick="showzj(1,'主机1总运行指示','1#主机远程就地反馈','1#主机制冷制热反馈','1号主机关机指示')">
	
	</div>
	<div id="z2"   onmouseover = "over('z2')" onmouseout="out('z2')" style="width:7%;height:9.5%;   position: absolute;left: 15.8%;top: 39%;" onclick="showzj(2,'主机2总运行指示','2#主机远程就地反馈','2#主机制冷制热反馈','2号主机关机指示')">
	
	</div>
	
	<div id="z3"  onmouseover = "over('z3')" onmouseout="out('z3')"  style="width:7%;height:9.5%;    position: absolute;left: 28%;top: 39%;" onclick="showzj(3,'主机3总运行指示','3#主机远程就地反馈','3#主机制冷制热反馈','3号主机关机指示')">
	
	</div>
	
	<div  id="z4"   onmouseover = "over('z4')" onmouseout="out('z4')" style="width:7%;height:9.5%;  position: absolute;left: 40%;top: 39%;" onclick="showzj(4,'主机4总运行指示','4#主机远程就地反馈','4#主机制冷制热反馈','4号主机关机指示')">
	
	</div>
	
	<!--深水泵  -->
	
	<div id="ss1"   onmouseover = "over('ss1')"  onmouseout="out('ss1')" style="width:3%;height:4%;  position: absolute;left: 4.5%;top: 72%;" onclick="showssb(1,'1#深水泵运行','1#深水泵故障','深井泵1模式','1#深水泵手自动')">
	<img class="ssbyx1" style="width:100%;height: 100%" />
	</div>
	
	<div id="ss2"   onmouseover = "over('ss2')" onmouseout="out('ss2')" style="width:3%;height:4%;   position: absolute;left: 16.7%;top: 72%;" onclick="showssb(2,'2#深水泵运行','2#深水泵故障','深井泵2模式','2#深水泵手自动')">
	<img class="ssbyx2" style="width:100%;height: 100%" />
	</div>

	<div id="ss3"   onmouseover = "over('ss3')" onmouseout="out('ss3')" style="width:3%;height:4%;    position: absolute;left: 28.9%;top: 72%;" onclick="showssb(3,'3#深水泵运行','3#深水泵故障','深井泵3模式','3#深水泵手自动')">
		<img class="ssbyx3" style="width:100%;height: 100%" />
	</div>
</div>
</body>

<script type="text/javascript">
$("#hrz").change(function(){
	$("#title").html($("#hrz").val()+"运行界面")
		
	});
	
function over(x){
	 /* border: 1px; border-color:#F00; border-style:solid; */
	 document.getElementById(x).style.border="1px solid red";

}
function out(x){
	 document.getElementById(x).style.border="0px solid red";
	
}
</script>
</html>