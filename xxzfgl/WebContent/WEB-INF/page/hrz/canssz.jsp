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
</style>

</head>

<script type="text/javascript">
	
</script>
<body>

	<div id="" class="clearfix" style="overflow-x: hidden;min-width:1650px;height:1100px;">


		

	



		<p class="mws-report" href="#"
			style="font-size: 14px; border-color: #c5d52b; background: url(../images/core/mws-header-bg.png) repeat-x;">
			<span class="mws-report-icon mws-ic ic-building"></span> <span
				class="mws-report-content" style="margin-top: 10px; color: #C5D52B;">
				运行参数设置  &nbsp;</span>
		</p>
		<table>
			<thead>
				<tr>
					<th class="table-th-css">参数名称</th>
					<th class="table-th-css">数值</th>
					<th class="table-th-css">参数名称</th>
					<th class="table-th-css">数值</th>
					<th class="table-th-css">参数名称</th>
					<th class="table-th-css">数值</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th class="table-th-css">循环泵倒泵时间（h）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input class="csinput" id="echswd"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('二次回水温度设定值','echswd')"/><span class="span-up"></span> <span
						class="span-down"></span></th>
					
					<th class="table-th-css">舒适温度设定（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input  class="csinput" id="kqtjfsj"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('开启调节阀时间','kqtjfsj')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					
					<th class="table-th-css">二次压力量程上限（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="0.70" class="csinput" id="xyfkqsx"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改"  onclick="szcs('泄压压力上限','xyfkqsx')"/><span class="span-up"></span> <span
						class="span-down"></span></th>
					

				</tr>

				<tr>
					<th class="table-th-css">补水泵倒泵时间（h）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="0.50" class="csinput" id="ecgsyl"
						width="120px"><input type="button"  onclick="szcs('二次供水压力设定值','ecgsyl')"
						 class="mws-button black" value="修改" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">二次供压过高（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="18" class="csinput" id="gbtjfsj"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('关闭调节阀时间','gbtjfsj')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">二次压力量程下限（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input value="0.45" class="csinput" id="xyfgbxx"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('泄压压力下限','xyfgbxx')"/><span class="span-up"></span> <span
						class="span-down"></span></th>

				</tr>

				<tr>
					<th class="table-th-css">自动温度设定（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input  class="csinput" id="echsyl"
						width="120px"><input type="button"  
						 class="mws-button black" value="修改" onclick="szcs('二次回水压力设定值','echsyl')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">二次回压过低（bar）<span class="span-up"></span> 
						<span class="span-down"></span></th>
					<th class="table-th-css"><input  class="csinput" id="bbgpqdpl"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('启动工频补水泵频率','bbgpqdpl')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">温度量程上限（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改"  /><span class="span-up"></span> <span
						class="span-down"></span></th>

				</tr>

				<tr>
					<th class="table-th-css">手动开度设定（%）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="echsbssx" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('二次回水补水压力上限','echsbssx')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">二次供温度过高（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="bbgptzpl" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('停止工频补水泵频率','bbgptzpl')"/><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">温度量程下限（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="sxzdywxz" class="csinput"
						width="120px"><input type="button"  onclick="szcs('液位下下限','sxzdywxz')"
						 class="mws-button black" value="修改" /><span class="span-up"></span> <span
						class="span-down"></span></th>

				</tr>

				<tr>
					<th class="table-th-css">循环泵压差设定（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="echsbsxx" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('二次回水补水压力下限','echsbsxx')"/><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">二次供温度过低（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="qdgpbsbsj" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('启动工频补水泵时间','qdgpbsbsj')"/><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">时段设定1（h）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="echstjyl" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改"  onclick="szcs('二次回水停机压力','echstjyl')"/><span class="span-up"></span> <span
						class="span-down"></span></th>

				</tr>

				<tr>
					<th class="table-th-css">循环泵频率设定（Hz）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="sfkqsx" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">一次回温度过高（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="tzgpbsbsj" class="csinput"
						width="120px"><input type="button" onclick="szcs('停止工频补水泵时间','tzgpbsbsj')"
						 class="mws-button black" value="修改" /><span class="span-up"></span> <span
						class="span-down"></span></th>
						
					<th class="table-th-css">时段设定2（h）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="tzgpbsbsj" class="csinput"
						width="120px"><input type="button" onclick="szcs('停止工频补水泵时间','tzgpbsbsj')"
						 class="mws-button black" value="修改" /><span class="span-up"></span> <span
						class="span-down"></span></th>	

				</tr>

				<tr>
					<th class="table-th-css">补水压力设定（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="sfgbxx" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">二次供压高限保护（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="tjfzdkd" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('调节阀最低开度','tjfzdkd')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">时段设定3（h）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="tjfzdkd" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('调节阀最低开度','tjfzdkd')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					

				</tr>
				
				
				<tr>
					<th class="table-th-css">补水频率设定（HZ）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="sfgbxx" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">二次回压低限保护（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="tjfzdkd" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('调节阀最低开度','tjfzdkd')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">时段设定4（h）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="tjfzdkd" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('调节阀最低开度','tjfzdkd')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					

				</tr>
				
				<tr>
					<th class="table-th-css">补水睡眠频率（HZ）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="sfgbxx" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">一次压力量程上限（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="tjfzdkd" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('调节阀最低开度','tjfzdkd')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">时段设定5（h）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="tjfzdkd" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('调节阀最低开度','tjfzdkd')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					

				</tr>
				<tr>
					<th class="table-th-css">补水唤醒偏差（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="sfgbxx" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">一次压力量程下限（bar）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="tjfzdkd" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('调节阀最低开度','tjfzdkd')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					<th class="table-th-css">时段设定6（h）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input id="tjfzdkd" class="csinput"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('调节阀最低开度','tjfzdkd')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
					

				</tr>
			</tbody>
		</table>
		
		
		<p class="mws-report" href="#"
			style="font-size: 14px; border-color: #c5d52b; background: url(../images/core/mws-header-bg.png) repeat-x;">
			<span class="mws-report-icon mws-ic ic-building"></span> <span
				class="mws-report-content" style="margin-top: 10px; color: #C5D52B;">
				运行参数设置  &nbsp;</span>
		</p>
		<table>
			<thead>
				<tr>
					<th class="table-th-css">参数名称</th>
					<th class="table-th-css">数值</th>
					<th class="table-th-css">参数名称</th>
					<th class="table-th-css">数值</th>
					
				</tr>
			</thead>
			<tbody>
				<tr>
					<th class="table-th-css">时段供水温度1（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input class="csinput" id="echswd"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('二次回水温度设定值','echswd')"/><span class="span-up"></span> <span
						class="span-down"></span></th>
					
					<th class="table-th-css">调节阀PID积分<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input  class="csinput" id="kqtjfsj"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('开启调节阀时间','kqtjfsj')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
				</tr>

                <tr>
					<th class="table-th-css">时段供水温度2（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input class="csinput" id="echswd"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('二次回水温度设定值','echswd')"/><span class="span-up"></span> <span
						class="span-down"></span></th>
					
					<th class="table-th-css">调节阀PID微分<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input  class="csinput" id="kqtjfsj"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('开启调节阀时间','kqtjfsj')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
				</tr>
                 <tr>
					<th class="table-th-css">时段供水温度3（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input class="csinput" id="echswd"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('二次回水温度设定值','echswd')"/><span class="span-up"></span> <span
						class="span-down"></span></th>
					
					<th class="table-th-css">循环泵PID比例<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input  class="csinput" id="kqtjfsj"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('开启调节阀时间','kqtjfsj')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
				</tr>
				<tr>
					<th class="table-th-css">时段供水温度4（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input class="csinput" id="echswd"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('二次回水温度设定值','echswd')"/><span class="span-up"></span> <span
						class="span-down"></span></th>
					
					<th class="table-th-css">循环泵PID积分<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input  class="csinput" id="kqtjfsj"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('开启调节阀时间','kqtjfsj')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
				</tr>
				<tr>
					<th class="table-th-css">时段供水温度5（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input class="csinput" id="echswd"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('二次回水温度设定值','echswd')"/><span class="span-up"></span> <span
						class="span-down"></span></th>
					
					<th class="table-th-css">循环泵PID微分<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input  class="csinput" id="kqtjfsj"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('开启调节阀时间','kqtjfsj')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
				</tr>
				
				<tr>
					<th class="table-th-css">时段供水温度6（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input class="csinput" id="echswd"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('二次回水温度设定值','echswd')"/><span class="span-up"></span> <span
						class="span-down"></span></th>
					
					<th class="table-th-css">补水泵PID比例<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input  class="csinput" id="kqtjfsj"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('开启调节阀时间','kqtjfsj')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
				</tr>
				
				<tr>
					<th class="table-th-css">时段供水温度7（℃）<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input class="csinput" id="echswd"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('二次回水温度设定值','echswd')"/><span class="span-up"></span> <span
						class="span-down"></span></th>
					
					<th class="table-th-css">补水泵PID积分<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input  class="csinput" id="kqtjfsj"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('开启调节阀时间','kqtjfsj')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
				</tr>
				
				<tr>
					<th class="table-th-css">调节阀PID比例<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input class="csinput" id="echswd"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('二次回水温度设定值','echswd')"/><span class="span-up"></span> <span
						class="span-down"></span></th>
					
					<th class="table-th-css">补水泵PID微分<span class="span-up"></span>
						<span class="span-down"></span></th>
					<th class="table-th-css"><input  class="csinput" id="kqtjfsj"
						width="120px"><input type="button" 
						 class="mws-button black" value="修改" onclick="szcs('开启调节阀时间','kqtjfsj')" /><span class="span-up"></span> <span
						class="span-down"></span></th>
				</tr>
			</tbody>
		</table>
	</div>


