
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

<!-- Theme Stylesheet -->
<link rel="stylesheet" type="text/css" href="../css/mws.theme.css"
	media="screen" />

<!-- JavaScript Plugins -->

<script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>

<script src="../js/echarts-3.5.3/highcharts.js"></script>

<script src="../js/echarts-3.5.3/echarts.min.js"></script>
<script src="../js/echarts-all.js"></script>

<style>

	/* 固定表头 */
	.table-th-css {
		position: relative !important;
		top: 0;
	}
	
	
	/* 电话呼入呼出统计报表，各种状态工单统计表搜索div */
	.call-search,
	.word-search{
		display:block;
		width:99.8%;
		height:40px;
		background-color:#ccc;
		margin:0px auto;
		font-size:12px;
	}
	
	.call-search p,
	.word-search p{
		line-height:40px;
	}
	
	.call-search p input,
	.word-search p input{
		height:18px;
		width:120px;
		border:none;
		border-radius:4px;
		padding-left:4px;
	}
	
	/* 搜索开始结束时间 */
	.call_time,
	.word_time{
		margin-left:20px;
	}
	
	/* 搜索状态 */
	.call_type,
	.word_type{
		margin-left:30px
	}
	.call_type select,
	.word_type select{
		width:100px;
		height:18px;
		border:none;
		border-radius:4px;
		padding-left:6px;
	}
	
	/* 搜索导出框 */
	p ._btn input{
		width:50px;
		height:18px;
		background-color:#fff;
		margin-left:30px
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
	
	
		/* 搜索按钮 */
	#search_btn,
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
	
</style>
<style>

	/* 固定表头 */
	.table-th-css {
		position: relative !important;
		top: 0;
	}
	
	/* 电话输入框 */
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
	
	/* 用户信息，室内情况input */
	#user_search_body .mws-form-row .user_input,
	#user_search_body .mws-form-row .indoor_input {
		width:200px;
	}
	
	
	/* 用户信息，室内情况label */
	#user_search_body .indoor_inform label,
	#user_search_body .user_inform label{
		width:100px;
	}
	
	/* 用户信息，室内情况背景图片 */
	/* #user_search_body .user_inform .mws-panel-body,
	#user_search_body .indoor_inform .mws-panel-body{
		background-image: url(../images/background/2.jpg);
	} */
	#user_search_body .user_inform .mws-form-inline,
	#user_search_body .indoor_inform .mws-form-inline{
		height:426px;
		background:rgba(255,255,255,0.8);
	}
	
	/* 手机号错误字体 */
	#user_span{
		color:red;
		display:none;
	}
	
	
	/* 新增弹出按钮 */
	.keincrease {
		border:none;
		background-color:rgb(60,61,61);
		width:70px;
		height:30px;
		margin-left:50px;
		color:#fff;
		border-radius:4px;
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

			<div class="mws-panel grid_8" 
				style="width:60%;min-width: 400px;height:250px;float: left;padding:0px;margin: 0px;" >
				<div class="mws-panel-header">
					<span class="mws-i-24 i-graph">当天实时天气</span>
				</div>
				
		
				<div class="mws-panel-body" style="overflow: auto !important; height:400px;">
					<div class="mws-panel-content">
					<div id="main" style="height: 350px; width: 850px; padding: 0px"></div>
			   </div>
					</div>
				</div>
				
				
				<div style="width: 34%; margin-top: 0px; float: left;padding:0px;margin: 0px;">
			<div class="mws-panel grid_4 user_inform" style="min-width: 650px;padding:0px;margin: 0px;">
				<div class="mws-panel-header">
					<span class="mws-i-24 i-pencil">当天实时天气</span>
				</div>	
	
	       <div id="monitword_table_body" class="mws-panel-body"
				style="overflow: auto !important;padding:0px; height:380px;padding:0px;margin: 0px;">
				<table class="mws-table" >
	
					<thead>
						<tr>
						    <th class="table-th-css">日期<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">天气<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">温度<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">风况<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">风速<span class="span-up"></span> <span class="span-down"></span></th>
						</tr>
					</thead>
					<tbody id="xinword_body1">
                   <tr>
                   </tr>
						
					</tbody>
				</table>
			</div>
			</div>
			</div>
				<!-- 测试--------------------------------------------------------- -->
			
			
			<div class="mws-panel grid_8"
				style="width:100%;min-width: 500px; float: left;padding:0px;margin: 0px;" >
				<div class="mws-panel-body" >
					<div style="padding-left: 80px;">
<!-- 					<iframe scrolling="no" src="https://tianqiapi.com/api.php?style=tj&skin=pitaya&city=新乡" frameborder="0" width="500" height="62" allowtransparency="true"></iframe> -->

					<!-- <iframe scrolling="no" src="https://tianqiapi.com/api.php?style=tt&skin=pitaya&city=新乡" frameborder="0" width="590" height="98" allowtransparency="true"></iframe> -->
					<iframe scrolling="no" src="https://tianqiapi.com/api.php?style=tt&skin=peach&city=新乡" frameborder="0" width="590" height="98" allowtransparency="true"></iframe>
					
				</div>
			</div>
			
			
				<!-- 测试--------------------------------------------------------- -->
				<!-- <div id="user_search_body" style="width: 30%;height:300px;padding:0px;  float: left;">

			<div class="mws-panel grid_4 user_inform" style="min-width: 490px;height:450px; ">
				<div class="mws-panel-header">
					<span class="mws-i-24 i-pencil">当日天气</span>
				</div>
				<div class="mws-panel-body">
					<form class="mws-form">
						<div class="mws-form-inline">
							<div class="mws-form-row" >
								<label>&emsp;&emsp;天气：</label>

								<div class="mws-form-item large">
									<input type="text" id="tq"  class="mws-textinput user_input" value=""
										readonly="readonly" />
								</div>
							</div>
							
							<div class="mws-form-row" >
								<label>实时气温：</label>

								<div class="mws-form-item large">
									<input type="text" id ="ssqw" class="mws-textinput user_input" value=""
										readonly="readonly" />
								</div>
							</div>

							<div class="mws-form-row" >
								<label>&emsp;&emsp;风况：</label>
								<div class="mws-form-item large">
									<input type="text" id="fk" class="mws-textinput user_input" value=""
										readonly="readonly" />
								</div>
							</div>

							<div class="mws-form-row" >
								<label>&emsp;&emsp;风力：</label>
								<div class="mws-form-item large">
									<input type="text" id="fl" class="mws-textinput user_input" value=""
										readonly="readonly" />
								</div>
							</div>

							<div class="mws-form-row" >
								<label> 最高气温：</label>
								<div class="mws-form-item large">
									<input type="text" id="zg" class="mws-textinput user_input" value=""
										readonly="readonly" />
								</div>
							</div>

							<div class="mws-form-row" >
								<label> 最低气温：</label>
								<div class="mws-form-item large">
									<input type="text" id="zd" class="mws-textinput user_input" value=""
										readonly="readonly" />
								</div>
							</div>
						</div>
						
					</form>
				</div>
			</div>
			</div> -->
				
				
				
				
				
				
			<div class="mws-panel grid_8"
			style="width:100%;min-width: 500px; float: left;padding:0px;margin: 0px;" >
				<div class="mws-panel-header">
					<span class="mws-i-24 i-graph">气象曲线分析</span>
				</div>
				
		
				<div class="mws-panel-body">
					<div class="mws-panel-content">
					<div id="Tqcontainer"  style="height: 400px; width: 99%; padding: 0px;margin: 0px;"></div>
					</div>
				</div>
			</div>
			
			
			
			
		
			<!-- <div id="user_search_body"
			style="width: 50%; margin-top: 10px;border:1px solid #F00;float: left"> -->

			<div class="mws-panel grid_4 user_inform" style="width: 100%; min-width: 90px;padding:0px;margin: 0px;">
				<div class="mws-panel-header">
					<span class="mws-i-24 i-pencil">未来天气预报</span>
				</div>	
	

	       <div id="monitword_table_body" class="mws-panel-body"
				style="overflow: auto !important; height:450px; ">
				<table class="mws-table">
	
					<thead>
						<tr>
						    <th class="table-th-css">日期<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">天气<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">最高温度<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">最低温度<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">风况<span class="span-up"></span> <span class="span-down"></span></th>
							<th class="table-th-css">风速<span class="span-up"></span> <span class="span-down"></span></th>
						</tr>
					</thead>
					<tbody id="xinword_body">
                   <tr>
                   </tr>
						
					</tbody>
				</table>
			</div>
			</div>
			</div>

			<script type="text/javascript">
			var zgwd=[];
			var zdwd=[];
			var zgwds=[];
			var zdwds=[];
			var dates = []; //日期
			var tqdates = []; //日期
			var number = []; //数量
			var names = []; //数量
			var html = "";
			var html1 = "";
			var Tqoptions = {
			        chart: {
			            type: 'line'// 指定图表的类型，默认是折线图（line）
			        },
			        title:{
			        	text:null
			        },
			        tooltip: {
						crosshairs: [{
							width: 1,
							color:'#aaaaaa'
						}],
						shared: true
					},
			        xAxis: {  // x 轴分类
				       
			        },
			        yAxis: {
			            title: {
			                text: null
			                // y 轴标题
			            }
			        }
			    };
			$.ajax({
			    type: 'GET',
			    url: 'https://www.tianqiapi.com/api/',
			    data: 'version=v1&city=新乡&appid=73628829&appsecret=fu7gNaSw',
			    dataType: 'JSON',
			    error: function () {
			        alert('网络错误');
			    },
			    success: function (res) {
			  		
			        var data=res.data;
			        var tq=data[0].wea;
			        var ssqw=data[0].tem;
			        var fk1=data[0].win[0];
			        var fl=data[0].win_speed;
			        var zd=data[0].tem1;
			        var zg=data[0].tem2;
			        $("#tq").val(tq);
			        $("#ssqw").val(ssqw);
			        $("#fk").val(fk1);
			        $("#fl").val(fl);
			        $("#zd").val(zd);
			        $("#zg").val(zg);
		           
			    	for(var j=0;j<data[0].hours.length;j++){
			    	    html1 += "</tr>";
					    html1 += "<td>" + data[0].hours[j].day + "</td>"
					    html1 += "<td>" + data[0].hours[j].wea + "</td>"
					    html1 += "<td>" + data[0].hours[j].tem + "</td>"
					    html1 += "<td>" + data[0].hours[j].win + "</td>"
					    html1 += "<td>" + data[0].hours[j].win_speed + "</td>"
					    html1 += "</tr>";	
					    dates.push(data[0].hours[j].day );
						number.push(data[0].hours[j].tem.replace("℃","") );
						names.push("实时天气");
			    	}
			    
				    
			    	// 基于准备好的dom，初始化echarts实例
					var myChart = echarts.init(document.getElementById('main'));
					// 指定图表的配置项和数据
					var option = {
						title : {
							text : names[0]
						},
						 tooltip : {
						        trigger: 'axis'
						    },
					    toolbox: {
					        show : true,
					        feature : {
					            mark : {show: true},
					            dataView : {show: true, readOnly: false},
					            magicType : {show: true, type: ['line', 'bar']},
					            restore : {show: true},
					            saveAsImage : {show: true}
					        }
					    },
					    calculable : true,
						xAxis : {
							name : '日期',
							type : 'category',
							data : dates
						},
						yAxis : {
	 
							name : '温度（℃）',
							type : 'value'
						},
						series : [ {
							name:'温度（℃）',
							data : number,
							type : 'line'
						} ]
					};
					//加载echarts
					myChart.setOption(option);
				
					
					
					
					
					
					
			        
			        for (var i = 0 ; i < data.length ; i ++) {
			        	 html += "</tr>";
			        	html += "<td>" + data[i].date + "</td>"
			        	html += "<td>" + data[i].wea + "</td>"
			        	html += "<td>" + data[i].tem1 + "</td>"
			        	html += "<td>" + data[i].tem2 + "</td>"
			        	html += "<td>" + data[i].win[0] + "</td>"
			        	html += "<td>" + data[i].win_speed + "</td>"
			        	html += "</tr>";
			        
			        	var date=data[i].date;
			        	var zgwdval=parseFloat(data[i].tem1.replace("℃",""));
			        	
			        	var zdwdval=parseFloat(data[i].tem2.replace("℃",""));

			        	zgwds.push(zgwdval);
			        	zdwds.push(zdwdval);
			        	tqdates.push(date)
			        }
			        console.log(zgwds)
			          console.log(zdwds)
			         console.log(tqdates)
			        
			        	// 基于准备好的dom，初始化echarts实例
						var myChart1 = echarts.init(document.getElementById('Tqcontainer'));
						// 指定图表的配置项和数据
						var option1 = {
							title : {
								text : "天气"
							},
							 tooltip : {
							        trigger: 'axis'
							    },
						    toolbox: {
						        show : true,
						        feature : {
						            mark : {show: true},
						            dataView : {show: true, readOnly: false},
						            magicType : {show: true, type: ['line', 'bar']},
						            restore : {show: true},
						            saveAsImage : {show: true}
						        }
						    },
						    calculable : true,
							xAxis : {
								name : '日期',
								type : 'category',
								data : tqdates
							},
							yAxis : {
		 
								name : '温度（℃）',
								type : 'value'
							},
							series : [ {
								name : '最高温度（℃）',
								data : zgwds,
								type : 'line'
							},{
								name : '最低温度（℃）',
								data : zdwds,
								type : 'line'
							}  ]
						};
						//加载echarts
						myChart1.setOption(option1);
						
						/* 
			        	 Highcharts.chart("Tqcontainer", Tqoptions); */
			        	
			        	
			        
			        xinword_body.innerHTML = html;
			        xinword_body1.innerHTML = html1;
			    }
			});
			
			function dateFormat(time){
			    var now = new Date(time);
			    
			    var year=now.getFullYear(); 
			    var month=now.getMonth()+1; 
			    var date=now.getDate(); 
			    var hour=now.getHours(); 
			    var minute=now.getMinutes(); 
			    var second=now.getSeconds(); 
			    return year+"-"+month+"-"+date; 
			} 

			</script>
</body>
</html>