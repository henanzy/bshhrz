
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
    
   
	
</style>

</head>
<body>

	<div id="" class="clearfix" style="overflow-x: hidden;">
	
		<div class="mws-panel grid_8 "
			style="width: 98%; padding-left: 12px; margin: 0px 0px 30px 0px; min-width:800px">
			<div class="mws-panel-header">
				<span class="mws-i-24 i-table-1">实时数据</span>
			</div>
			<div class="jk_search">
				<p>
					<select id="hrzname">
						<option value="北京华誉.新乡商务大厦">北京华誉大厦</option>
						
					</select>
					
					<input id="jk_search_btn" type="submit" value="搜索" />
					<input id="dayin" type="submit" value="导出" />
				</p>
			</div>
			<div id="monitword_table_body" class="mws-panel-body"
				style="overflow: auto !important; height: 200px;">
				<table class="mws-table">
					<thead>
						<tr>
						    <th class="table-th-css">换热站<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">总电量<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">A项电压<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">B项电压<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">C项电压<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">AB项电压<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">BC项电压<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">CA项电压<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">A项电流</th>
							<th class="table-th-css">B项电流<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">C项电流<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">瞬时流量<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">瞬时热量<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">累计流量<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">累计热量<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">供水温度<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">回水温度<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">供水压力<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">回水压力<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">水箱液位<span class="span-up"></span> <span class="span-down"></span></th>
							
						</tr>
					</thead>
					<tbody id="xinword_body">
					
					</tbody>
				</table>
			</div>
			
			
			<div id="monitword_table_body" class="mws-panel-body"
				style="overflow: auto !important; height: 200px;">
				<table class="mws-table">
					<thead>
						<tr>
						   <th class="table-th-css">换热站<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">主机1热出温度<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">主机1热进温度<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">主机1冷出温度<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">主机1冷进温度<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">主机2热出温度<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">主机2热进温度<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">主机2冷出温度<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">主机2冷进温度<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">主机3热出温度<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">主机3热进温度<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">主机3冷出温度<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">主机3冷进温度<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">主机4热出温度<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">主机4热进温度<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">主机4冷出温度<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">主机4冷进温度<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">采集时间<span class="span-up"></span> <span class="span-down"></span></th>
						</tr>
					</thead>
					<tbody id="jkword_body2">
						
					</tbody>
				</table>
			</div>
		</div>
		
		
		
		<nav style="width:100%;">
            <ul style="width:500px;display:flex;justify-content:space-between;margin:0 auto;" >
            	
                <li id="first">首页</li>
                <li id="last">上一页</li>
                <li id="next">下一页</li>
                <li id="end">尾页</li>   
                <li id="curpage">当前第<span id="currentNum" ></span>页 /共<span id='pages'></span>页</li>
                <li id="numsp">共<span id="num"></span></li>
                
                    <select name="" id="select" >
                        <option value="10">10</option>
                        <option value="15"  selected = "selected">15</option>
                        <option value="20" >20</option>
                        <option value="25">25</option>
                        <option value="30">30</option>
                    </select>
                     
            </ul>
         </nav>
         	</div>
<!-- <script type="text/javascript">
 debugger;
 var list;
var hrzname=$("#hrzname").val();
 $.ajax({
 		url : "sssj.action", 
 		async : false,
 		dataType : "json",
 		data : {
 			"hrzname":hrzname,
 		},
 		success : function(data) {
 			debugger;
 			list=data.map;
 		}

 	});
</script> -->

<script type="text/javascript">

var list=${map};
</script>

<script type="text/javascript" src="../js/sssj.js"></script>


</body>
</html>