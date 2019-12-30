<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
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
<link rel="stylesheet" type="text/css"
	href="../js/layer/2.4/skin/layer.css" media="screen" />
<script type="text/javascript" src="../js/layer/2.4/layer.js"></script>
<script type="text/javascript" src="../js/layui/layui.js"></script>
<script type="text/javascript" src="../js/layui/layui.all.js"></script>
<link rel="stylesheet" type="text/css" href="../js/layui/css/layui.css"
	media="screen" />
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
.mws-report {
	width: 98% !important;
	min-width: 170px;
	margin: 8px 1%;
	height: 60px;
	float: left;
	cursor: pointer;
	display: block;
	text-decoration: none;
	color: #323232;
	margin-bottom: 0px;
}

.csinput {
	text-align: center;
	border-radius: 5px;
	height: 24px;
}

table {
	width:97%;
	padding:0px;
	margin: 0px auto;
	background-color: rgb(250, 250, 250);
	margin-bottom: 20px;
	border: 1px solid #ccc;
}

table thead {
width:100%;
	background-color: rgb(236, 236, 236);
	border-bottom: 1px dashed #ccc;
}

table thead tr {
	height: 40px;
	line-height: 40px;
}

table thead tr th {
	border-right: 1px dashed #ccc;
}

table tbody{
width:100%;
}

table tbody tr {
	height: 40px;
	line-height: 40px;
}

table tbody tr input {
	margin-top: 6px;
}

