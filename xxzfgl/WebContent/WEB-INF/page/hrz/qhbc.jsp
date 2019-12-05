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
html,body{
	height:100%
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
table thead tr {
	height: 40px;
	line-height: 40px;
}

table thead tr th {
	border-right: 1px dashed #ccc;
	text-align: center;
}

table tbody{
width:100%;
}

table tbody tr td{
	padding:4px;
	border-right: 1px dashed #ccc;
	width: 16%;
	text-align: center;
}

table tbody tr td:nth-of-type(2){
	border-right: 1px solid #7D9EC0;
}

.qhinp{
	text-align: center;
	border-radius: 5px;
	height: 24px;
}

.sjinp{
	text-align: center;
	border-radius: 5px;
	height: 20px;
}

input:focus{
	border:1px solid #4682B4;
}

</style>

</head>
<script type="text/javascript">

$(function(){	
 	 /* setInterval(function() {  */
 		 var hrzname = $("#hrzname").val();
	$.ajax({
		url :"sbkzsTq.action",
		type : "post",
		dataType : "json",
		data : {
			"hrzname":hrzname,
		},
		success : function(data) {
		
			var d = eval(data).map;
			var bcwd1=d.d补偿温度1;
			var bcwd2=d.d补偿温度2;
			var bcwd3=d.d补偿温度3;
			var bcwd4=d.d补偿温度4;
			var sj1=d.d时1;
			var sj2=d.d时2;
			var sj3=d.d时3;
			var sj4=d.d时4;
			var sf1=d.d分1;
			var sf2=d.d分2;
			var sf3=d.d分3;
			var sf4=d.d分4;
			var swwd1=d.d室外温度1;
			var swwd2=d.d室外温度2;
			var swwd3=d.d室外温度3;
			var swwd4=d.d室外温度4;
			var swwd5=d.d室外温度5;
			var swwd6=d.d室外温度6;
			var swwd7=d.d室外温度7;
			var swwd8=d.d室外温度8;
			var gswd1=d.d供水温度1;
			var gswd2=d.d供水温度2;
			var gswd3=d.d供水温度3;
			var gswd4=d.d供水温度4;
			var gswd5=d.d供水温度5;
			var gswd6=d.d供水温度6;
			var gswd7=d.d供水温度7;
			var gswd8=d.d供水温度8;
		
			document.getElementById('bcwd1').value=bcwd1
			document.getElementById('bcwd2').value=bcwd2
			document.getElementById('bcwd3').value=bcwd3
			document.getElementById('bcwd4').value=bcwd4
			
			document.getElementById('sj1').value=sj1
			document.getElementById('sj2').value=sj2
			document.getElementById('sj3').value=sj3
			document.getElementById('sj4').value=sj4
			document.getElementById('sf1').value=sf1
			document.getElementById('sf2').value=sf2
			document.getElementById('sf3').value=sf3
			document.getElementById('sf4').value=sf4
			
			document.getElementById('swwd1').value=swwd1
			document.getElementById('swwd2').value=swwd2
			document.getElementById('swwd3').value=swwd3
			document.getElementById('swwd4').value=swwd4
			document.getElementById('swwd5').value=swwd5
			document.getElementById('swwd6').value=swwd6
			document.getElementById('swwd7').value=swwd7
			document.getElementById('swwd8').value=swwd8
			
			document.getElementById('gswd1').value=gswd1
			document.getElementById('gswd2').value=gswd2
			document.getElementById('gswd3').value=gswd3
			document.getElementById('gswd4').value=gswd4
			document.getElementById('gswd5').value=gswd5
			document.getElementById('gswd6').value=gswd6
			document.getElementById('gswd7').value=gswd7
			document.getElementById('gswd8').value=gswd8
			var flag=d.d气候补偿;
			if(flag=="1"){
				 $("#img").attr("src","../images/switch/open.png");
				
			}else if(flag=="0"){
				$("#img").attr("src","../images/switch/close.png");
			
			}
		}
     });	
	 /* },5000);  */
});

function xs(){
	
	 var hrzname = $("#hrzname").val();
		$.ajax({
			url :"sbkzsTq.action",
			type : "post",
			dataType : "json",
			data : {
				"hrzname":hrzname,
			},
			success : function(data) {
			
				var d = eval(data).map;
				var bcwd1=d.d补偿温度1;
				var bcwd2=d.d补偿温度2;
				var bcwd3=d.d补偿温度3;
				var bcwd4=d.d补偿温度4;
				var sj1=d.d时1;
				var sj2=d.d时2;
				var sj3=d.d时3;
				var sj4=d.d时4;
				var sf1=d.d分1;
				var sf2=d.d分2;
				var sf3=d.d分3;
				var sf4=d.d分4;
				var swwd1=d.d室外温度1;
				var swwd2=d.d室外温度2;
				var swwd3=d.d室外温度3;
				var swwd4=d.d室外温度4;
				var swwd5=d.d室外温度5;
				var swwd6=d.d室外温度6;
				var swwd7=d.d室外温度7;
				var swwd8=d.d室外温度8;
				var gswd1=d.d供水温度1;
				var gswd2=d.d供水温度2;
				var gswd3=d.d供水温度3;
				var gswd4=d.d供水温度4;
				var gswd5=d.d供水温度5;
				var gswd6=d.d供水温度6;
				var gswd7=d.d供水温度7;
				var gswd8=d.d供水温度8;
			
				document.getElementById('bcwd1').value=bcwd1
				document.getElementById('bcwd2').value=bcwd2
				document.getElementById('bcwd3').value=bcwd3
				document.getElementById('bcwd4').value=bcwd4
				
				document.getElementById('sj1').value=sj1
				document.getElementById('sj2').value=sj2
				document.getElementById('sj3').value=sj3
				document.getElementById('sj4').value=sj4
				document.getElementById('sf1').value=sf1
				document.getElementById('sf2').value=sf2
				document.getElementById('sf3').value=sf3
				document.getElementById('sf4').value=sf4
				
				document.getElementById('swwd1').value=swwd1
				document.getElementById('swwd2').value=swwd2
				document.getElementById('swwd3').value=swwd3
				document.getElementById('swwd4').value=swwd4
				document.getElementById('swwd5').value=swwd5
				document.getElementById('swwd6').value=swwd6
				document.getElementById('swwd7').value=swwd7
				document.getElementById('swwd8').value=swwd8
				
				document.getElementById('gswd1').value=gswd1
				document.getElementById('gswd2').value=gswd2
				document.getElementById('gswd3').value=gswd3
				document.getElementById('gswd4').value=gswd4
				document.getElementById('gswd5').value=gswd5
				document.getElementById('gswd6').value=gswd6
				document.getElementById('gswd7').value=gswd7
				document.getElementById('gswd8').value=gswd8
				var flag=d.d气候补偿;
				if(flag=="1"){
					 $("#img").attr("src","../images/switch/open.png");
					
				}else if(flag=="0"){
					$("#img").attr("src","../images/switch/close.png");
				
				}
			}
	     });	
}
</script>
<script type="text/javascript">
layui.form.render();
	function cstj() {
		alert("参数修改成功！")
	}
	
	
	 function tqsz(name,id){
		 
		  var val = $("#"+id).val();
		
			$.ajax({
				url : "cssz.action",
				async : false,
				dataType : "json",
				data : {
					"name" : name,
					"id" : id,
					"val":val,
				},
				success : function(data) {
					
					var val = eval(data).map;
					var id = eval(data).id;
					$("#"+id).val(val);	
				
				}
		}) 
}
	
</script>
<body>

	<div id="" class="clearfix" style="overflow-x: hidden;min-width:1150px;">

 &nbsp;   &nbsp;   &nbsp;   <select id="hrzname" class="csinput" >
	    <option value="北京华誉.新乡商务大厦">新乡商务大厦</option>
	    </select>
	    <input id="jk_search_btn" value="选择" onclick="xs()" type="button"> 
		<p class="mws-report" 
			style="font-size: 14px; border-color: #c5d52b; background: url(../images/core/mws-header-bg.png) repeat-x;position:relative;">
			<span class="mws-report-icon mws-ic ic-building"></span> <span
				class="mws-report-content" style="margin-top: 10px; color: #C5D52B;">
				温度补偿 </span>
				
			<span style="diaplay:block;position:absolute;top:12px;left:130px;background-color:#fff;border-radius:4px;padding:4px;">
				气候补偿: <img class="switchimg" id="img" style="width:26px;" alt="" src="">
			</span>
		</p>
	     <form action="">
			<table border="1" cellspacing="0" cellpadding="0">
				<thead>
					<tr>
						<th colspan="2">
							气候补偿
						</th>
						<th colspan="2">
							时间补偿
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							室外温度
						</td>
						<td>
							供水温度
						</td>
						<td>
							时间段
						</td>
						<td>
							补偿温度
						</td>
					</tr>
					
					<!-- 内容 -->
					<tr>
						<td>
							<input class="qhinp" type="text" id="swwd1" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px;" type="button" onclick="tqsz('室外温度1','swwd1')"   id="qingd">设置</button>
							<!-- <input id="cxdy" class="csinput" width="50px">  <button class="layui-btn layui-btn-sm" style="width:45px;hight:45" type="button" onclick="xz(this)"   id="qingd">设置</button> -->	
						<input class="qhinp" id="swwd2" type="text" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('室外温度2','swwd2')"   id="qingd">设置</button>	
	
						</td>
						<td>
							<input class="qhinp" type="text" id="gswd1" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('供水温度1','gswd1')"   id="qingd">设置</button>
								<input class="qhinp" id="gswd2" type="text" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('供水温度2','gswd2')"   id="qingd">设置</button>	
						</td>
						<td>
							<input class="qhinp" id="sj1"  type="text"  value="" /> 时
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('时1','sj1')"   id="qingd">设置</button>
							 <input class="qhinp" id="sf1" type="text"  value="" />分
							 <button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('分1','sf1')"   id="qingd">设置</button>
						</td>
						<td>
							<input class="qhinp" id="bcwd1" type="text" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('补偿温度1','bcwd1')"   id="qingd">设置</button>	
						</td>
					</tr>
				<!-- 	<tr>
						<td>
							<input class="qhinp" id="swwd2" type="text" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('室外温度2','swwd2')"   id="qingd">设置</button>	
						</td>
						<td>
							<input class="qhinp" id="gswd2" type="text" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('供水温度2','gswd2')"   id="qingd">设置</button>	
						</td>
						<td>
							
						</td>
						<td>
							
						</td>
					</tr> -->
					<tr>
						<td>
							<input class="qhinp" type="text" id="swwd3" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('室外温度3','swwd3')"   id="qingd">设置</button>	
							<input class="qhinp" type="text" id="swwd4" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('室外温度4','swwd4')"   id="qingd">设置</button>
						</td>
						<td>
							<input class="qhinp" type="text" id="gswd3" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('供水温度3','gswd3')"   id="qingd">设置</button>	
							<input class="qhinp" type="text" id="gswd4" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('供水温度4','gswd4')"   id="qingd">设置</button>	
						</td>
						<td>
							<input class="qhinp" type="text" id="sj2" value="" /> 时
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('时2','sj2')"   id="qingd">设置</button>
							 <input class="qhinp" type="text" id="sf2" value="" /> 分
							 <button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('分2','sf2')"   id="qingd">设置</button>
						</td>
						<td>
							<input class="qhinp" type="text" id="bcwd2" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('补偿温度2','bcwd2')"   id="qingd">设置</button>	
						</td>
					</tr>
					<!-- <tr>
						<td>
							<input class="qhinp" type="text" id="swwd4" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('室外温度4','swwd4')"   id="qingd">设置</button>
						</td>
						<td>
							<input class="qhinp" type="text" id="gswd4" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('供水温度4','gswd4')"   id="qingd">设置</button>	
						</td>
						<td>
							
						</td>
						<td>
							
						</td>
					</tr> -->
					<tr>
						<td>
							<input class="qhinp" id="swwd5" type="text" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('室外温度5','swwd5')"   id="qingd">设置</button>	
						<input class="qhinp" id="swwd6" type="text" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('室外温度6','swwd6')"   id="qingd">设置</button>	
						</td>
						<td>
							<input class="qhinp" id="gswd5" type="text" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('供水温度5','gswd5')"   id="qingd">设置</button>
							<input class="qhinp" id="gswd6" type="text" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('供水温度6','gswd6')"   id="qingd">设置</button>	
						</td>
						<td>
							<input class="qhinp" id="sj3" type="text" value="" /> 时 
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('时3','sj3')"   id="qingd">设置</button>
							<input class="qhinp" id="sf3" type="text" value="" /> 分
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('分3','sf3')"   id="qingd">设置</button>
						</td>
						<td>
							<input class="qhinp" id="bcwd3" type="text" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('补偿温度3','bcwd3')"   id="qingd">设置</button>	
						</td>
					</tr>
					<!-- <tr>
						<td>
							<input class="qhinp" id="swwd6" type="text" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('室外温度6','swwd6')"   id="qingd">设置</button>	
						</td>
						<td>
							<input class="qhinp" id="gswd6" type="text" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('供水温度6','gswd6')"   id="qingd">设置</button>
						</td>
						<td>
							
						</td>
						<td>
							
						</td>
					</tr> -->
					<tr>
						<td>
							<input class="qhinp" type="text" id="swwd7" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('室外温度7','swwd7')"   id="qingd">设置</button>	
							<input class="qhinp" id="swwd8" type="text" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('室外温度8','swwd8')"   id="qingd">设置</button>	
						</td>
						<td>
							<input class="qhinp" type="text" id="gswd7" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('供水温度7','gswd7')"   id="qingd">设置</button>	
							<input class="qhinp" id="gswd8" type="text" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('供水温度8','gswd8')"   id="qingd">设置</button>	
						</td>
						<td>
							<input class="qhinp" type="text" id="sj4" value="" /> 时
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('时4','sj4')"   id="qingd">设置</button>
							 <input class="qhinp" type="text" id="sf4" value="" />分
							 <button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('分4','sf4')"   id="qingd">设置</button>
						</td>
						<td>
							<input class="qhinp" type="text" id="bcwd4" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('补偿温度4','bcwd4')"   id="qingd">设置</button>	
						</td>
					</tr>
				<!-- 	<tr>
						<td>
							<input class="qhinp" id="swwd8" type="text" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('室外温度8','swwd8')"   id="qingd">设置</button>	
						</td>
						<td>
							<input class="qhinp" id="gswd8" type="text" value="" />℃
							<button class="layui-btn layui-btn-xs" style="width:45px" type="button" onclick="tqsz('供水温度8','gswd8')"   id="qingd">设置</button>	
						</td>
						<td>
						</td>
						<td>
						</td>
					</tr> -->
				</tbody>
			</table>
	
		</form>
</div>

<script>
	
	var val
		$(".switchimg").click(function(){

			var src = $('#img').attr('src');
			var reg = RegExp(/close/);
			var flag=reg.test(src); // true
			if(flag==true){
				val=1;
			}else{
				val=0;
			}
				$.ajax({
				url : "qhbcxg.action",
				async : false,
				dataType : "json",
				data : {
					"val":val,
				},
				success : function(data) {
					
					var flag = eval(data).maps.vs;
					if(flag){
					 $("#img").attr("src","../images/switch/open.png");
					}else{
						 $("#img").attr("src","../images/switch/close.png");
					}	
				
				}
		}) 
	
		})
	

</script>

</body>
</html>