<script type="text/javascript">
var ints=self.setInterval("csh()",60000);
function csh(){
	 var hrz=$("#hrz").val();
	 $.ajax({
			url:"<%=basePath%>OpcCon/findXsj.action",
			//async:false,
			dataType:"json",
			data:{	
				"hrz":hrz,
			},
		success:function(data){
			var map=data.list[0];
			
			$("#ycgsylbjsx").val(map.ycgsylsx);
			$("#ycgsylbjxx").val(map.ycgsylxx);
			$("#ycgswdbjsx").val(map.ycgswdsx);
			$("#ycgswdbjxx").val(map.ycgswdxx);
			
			$("#ychsylbjxx").val(map.ychsylxx);
			$("#ychsylbjsx").val(map.ychsylsx);
			$("#ychswdbjsx").val(map.ychswdsx);
			$("#ychswdbjxx").val(map.ychswdxx);
			
			
			$("#ecgsylbjsx").val(map.ecgsylsx);
			$("#ecgsylbjxx").val(map.ecgsylxx);
			$("#ecgswdbjsx").val(map.ecgswdsx);
			$("#ecgswdbjxx").val(map.ecgswdxx);
			
			$("#echsylbjxx").val(map.echsylxx);
			$("#echsylbjsx").val(map.echsylsx);
			$("#echswdbjsx").val(map.echswdsx);
			$("#echswdbjxx").val(map.echswdxx);
			$("#ywsx").val(map.ywsx);
			$("#ywxx").val(map.ywxx);
			$("#dyjbjxz").val(map.qybjjxz);
			$("#dyjbjcz").val(map.dyjbjcz);
			$("#echswd").val(map.echswdsdz);
			$("#ecgsyl").val(map.ecgsylsdz);
			$("#echsyl").val(map.echsylsdz);
			$("#echsbssx").val(map.echsbsylsx);
			$("#echsbsxx").val(map.echsbsylxx);
			$("#kqtjfsj").val(map.kqtjfsj);
			$("#gbtjfsj").val(map.gbtjfsj);
			
			$("#bbgpqdpl").val(map.qdgpbsbpl);
			$("#bbgptzpl").val(map.tzgpbsbpl);
			$("#qdgpbsbsj").val(map.qgpbsbsj);
			$("#tzgpbsbsj").val(map.tzgpbsbsj);
			$("#xyfkqsx").val(map.xyylsx);
			$("#xyfgbxx").val(map.xyylxx);
			$("#sxzdywxz").val(map.ywxxx);
			$("#echstjyl").val(map.echstjyl);
			$("#tjfzdkd").val(map.tjfzdkd);
			
			
		}
		
	});	
}
	
csh();
$("#hrz").change(function(){
	 csh();
	});
function szcs(name,id){
	 
		 
		  var val = $("#"+id).val();
		  var hrz=$("#hrz").val();
		
			$.ajax({
				url : "<%=basePath%>OpcCon/cssz.action",
				async : false,
				dataType : "json",
				data : {
					"name" : name,
					"id" : id,
					"val":val,
					"hrz":"吉利."+hrz+".写数据."
				},
				success : function(data) {
					
					
					var val = eval(data).value;
					var id = eval(data).id;
					$("#"+id).val(val);	
				
				}
		}) 

}
</script>
</body>
</html>