th {
	width: 16%;
	text-align: center;
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
</style>

</head>
<script type="text/javascript">

/* $(function(){	
 	 setInterval(function() { 
	$.ajax({
		url :"showCsxs.action",
		type : "post",
		dataType : "json",
		data : {
		},
		success : function(data) {
			debugger;
			var d = eval(data).map;
			var gswdsd=d.d供水温度设定;
			var ghsycsd=d.d供回水压差设定;	
			var ssbzipl=d.d循环泵最低频率;
			var ywlcsx=d.d液位量程上限;			
			var ywlcxx=d.d液位量程下限;
			var ghyllcsx=d.d供水压力量程上限;
			var ghyllcxx=d.d供水压力量程下限;
			
		}
     });	
	 },5000);
}); */
</script>
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
			var ssll=d.d瞬时流量;
			var ljrl=d.d累计热量;	
			var zdl=d.d总电量;
			var cxdy=d.dC项电压;			
			var caxdy=d.dCA项电压;
			var cxdl=d.dC项电流;
			var bsljll=d.d补水累计流量;
			var ghsyc=d.d供回水压差;
			var ssrl=d.d瞬时热量;
			var gswd=d.d供水温度;
			var axdy=d.dA项电压;
			var abxdy=d.dAB项电压;
			var axdl=d.dA项电流;
			var sxyw=d.d水箱液位;
			var xhbpl=d.d循环泵频率;
			var ljll=d.d累计流量;
			var hswd=d.d回水温度;
			var bxdy=d.dB项电压;
			var bcxdy=d.dBC项电压;
			var bxdl=d.dB项电流;
			var bsssll=d.d补水瞬时流量;
			var hsyl=d.d回水压力;
			var gsyl=d.d供水压力;
			var gl=d.d功率;
			var glys=d.d功率因数;
			document.getElementById('gl').value=gl
			document.getElementById('glys').value=glys
			document.getElementById('sxyw').value=sxyw
			document.getElementById('ssll').value=ssll
			document.getElementById('ljrl').value=ljrl
			document.getElementById('zdl').value=zdl
			document.getElementById('cxdy').value=cxdy
			document.getElementById('caxdy').value=caxdy
			document.getElementById('cxdl').value=cxdl
			document.getElementById('bsljll').value=bsljll
			document.getElementById('ghsyc').value=ghsyc
			document.getElementById('ssrl').value=ssrl
			document.getElementById('gswd').value=gswd
			document.getElementById('axdy').value=axdy
			document.getElementById('abxdy').value=abxdy
			document.getElementById('axdl').value=axdl
			document.getElementById('xhbpl').value=xhbpl
			document.getElementById('ljll').value=ljll
			document.getElementById('hswd').value=hswd
			document.getElementById('bxdy').value=bxdy
			document.getElementById('bcxdy').value=bcxdy
			document.getElementById('bxdl').value=bxdl
			document.getElementById('bsssll').value=bsssll
			document.getElementById('hsyl').value=hsyl
			document.getElementById('gsyl').value=gsyl
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
			document.getElementById('rj1').value=rjwd1
			document.getElementById('rc1').value=rcwd1
			document.getElementById('lj1').value=ljwd1
			document.getElementById('lc1').value=lcwd1
			document.getElementById('rj2').value=rjwd2
			document.getElementById('rc2').value=rcwd2
			document.getElementById('lj2').value=ljwd2
			document.getElementById('lc2').value=lcwd2
			document.getElementById('rj3').value=rjwd3
			document.getElementById('rc3').value=rcwd3
			document.getElementById('lj3').value=ljwd3
			document.getElementById('lc3').value=lcwd3
			document.getElementById('rj4').value=rjwd4
			document.getElementById('rc4').value=rcwd4
			document.getElementById('lj4').value=ljwd4
			document.getElementById('lc4').value=lcwd4
		}
    });	
	 },5000);
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
			var ssll=d.d瞬时流量;
			var ljrl=d.d累计热量;	
			var zdl=d.d总电量;
			var cxdy=d.dC项电压;			
			var caxdy=d.dCA项电压;
			var cxdl=d.dC项电流;
			var bsljll=d.d补水累计流量;
			var ghsyc=d.d供回水压差;
			var ssrl=d.d瞬时热量;
			var gswd=d.d供水温度;
			var axdy=d.dA项电压;
			var abxdy=d.dAB项电压;
			var axdl=d.dA项电流;
			var sxyw=d.d水箱液位;
			var xhbpl=d.d循环泵频率;
			var ljll=d.d累计流量;
			var hswd=d.d回水温度;
			var bxdy=d.dB项电压;
			var bcxdy=d.dBC项电压;
			var bxdl=d.dB项电流;
			var bsssll=d.d补水瞬时流量;
			var hsyl=d.d回水压力;
			var gsyl=d.d供水压力;
			var gl=d.d功率;
			var glys=d.d功率因数;
			document.getElementById('gl').value=gl
			document.getElementById('glys').value=glys
			document.getElementById('sxyw').value=sxyw
			document.getElementById('ssll').value=ssll
			document.getElementById('ljrl').value=ljrl
			document.getElementById('zdl').value=zdl
			document.getElementById('cxdy').value=cxdy
			document.getElementById('caxdy').value=caxdy
			document.getElementById('cxdl').value=cxdl
			document.getElementById('bsljll').value=bsljll
			document.getElementById('ghsyc').value=ghsyc
			document.getElementById('ssrl').value=ssrl
			document.getElementById('gswd').value=gswd
			document.getElementById('axdy').value=axdy
			document.getElementById('abxdy').value=abxdy
			document.getElementById('axdl').value=axdl
			document.getElementById('xhbpl').value=xhbpl
			document.getElementById('ljll').value=ljll
			document.getElementById('hswd').value=hswd
			document.getElementById('bxdy').value=bxdy
			document.getElementById('bcxdy').value=bcxdy
			document.getElementById('bxdl').value=bxdl
			document.getElementById('bsssll').value=bsssll
			document.getElementById('hsyl').value=hsyl
			document.getElementById('gsyl').value=gsyl
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
			document.getElementById('rj1').value=rjwd1
			document.getElementById('rc1').value=rcwd1
			document.getElementById('lj1').value=ljwd1
			document.getElementById('lc1').value=lcwd1
			document.getElementById('rj2').value=rjwd2
			document.getElementById('rc2').value=rcwd2
			document.getElementById('lj2').value=ljwd2
			document.getElementById('lc2').value=lcwd2
			document.getElementById('rj3').value=rjwd3
			document.getElementById('rc3').value=rcwd3
			document.getElementById('lj3').value=ljwd3
			document.getElementById('lc3').value=lcwd3
			document.getElementById('rj4').value=rjwd4
			document.getElementById('rc4').value=rcwd4
			document.getElementById('lj4').value=ljwd4
			document.getElementById('lc4').value=lcwd4
		}
    });	
});	
</script>
<script type="text/javascript">

