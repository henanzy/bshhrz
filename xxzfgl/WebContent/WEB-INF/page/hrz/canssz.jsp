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

html,body{
	height:100%;
}

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
	
	text-align: center;
}
</style>

</head>
<script type="text/javascript">

 $(function(){
	 var hrzname = $("#hrzname").val();
	$.ajax({
		url :"showCsxs.action",
		type : "post",
		dataType : "json",
		data : {
			"hrzname":hrzname,
		},
		success : function(data) {
			
			var d = eval(data).map;
			var zlgswd=d.冷水供水温度设定值;
			var zrgswd=d.制热温度设定;
			var ghsyc=d.供回水压差设定;
			var hstjylsx=d.回水压力过低上限;
			var hstjylxx=d.回水压力过低下限;
			var xhbplxx=d.循泵最低频率;
			var ywlcsx=d.液位量程上限;
			var ywlcxx=d.液位量程下限;
			var gsyllcsx=d.供水压力量程上限;
			var gsyllcxx=d.供水压力量程下限;
			var ghyclcsx=d.供回压差量程上限;
			var ghyclcxx=d.供回压差量程下限;
			var zjz1wc1=d.主机1制冷温差.value;
			var zjzrwc1=d.主机1制热温差.value;
			var zjzlwc2=d.主机2制冷温差.value;
			var zjzrwc2=d.主机2制热温差.value;
			var zjzlwc3=d.主机3制冷温差.value;
			var zjzrwc3=d.主机3制热温差.value;
			var zjzlwc4=d.主机4制冷温差.value;
			var zjzrwc4=d.主机4制热温差.value;
			
			var ghsycsx=d.供回水压差上限;
			var ghsycxx=d.供回水压差下限;
			var gswdxx=d.供水温度下限;
			var gswdsx=d.供水温度上限;
			var hswdxx=d.回水温度下限;
			var hswdsx=d.回水温度上限;
			var gsylsx=d.供水压力上限;
			var gsylxx=d.供水压力下限;
			var hsylsx=d.回水压力上限;
			var hsylxx=d.回水压力下限;
			
			var ywsx=d.液位上限;
			var ywxx=d.液位下限;
			var xdysx=d.项电压上限;
			var xdyxx=d.项电压下限;
			var dlsx=d.电流上限;
			
			
			 $("#zlgswd").val(zlgswd);
			 $("#zrgswd").val(zrgswd);
			 $("#ghsyc").val(ghsyc);
			 $("#hstjylsx").val(hstjylsx);
			 $("#hstjylxx").val(hstjylxx);
			 $("#xhbplxx").val(xhbplxx);
			 $("#ywlcsx").val(ywlcsx);
			 $("#ywlcxx").val(ywlcxx);
			 $("#gsyllcsx").val(gsyllcsx);
			 $("#gsyllcxx").val(gsyllcxx);
			 $("#ghyclcsx").val(ghyclcsx);
			 $("#ghyclcxx").val(ghyclcxx);
			 
			 $("#zjzrwc1").val(zjzrwc1);
			 $("#zjzlwc1").val(zjz1wc1);
			 $("#zjzrwc2").val(zjzrwc2);
			 $("#zjzlwc2").val(zjzlwc2);
			 $("#zjzrwc3").val(zjzrwc3);
			 $("#zjzlwc3").val(zjzlwc3);
			 $("#zjzrwc4").val(zjzrwc4);
			 $("#zjzlwc4").val(zjzlwc4);
			 
			 $("#ghsycsx").val(ghsycsx);
			 $("#ghsycxx").val(ghsycxx);
			 $("#gswdxx").val(gswdxx);
			 $("#gswdsx").val(gswdsx);
			 $("#hswdxx").val(hswdxx);
			 $("#hswdsx").val(hswdsx);
			 $("#gsylsx").val(gsylsx);
			 $("#gsylxx").val(gsylxx);
			 $("#hsylsx").val(hsylsx);
			 $("#hsylxx").val(hsylxx);
			 $("#ywsx").val(ywsx);
			 $("#ywxx").val(ywxx);
			 $("#dysx").val(xdysx);
			 $("#dyxx").val(xdyxx);
			 $("#dlsx").val(dlsx);
			 
		}
     });	
	/*  },5000); */
}); 


