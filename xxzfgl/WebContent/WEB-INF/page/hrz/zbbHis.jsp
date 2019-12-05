
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

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


<style>
	
	/* 固定表头 */
	.table-th-css {
		position: relative !important;
		top: 0;
	}
	
	/* 搜索DIV */
	.jk_search{
		display:block;
		width:99.8%;
		height:40px;
		background-color:#ccc;
		margin:0px auto;
		font-size:12px;
	}
	
	.jk_search p{
		height:40px;
	}
	
	.jk_search p select{
		width:120px;
		height:24px;
		border:none;
		border-radius:6px;
		margin-left:20px;
		padding-left:6px;
	}
		#dayin,
	#search_status_btn{
		margin-top:8px;
		margin-left:20px;
		border:none;
		background-color:rgb(60,61,61);
		width:60px;
		height:24px;
		margin-right:6px;
		color:#fff;
		border-radius:4px;
	}
	/* 搜索按钮 */
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
	
	#jk_search_btn1{
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
	
	
	/* thead排序按钮 */
	.span-up{
        border-style: solid;
        border-width: 0px 5px 5px 5px;
        border-color: transparent transparent black transparent;
        width: 0px;
        height: 0px;
        display: block;
        position: absolute;
        top: 14px;
       	right: 6px;
    }
    
    .span-down{
        border-style: solid;
        border-width: 5px 5px 0px 5px;
        border-color: black transparent transparent transparent;
        width: 0px;
        height: 0px;
        display: block;
        position: absolute;
        top: 20px;
        right: 6px;
    }
    
    #xincreate_table_body .mws-table tbody .gradeX .xinjgd_show,
	#xincreate_table_body .mws-table tbody .gradeX .xinjgd_change,
	#xincreate_table_body .mws-table tbody .gradeX .xinjgd_del{
		border:none;
		background-color:rgb(60,61,61);
		height:24px;
		margin-right:6px;
		margin-top:2px;
		color:#fff;
		font-size: 12px;
		border-radius:4px;
	}
	
	#change_word{
		display:none;
		position: fixed;
		left: 0;
	    top:0;
	    right:0;
	    bottom:0;
	    z-index: 100; 
		background-color:rgba(0,0,0,0.6);
	}
	#change_word .close::before {
	    content: "\2716";
	}
	#change_word #word_change_btn{
		position:relative;
		top:-10px;
		left:47%;
	}
	
</style>
 <script type="text/javascript">
 
 var list;
 $.ajax({
 		url : "zHiList.action", 
 		async : false,
 		dataType : "json",
 		data : {
 			
 		},
 		success : function(data) {
 			list=data.list;
 		}

 	});
 
 /* var list = ${list};
 alert(list) */