function xs(){
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
			var ssll=d.d瞬时流量;
			var ljrl=d.d累计热量;	
			var zdl=d.d总电量;
			var cxdy=d.dC项电压;			
			var caxdy=d.dCA项电压;
			var cxdl=d.dC项电流;
			var bsljll=d.d补水累计流量;
			var ghsyc=d.d供回水压差;
			var ssrl=d.d瞬时热量;
			var gswd=d.d供水温度;
			var axdy=d.dA项电压;
			var abxdy=d.dAB项电压;
			var axdl=d.dA项电流;
			var sxyw=d.d水箱液位;
			var xhbpl=d.d循环泵频率;
			var ljll=d.d累计流量;
			var hswd=d.d回水温度;
			var bxdy=d.dB项电压;
			var bcxdy=d.dBC项电压;
			var bxdl=d.dB项电流;
			var bsssll=d.d补水瞬时流量;
			var hsyl=d.d回水压力;
			var gsyl=d.d供水压力;
			var gl=d.d功率;
			var glys=d.d功率因数;
			document.getElementById('gl').value=gl
			document.getElementById('glys').value=glys
			document.getElementById('sxyw').value=sxyw
			document.getElementById('ssll').value=ssll
			document.getElementById('ljrl').value=ljrl
			document.getElementById('zdl').value=zdl
			document.getElementById('cxdy').value=cxdy
			document.getElementById('caxdy').value=caxdy
			document.getElementById('cxdl').value=cxdl
			document.getElementById('bsljll').value=bsljll
			document.getElementById('ghsyc').value=ghsyc
			document.getElementById('ssrl').value=ssrl
			document.getElementById('gswd').value=gswd
			document.getElementById('axdy').value=axdy
			document.getElementById('abxdy').value=abxdy
			document.getElementById('axdl').value=axdl
			document.getElementById('xhbpl').value=xhbpl
			document.getElementById('ljll').value=ljll
			document.getElementById('hswd').value=hswd
			document.getElementById('bxdy').value=bxdy
			document.getElementById('bcxdy').value=bcxdy
			document.getElementById('bxdl').value=bxdl
			document.getElementById('bsssll').value=bsssll
			document.getElementById('hsyl').value=hsyl
			document.getElementById('gsyl').value=gsyl
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
			document.getElementById('rj1').value=rjwd1
			document.getElementById('rc1').value=rcwd1
			document.getElementById('lj1').value=ljwd1
			document.getElementById('lc1').value=lcwd1
			document.getElementById('rj2').value=rjwd2
			document.getElementById('rc2').value=rcwd2
			document.getElementById('lj2').value=ljwd2
			document.getElementById('lc2').value=lcwd2
			document.getElementById('rj3').value=rjwd3
			document.getElementById('rc3').value=rcwd3
			document.getElementById('lj3').value=ljwd3
			document.getElementById('lc3').value=lcwd3
			document.getElementById('rj4').value=rjwd4
			document.getElementById('rc4').value=rcwd4
			document.getElementById('lj4').value=ljwd4
			document.getElementById('lc4').value=lcwd4
		}
    });	
}
</script>
<!-- <script type="text/javascript">
	function cstj() {
		alert("参数修改成功！")
	}