function cssz(){
	
	 var hrzname = $("#hrzname").val();
		$.ajax({
			url :"showCsxs.action",
			type : "post",
			dataType : "json",
			data : {
				"hrzname":hrzname,
			},
			success : function(data) {
			
				var d = eval(data).map;
				var zlgswd=d.冷水供水温度设定值;
				var zrgswd=d.制热温度设定;
				var ghsyc=d.供回水压差设定;
				var hstjylsx=d.回水压力过低上限;
				var hstjylxx=d.回水压力过低下限;
				var xhbplxx=d.循泵最低频率;
				var ywlcsx=d.液位量程上限;
				var ywlcxx=d.液位量程下限;
				var gsyllcsx=d.供水压力量程上限;
				var gsyllcxx=d.供水压力量程下限;
				var ghyclcsx=d.供回压差量程上限;
				var ghyclcxx=d.供回压差量程下限;
				var zjzrwc1=d.主机1制冷温差.value;
				var zjzlwc1=d.主机1制热温差.value;
				var zjzrwc2=d.主机2制冷温差.value;
				var zjzlwc2=d.主机2制热温差.value;
				var zjzrwc3=d.主机3制冷温差.value;
				var zjzlwc3=d.主机3制热温差.value;
				var zjzrwc4=d.主机4制冷温差.value;
				var zjzlwc4=d.主机4制热温差.value;
				
				var ghsycsx=d.供回水压差上限;
				var ghsycxx=d.供回水压差下限;
				var gswdxx=d.供水温度下限;
				var gswdsx=d.供水温度上限;
				var hswdxx=d.回水温度下限;
				var hswdsx=d.回水温度上限;
				var gsylsx=d.供水压力上限;
				var gsylxx=d.供水压力下限;
				var hsylsx=d.回水压力上限;
				var hsylxx=d.回水压力下限;
				
				var ywsx=d.液位上限;
				var ywxx=d.液位下限;
				var xdysx=d.项电压上限;
				var xdyxx=d.项电压下限;
				var dlsx=d.电流上限;
				
				
				 $("#zlgswd").val(zlgswd);
				 $("#zrgswd").val(zrgswd);
				 $("#ghsyc").val(ghsyc);
				 $("#hstjylsx").val(hstjylsx);
				 $("#hstjylxx").val(hstjylxx);
				 $("#xhbplxx").val(xhbplxx);
				 $("#ywlcsx").val(ywlcsx);
				 $("#ywlcxx").val(ywlcxx);
				 $("#gsyllcsx").val(gsyllcsx);
				 $("#gsyllcxx").val(gsyllcxx);
				 $("#ghyclcsx").val(ghyclcsx);
				 $("#ghyclcxx").val(ghyclcxx);
				 
				 $("#zjzrwc1").val(zjzrwc1);
				 $("#zjzlwc1").val(zjzrwc1);
				 $("#zjzrwc2").val(zjzrwc2);
				 $("#zjzlwc2").val(zjzrwc2);
				 $("#zjzrwc3").val(zjzrwc3);
				 $("#zjzlwc3").val(zjzrwc3);
				 $("#zjzrwc4").val(zjzrwc4);
				 $("#zjzlwc4").val(zjzrwc4);
				 
				 $("#ghsycsx").val(ghsycsx);
				 $("#ghsycxx").val(ghsycxx);
				 $("#gswdxx").val(gswdxx);
				 $("#gswdsx").val(gswdsx);
				 $("#hswdxx").val(hswdxx);
				 $("#hswdsx").val(hswdsx);
				 $("#gsylsx").val(gsylsx);
				 $("#gsylxx").val(gsylxx);
				 $("#hsylsx").val(hsylsx);
				 $("#hsylxx").val(hsylxx);
				 $("#ywsx").val(ywsx);
				 $("#ywxx").val(ywxx);
				 $("#dysx").val(xdysx);
				 $("#dyxx").val(xdyxx);
				 $("#dlsx").val(dlsx);
				 
			}
	     });
	
	
}