</script>
</head>
<body>

	<div id="" class="clearfix" style="overflow-x: hidden;">
	
		
		<div class="mws-panel grid_8 "
			style="width: 98%; padding-left: 12px; margin: 0px 0px 30px 0px; min-width:500px">
			<div class="mws-panel-header">
				<span class="mws-i-24 i-table-1">历史数据</span>
			</div>
			<div class="jk_search">
				<p>
					<select id="type">
						<option value="新乡商务大厦">新乡商务大厦</option>
						
					</select>
					
					<span>开始时间：
						<input type="date" id="startTime"  style="width:120px" value="" />
					</span>
					<span>结束时间
						<input type="date" id="endTime" style="width:120px" value="" />
					</span>
					<input id="jk_search_btn1" type="submit" value="选择列" />
					<input id="jk_search_btn" type="submit" value="搜索" />
					<input id="dayin" type="submit" value="导出" />
				</p>
			</div>
			<div id="monitword_table_body" class="mws-panel-body"
				style="overflow: scroll !important;height: 600px;">
				<table class="mws-table">
					<thead id="head">
						
					</thead>
					<tbody id="jkword_body">
						
						
					</tbody>
				</table>
			</div>
			<div id="change_word">
			<div class="mws-panel grid_4"
				style="width: 500px; min-width: 500px; margin: 100px 30%;">
				<div class="mws-panel-header">
					<span >选择列</span>
				</div>
				<div class="mws-panel-body" style="height: 650px;">
					<form class="mws-form" action=""  method="post">
					<table>
						<tr style="height:50px"> 
					<th>
					<label>&emsp;&emsp;累计热量</label>
					<input type="checkbox" name="box" value="ljrl"/>
					</th>
					
					<th>
					<label>&emsp;&emsp;供水温度</label>
					<input type="checkbox" name="box" value="gswd"/>
					</th>
					
					<th>
					<label>&emsp;&emsp;回水温度</label>
					<input type="checkbox" name="box" value="hswd"/>
					</th>
					</tr>
						<tr style="height:50px">
					
					
					<th style="width:150px">
					<label>&emsp;&emsp;总电量</label>
					<input type="checkbox" name="box" value="zdl"/>
					</th>
					
					<th>
					<label>&emsp;&emsp;瞬时流量</label>
					<input type="checkbox" name="box" value="ssll"/>
					</th>
					
					<th>
					<label>&emsp;&emsp;累计流量</label>
					<input type="checkbox" name="box" value="ljll"/>
					</th>
					
					</tr>
					
					<tr style="height:50px"> 
					<th>
					<label>&emsp;&emsp;供水压力</label>
					<input type="checkbox" name="box" value="gsyl"/>
					</th>
					<th>
					<label>&emsp;&emsp;回水压力</label>
					<input type="checkbox" name="box" value="hsyl"/>
					</th>
					<th>
					<label>&emsp;&emsp;水箱液位</label>
					<input type="checkbox" name="box" value="sxyw"/>
					</th>
					
					<th>
					
					</tr>
					<tr style="height:50px">
					
					<th>
					<label>&emsp;&emsp;A项电流</label>
					<input type="checkbox" name="box" value="Axdl"/>
					</th>
					
					<th>
					<label>&emsp;&emsp;B项电流</label>
					<input type="checkbox" name="box" value="Bxdl"/>
					</th>
					<th>
					<label>&emsp;&emsp;C项电流</label>
					<input type="checkbox" name="box" value="Cxdl"/>
					</th>
					</tr>
					<tr style="height:50px">
					<th style="width:150px">
					<label>&emsp;&emsp;A项电压</label>
					<input type="checkbox" name="box" value="Axdy"/>
					</th>
					
					<th style="width:150px">
					<label>&emsp;&emsp;B项电压</label>
					<input type="checkbox" name="box" value="Bxdy"/>
					</th>
					<th style="width:150px">
					<label>&emsp;&emsp;C项电压</label>
					<input type="checkbox" name="box" value="Cxdy"/>
					</th>
					</tr>
					
					<tr style="height:50px">
					<th>
					<label>&emsp;&emsp;AB项电压</label>
					<input type="checkbox" name="box" value="ABxdy"/>
					</th>
					
					<th>
					<label>&emsp;&emsp;BC项电压</label>
					<input type="checkbox" name="box" value="BCxdy"/>
					</th>
					<th style="width:150px">
					<label>&emsp;&emsp;CA项电压</label>
					<input type="checkbox" name="box" value="CAxdy"/>
					</th>
				
					</tr>
					<tr style="height:50px"> 
					<th>
					<label>&emsp;&emsp;主机1冷出温度</label>
					<input type="checkbox" name="box" value="zjlcwd1"/>
					</th>
					
					<th>
					<label>&emsp;&emsp;主机1冷进温度</label>
					<input type="checkbox" name="box" value="zjljwd1"/>
					</th>
					
					<th>
					<label>&emsp;&emsp;主机1热出温度</label>
					<input type="checkbox" name="box" value="zjrcwd1"/>
					</th>
					
					</tr>
					
					<tr style="height:50px"> 
					<th>
					<label>&emsp;&emsp;主机1热进温度</label>
					<input type="checkbox" name="box" value="zjrjwd1"/>
					</th>
					
					<th>
					<label>&emsp;&emsp;2#主机热出温度</label>
					<input type="checkbox" name="box" value="zjrcwd2"/>
					</th>
					
					<th>
					<label>&emsp;&emsp;2#主机冷进温度</label>
					<input type="checkbox" name="box" value="zjljwd2"/>
					</th>
					
					</tr>
					
					<tr style="height:50px"> 
					<th>
					<label>&emsp;&emsp;2#主机热进温度</label>
					<input type="checkbox" name="box" value="zjrjwd2"/>
					</th>
					
					<th>
					<label>&emsp;&emsp;3#主机冷出温度</label>
					<input type="checkbox" name="box" value="zjlcwd3"/>
					</th>
					
					<th>
					<label>&emsp;&emsp;3#主机热出温度</label>
					<input type="checkbox" name="box" value="zjrcwd3"/>
					</th>
					
					</tr>
					
					<tr style="height:50px"> 
					<th>
					<label>&emsp;&emsp;3#主机冷进温度</label>
					<input type="checkbox" name="box" value="zjljwd3"/>
					</th>
					
					<th>
					<label>&emsp;&emsp;3#主机热进温度</label>
					<input type="checkbox" name="box" value="zjrcwd3"/>
					</th>
					
					<th>
					<label>&emsp;&emsp;4#主机冷出温度</label>
					<input type="checkbox" name="box" value="zjlcwd4"/>
					</th>
					
					</tr>
					
					<tr style="height:50px"> 
					<th>
					<label>&emsp;&emsp;4#主机热出温度</label>
					<input type="checkbox" name="box" value="zjrcwd4"/>
					</th>
					
					<th>
					<label>&emsp;&emsp;4#主机冷进温度</label>
					<input type="checkbox" name="box" value="zjljwd4"/>
					</th>
					<th>
					<label>&emsp;&emsp;4#主机热进温度</label>
					<input type="checkbox" name="box" value="zjrcwd4"/>
					</th>
					<th>
					</th>
					</tr>
					</table>
					
						
						<input type="button" id="word_change_btn"
							class="mws-button black" value="选择" />
					</form>
				</div>
			</div>
		</div>
		</div>

	</div>

<script type="text/javascript" src="../js/zbbHis.js"></script> 
</body>
</html>