</script> -->
<body>

	<div id="" class="clearfix" style="overflow-x: hidden;min-width:1150px;height:800px;">
 &nbsp;   &nbsp;   &nbsp;   <select id="hrzname" class="csinput" >
	    <option value="北京华誉.新乡商务大厦">新乡商务大厦</option>
	   </select> <input id="jk_search_btn" value="选择" onclick="xs()" type="button"> 

		<p class="mws-report" href="#"
			style="font-size: 14px; border-color: #c5d52b; background: url(../images/core/mws-header-bg.png) repeat-x;">
			<span class="mws-report-icon mws-ic ic-building"></span> <span
				class="mws-report-content" style="margin-top: 10px; color: #C5D52B;">
				1#机组运行参数</span>
		</p>

		<table>
			<thead>
				<tr>
					<th class="table-th-css">参数名称</th>
					<th class="table-th-css">参数值<span class="span-up"></span> <span
						class="span-down"></span></th>
						
					<th class="table-th-css">参数名称</th>
					<th class="table-th-css">参数值<span class="span-up"></span> <span
						class="span-down"></span></th>	
					
					<th class="table-th-css">参数名称</th>
					<th class="table-th-css">参数值<span class="span-up"></span> <span
						class="span-down"></span></th>
			

				</tr>
			</thead>
			<tbody>
				<tr>
					<th style="width: 200px; text-align: center;">一次供水温度(℃)<span
						class="span-up"></span> <span class="span-down"></span></th>
					<th class="table-th-css"><input id="ycgswd" class="csinput" 
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
				
					
					<th class="table-th-css">一次瞬时流量（m³/h）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="bsbplfk" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
				
							
			
					<th class="table-th-css">循环泵频率反馈(Hz)<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="axdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
				</tr>

				<tr>
				<th class="table-th-css">一次回水温度（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="ssrl" class="csinput" 
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
					
					
					
					  <th class="table-th-css">一次累计流量（m³）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="bsssll" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>				
				
					
							 <th class="table-th-css">调节阀阀位反馈（％）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="bxdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
							
				</tr>

				<tr>
				<th class="table-th-css">二次供水温度（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="ljll" class="csinput" 
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
				
						
						
					<th class="table-th-css">二次瞬时流量（m³/h）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="gsyl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
						
				   	<th class="table-th-css">1#循环泵运行时间（h）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="cxdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
				</tr>

				<tr>
					<th class="table-th-css">二次回水温度（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="ljrl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					
				 		<th class="table-th-css">二次累计流量<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="hsyl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>	
				 
							<th class="table-th-css">2#循环泵运行时间（h）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="axdy" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
 					
				</tr>

				<tr>
				
				<th class="table-th-css">一次供水压力（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="gswd" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
				
							<th class="table-th-css">二次供水压力<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="sxyw" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
					<th class="table-th-css">1#补水泵运行时间（h）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="bxdy" class="csinput" 
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>	
				</tr>
				
				<tr>
					
					 <th class="table-th-css">一次回水压力（bar）<span class="span-up"></span>
					<span class="span-down"></span></th>
					<th class="table-th-css"><input id="hswd" class="csinput" 
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
			
						
						<th class="table-th-css">二次回水压力（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="xhbpl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
			
						
						<th class="table-th-css">2#补水泵运行时间（h）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="cxdy" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
			</tr>
				<tr>
				
							<th class="table-th-css">二次供回水压差（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="zdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
					
						
				
						<th class="table-th-css">循环泵频率反馈（Hz）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="zdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
				</tr>
				
			</tbody>
		</table>



		<p class="mws-report" href="#"
			style="font-size: 14px; border-color: #c5d52b; background: url(../images/core/mws-header-bg.png) repeat-x;">
			<span class="mws-report-icon mws-ic ic-building"></span> <span
				class="mws-report-content" style="margin-top: 10px; color: #C5D52B;">
				热源部分运行参数 </span>
		</p>
		<table>
				<thead>
				<tr>
					<th class="table-th-css">参数名称</th>
					<th class="table-th-css">参数值<span class="span-up"></span> <span
						class="span-down"></span></th>
						
					<th class="table-th-css">参数名称</th>
					<th class="table-th-css">参数值<span class="span-up"></span> <span
						class="span-down"></span></th>	
					
					<th class="table-th-css">参数名称</th>
					<th class="table-th-css">参数值<span class="span-up"></span> <span
						class="span-down"></span></th>
						
				</tr>
			</thead>
			<tbody>
				<tr>
					<th style="width: 200px; text-align: center;">集水器温度（℃）<span
						class="span-up"></span> <span class="span-down"></span></th>
					<th class="table-th-css"><input id="ycgswd" class="csinput" 
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
				
					
					<th class="table-th-css">1#热源井液位（m）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="bsbplfk" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
				
							
			
					<th class="table-th-css">3#热井累计流量(m³)<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="axdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
				</tr>

				<tr>
				<th class="table-th-css">分水器温度（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="ssrl" class="csinput" 
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
					
					
					
					  <th class="table-th-css">2#热源井液位（m）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="bsssll" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>				
				
					
							 <th class="table-th-css">4#热井瞬时流量（m³/h）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="bxdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
							
				</tr>

				<tr>
				<th class="table-th-css">室外温度（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="ljll" class="csinput" 
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
						
					<th class="table-th-css">3#热源井液位（m）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="gsyl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
						
				   	<th class="table-th-css">4#热井累计流量（m³）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="cxdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
				</tr>

				<tr>
					<th class="table-th-css">配电室温度（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="ljrl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
					
				 		<th class="table-th-css">4#热源井液位（m）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="hsyl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>	
				 
							<th class="table-th-css">1#除污器瞬时流量（m³/h）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="axdy" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
 					
				</tr>

				<tr>
				
				<th class="table-th-css">集水器压力（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="gswd" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
				
							<th class="table-th-css">水箱液位（m）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="sxyw" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
					<th class="table-th-css">1#除污器累计流量(m³)<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="bxdy" class="csinput" 
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>	
				</tr>
				
				<tr>
					
					 <th class="table-th-css">分水器压力（bar）<span class="span-up"></span>
					<span class="span-down"></span></th>
					<th class="table-th-css"><input id="hswd" class="csinput" 
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
			
						
						<th class="table-th-css">1#热井瞬时流量（m³/h）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="xhbpl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
			
						
						<th class="table-th-css">2#除污器瞬时流量（m³/h）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="cxdy" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
			</tr>
				<tr>
				
							<th class="table-th-css">1#除污器前压力（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="zdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
					
						
				
						<th class="table-th-css">1#热井累计流量（m³）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="zdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
						<th class="table-th-css">2#除污器瞬时流量（m³/h）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="zdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
				</tr>
				
					<tr>
				
							<th class="table-th-css">1#除污器后压力（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="zdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
					
						
				
						<th class="table-th-css">2#热井瞬时流量（m³/h）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="zdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
						<th class="table-th-css">1#机组补水瞬时流量（m³/h）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="zdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
				</tr>
					<tr>
				
							<th class="table-th-css">2#除污器前压力（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="zdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
					
						
				
						<th class="table-th-css">2#热井累计流量（m³）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="zdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
						<th class="table-th-css">1#机组补水累计流量（m³）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="zdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
				</tr>
				
				<tr>
				
							<th class="table-th-css">2#除污器后压力（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="zdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
					
						
				
						<th class="table-th-css">3#热井瞬时流量（m³/h）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="zdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
						<th class="table-th-css">2#机组补水补水流量（m³/h）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="zdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
				</tr>
				<tr>
				
							<th class="table-th-css">1#除污器前后压力差（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="zdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
					
						
				
						<th class="table-th-css">热源井总瞬时流量（m³/h）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="zdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
						<th class="table-th-css">2#机组补水累计流量（m³）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="zdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
				</tr>
				<tr>
				
							<th class="table-th-css">2#除污器前后压力差（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="zdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
					
						
				
						<th class="table-th-css">热源井总累计流量（m³）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="zdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
						<th class="table-th-css">1#水泵流量（A）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="zdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
				</tr>
				<tr>
				
							<th class="table-th-css">3#井泵频率反馈（Hz）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="zdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
					
						
				
						<th class="table-th-css">2井泵电流（A）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="zdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
						<th class="table-th-css">分水器压差（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="zdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
				</tr>
			</tbody>
		</table>
			<p class="mws-report" href="#"
			style="font-size: 14px; border-color: #c5d52b; background: url(../images/core/mws-header-bg.png) repeat-x;">
			<span class="mws-report-icon mws-ic ic-building"></span> <span
				class="mws-report-content" style="margin-top: 10px; color: #C5D52B;">
				供电部分运行参数 </span>
		</p>
		<table>
				<thead>
				<tr>
					<th class="table-th-css">参数名称</th>
					<th class="table-th-css">参数值<span class="span-up"></span> <span
						class="span-down"></span></th>
						
					<th class="table-th-css">参数名称</th>
					<th class="table-th-css">参数值<span class="span-up"></span> <span
						class="span-down"></span></th>	
					
					<th class="table-th-css">参数名称</th>
					<th class="table-th-css">参数值<span class="span-up"></span> <span
						class="span-down"></span></th>
						
				</tr>
			</thead>
			<tbody>
				<tr>
					<th style="width: 200px; text-align: center;">总电量（KWH）<span
						class="span-up"></span> <span class="span-down"></span></th>
					<th class="table-th-css"><input id="ycgswd" class="csinput" 
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
				
					
					<th class="table-th-css">频率（Hz）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="bsbplfk" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
				
							
			
					<th class="table-th-css">功率因数<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="axdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
				</tr>

				<tr>
				<th class="table-th-css">A项线电压（V）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="ssrl" class="csinput" 
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
					
					
					
					  <th class="table-th-css">A相电流（A）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="bsssll" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>				
				
					
							 <th class="table-th-css">AB相电压（V）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="bxdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
							
				</tr>

				<tr>
				<th class="table-th-css">B项线电压（V）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="ssrl" class="csinput" 
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
					
					
					
					  <th class="table-th-css">B相电流（A）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="bsssll" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>				
				
					
							 <th class="table-th-css">BC相电压（V）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="bxdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
							
				</tr>

				<tr>
					<th class="table-th-css">C项线电压（V）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="ssrl" class="csinput" 
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
						
					
					
					
					  <th class="table-th-css">C相电流（A）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="bsssll" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>				
				
					
							 <th class="table-th-css">AC相电压（V）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="bxdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
							
				</tr>

				<tr>
				
				<th class="table-th-css">有功功率（KW）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="gswd" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
				
							<th class="table-th-css">无功功率（KW）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="bxdl" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span></th>
				</tr>
				
				
			</tbody>
		</table>
	</div>
</body>
</html>