</script>
<script type="text/javascript">
	 
	 function xgscss(name,id){
		
		  var val = $('#'+id).val();
		
			$.ajax({
				url : "<%=basePath%>Cssz/cssz.action",
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

	<div id="" class="clearfix" style="overflow-x: hidden;min-width:1600px;">
	
	   &nbsp;   &nbsp;   &nbsp;   <select id="hrzname" class="csinput" >
	    <option value="北京华誉.新乡商务大厦">新乡商务大厦</option>
	   </select> <input id="jk_search_btn" value="选择" onclick="cssz()" type="button"> 
	
		<p class="mws-report" href="#"
			style="font-size: 14px; border-color: #c5d52b; background: url(../images/core/mws-header-bg.png) repeat-x;">
			<span class="mws-report-icon mws-ic ic-building"></span> <span
				class="mws-report-content" style="margin-top: 10px; color: #C5D52B;">
				运行参数设置 </span>
		</p>

		<table>
			<thead>
				<tr>
					<th class="table-th-css">参数名称</th>
					<th class="table-th-css">设定值<span class="span-up"></span> <span
						class="span-down"></span></th>
						
					<th class="table-th-css">参数名称</th>
					<th class="table-th-css">设定值<span class="span-up"></span> <span
						class="span-down"></span></th>	
				</tr>
			</thead>
			<tbody>
				<tr>
					<th style=" text-align: center;"><span id="gs">制冷供水温度</span>（℃）<span
						class="span-up"></span> <span class="span-down"></span></th>
					<th class="table-th-css">
					<input class="csinput"  id="zlgswd"  width="120px"/>
					<span class="span-up"></span> <span class="span-down"></span>
					<input id="jk_search_btn"  type="submit" onclick="xgscss('冷水供水温度设定值','zlgswd')" value="修改" />
					</th>
					
					<th class="table-th-css">液位量程上限（m）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css">
					<input class="csinput" id="ywlcsx"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn"  type="submit" onclick="xgscss('液位量程上限','ywlcsx')"  value="修改" />
						</th>
				</tr>

				<tr>
					<th class="table-th-css">制热供水温度（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="zrgswd" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
					<input id="jk_search_btn"  type="submit"  onclick="xgscss('制热温度设定','zrgswd')"  value="修改" />
					</th>
					
					<th class="table-th-css">液位量程下限（m）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="ywlcxx" class="csinput"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
					<input id="jk_search_btn"  type="submit" onclick="xgscss('液位量程下限','ywlcxx')" value="修改" />
					</th>
				</tr>

				<tr>
					<th class="table-th-css">供回水压差（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input  class="csinput" id="ghsyc"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
					<input id="jk_search_btn"  type="submit" onclick="xgscss('供回水压差设定','ghsyc')" value="修改" />
					</th>
					
					<th class="table-th-css">供水压力量程上限（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input  class="csinput" id="gsyllcsx"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
					<input id="jk_search_btn"   type="submit" onclick="xgscss('供水压力量程上限','gsyllcsx')" value="修改" />
					</th>
				</tr>

				<tr>
					<th class="table-th-css">回水停机压力上限（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input   class="csinput" id="hstjylsx"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
					<input id="jk_search_btn"   type="submit" onclick="xgscss('回水压力过低上限','hstjylsx')" value="修改" />	
					</th>
					
					<th class="table-th-css">供水压力量程下限（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input  class="csinput" id="gsyllcxx"
						width="120px"><span  class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn"   type="submit" onclick="xgscss('供水压力量程下限','gsyllcxx')"  value="修改" />
					</th>
				</tr>

				<tr>
					<th class="table-th-css">回水停机压力下限（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input  class="csinput" id="hstjylxx"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn"  type="submit" onclick="xgscss('回水压力过低下限','hstjylxx')" value="修改" />
					</th>
					
					<th class="table-th-css">供回压差量程上限（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input  class="csinput" id="ghyclcsx"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn"   type="submit" onclick="xgscss('供回压差量程上限','ghyclcsx')" value="修改" />
					</th>
			
				</tr>

				<tr>
					<th class="table-th-css">循环泵频率下限（HZ）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input  class="csinput" id="xhbplxx"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn"  type="submit" onclick="xgscss('循泵最低频率','xhbplxx')"  value="修改" />
					</th>
					
					<th class="table-th-css">供回压差量程下限（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input  class="csinput" id="ghyclcxx"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn"  type="submit" onclick="xgscss('供回压差量程下限','ghyclcxx')" value="修改" />
					</th>
				</tr>
			</tbody>
		</table>



		<p class="mws-report" href="#"
			style="font-size: 14px; border-color: #c5d52b; background: url(../images/core/mws-header-bg.png) repeat-x;">
			<span class="mws-report-icon mws-ic ic-building"></span> <span
				class="mws-report-content" style="margin-top: 10px; color: #C5D52B;">
				主机参数设置 </span>
		</p>
		<table>
			<thead>
				<tr>
					<th class="table-th-css">主机温差</th>
					<th class="table-th-css">制热温差</th>
					<th class="table-th-css">制冷温差</th>
					
				</tr>
			</thead>
			<tbody>
				<tr>
					<th class="table-th-css">1#主机<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input  class="csinput" id="zjzrwc1"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn"  type="submit" onclick="xgscss('主机1制热温差','zjzrwc1')" value="修改" />
					</th>
				
					<th class="table-th-css"><input  class="csinput" id="zjzlwc1"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn"  type="submit" onclick="xgscss('主机1制冷温差','zjzlwc1')" value="修改" />
					</th>
				
				</tr>

				<tr>
					<th class="table-th-css">2#主机<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input  class="csinput" id="zjzrwc2"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn"  type="submit" onclick="xgscss('主机2制热温差','zjzrwc2')" value="修改" />
					</th>
				
					<th class="table-th-css"><input  class="csinput" id="zjzlwc2"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn"  type="submit" onclick="xgscss('主机2制冷温差','zjzlwc2')"  value="修改" />
					</th>
					
				</tr>

				<tr>
					<th class="table-th-css">3#主机<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input  class="csinput" id="zjzrwc3"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn"  type="submit" onclick="xgscss('主机3制热温差','zjzrwc3')" value="修改" />
					</th>
				
					<th class="table-th-css"><input  class="csinput" id="zjzlwc3"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn"  type="submit" onclick="xgscss('主机3制冷温差','zjzlwc3')"  value="修改" />
					</th>
					
				</tr>

				<tr>
					<th class="table-th-css">4#主机<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input  class="csinput" id="zjzrwc4"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn"  type="submit" onclick="xgscss('主机4制热温差','zjzrwc4')"  value="修改" />
					</th>
					
					<th class="table-th-css"><input  class="csinput" id="zjzlwc4"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn"  type="submit" onclick="xgscss('主机4制冷温差','zjzlwc4')"  value="修改" />
					</th>
				</tr>
			</tbody>
		</table>
		
		
	<p class="mws-report" href="#"
			style="font-size: 14px; border-color: #c5d52b; background: url(../images/core/mws-header-bg.png) repeat-x;">
			<span class="mws-report-icon mws-ic ic-building"></span> <span
				class="mws-report-content" style="margin-top: 10px; color: #C5D52B;">
				报警参数设置 </span>
		</p>

		<table>
			<thead>
				<tr>
					<th class="table-th-css">参数名称</th>
					<th class="table-th-css">上限值<span class="span-up"></span> <span
						class="span-down"></span></th>
						
					<th class="table-th-css">下限值<span class="span-up"></span> <span
						class="span-down"></span></th>	
					<th class="table-th-css">参数名称</th>
					<th class="table-th-css">上限值<span class="span-up"></span> <span
						class="span-down"></span></th>
						
					<th class="table-th-css">下限值<span class="span-up"></span> <span
						class="span-down"></span></th>		
				</tr>
			</thead>
			<tbody>
				<tr>
					<th style="width: 200px; text-align: center;">供回水压差（bar）<span
						class="span-up"></span> <span class="span-down"></span></th>
					<th class="table-th-css"><input class="csinput"  id="ghsycsx"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn" type="submit"onclick="xgscss('供回水压差上限','ghsycsx')" value="修改" />
					</th>
					<th class="table-th-css"><input class="csinput"  id="ghsycxx"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn" type="submit" onclick="xgscss('供回水压差下限','ghsycxx')" value="修改" />
					</th>
						
					
					<th style="width: 200px; text-align: center;">供水压力（bar）<span
						class="span-up"></span> <span class="span-down"></span></th>
					<th class="table-th-css"><input class="csinput" id="gsylsx"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn" type="submit" onclick="xgscss('供水压力上限','gsylsx')" value="修改" />
					</th>
					<th class="table-th-css"><input class="csinput" id="gsylxx"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn" type="submit" onclick="xgscss('供水压力下限','gsylxx')" value="修改" />
					</th>
					
					
					
				</tr>

				<tr>
					<th style="width: 200px; text-align: center;">供水温度（℃）<span
						class="span-up"></span> <span class="span-down"></span></th>
					<th class="table-th-css"><input class="csinput" id="gswdsx"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn" type="submit" onclick="xgscss('供水温度上限','gswdsx')" value="修改" />
					</th>
					<th class="table-th-css"><input class="csinput" id="gswdxx"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn" type="submit" onclick="xgscss('供水温度下限','gswdxx')" value="修改" />
					</th>
						
					
					
					<th style="width: 200px; text-align: center;">回水压力（bar）<span
						class="span-up"></span> <span class="span-down"></span></th>
				    <th class="table-th-css"><input class="csinput"  id="hsylsx"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn" type="submit" onclick="xgscss('回水压力上限','hsylsx')" value="修改"  />
					</th>
					<th class="table-th-css"><input class="csinput" id="hsylxx"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn"  onclick="xgscss('回水压力下限','hsylxx')" type="submit" value="修改" />
					</th>	

				</tr>

				<tr>
					<th style="width: 200px; text-align: center;">回水温度（℃）<span
						class="span-up"></span> <span class="span-down"></span></th>
					<th class="table-th-css"><input class="csinput" id="hswdsx"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn" type="submit" onclick="xgscss('回水温度上限','hswdsx')" value="修改" />
					</th>
					<th class="table-th-css"><input class="csinput" id="hswdxx"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn" type="submit" onclick="xgscss('回水温度下限','hswdxx')" value="修改" />
					</th>
					<th style="width: 200px; text-align: center;">电压（V）<span
						class="span-up"></span> <span class="span-down"></span></th>
					<th class="table-th-css"><input class="csinput" id="dysx"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn" type="submit" onclick="xgscss('项电压上限','dysx')" value="修改" />
					</th>
					<th class="table-th-css"><input class="csinput" id="dyxx"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn" type="submit" onclick="xgscss('项电压下限','dyxx')" value="修改" />
					</th>		

				</tr>

				<tr>
					<th style="width: 200px; text-align: center;">液位<span
						class="span-up"></span> <span class="span-down"></span></th>
					<th class="table-th-css"><input class="csinput" id="ywsx"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn" type="submit" onclick="xgscss('液位上限','ywsx')" value="修改" />
					</th>
					<th class="table-th-css"><input class="csinput" id="ywxx"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn" type="submit" onclick="xgscss('液位下限','ywxx')" value="修改" />
					</th>
					<th style="width: 200px; text-align: center;">电流（A）<span
						class="span-up"></span> <span class="span-down"></span></th>
					<th class="table-th-css"><input class="csinput" id="dlsx"
						width="120px"><span class="span-up"></span> <span
						class="span-down"></span>
						<input id="jk_search_btn" type="submit" onclick="xgscss('电流上限','dlsx')" value="修改" />
					</th>
					
				
				</tr>
			
			</tbody>
		</table>	
	</div>
</body>
</html>