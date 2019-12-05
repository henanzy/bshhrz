
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

</head>

<body>
 <div id="ssqx" ></div>

<div id="" class="clearfix" style="overflow-x: hidden;">
		<div>

		<div class="mws-panel grid_8"
				style="width:95%;min-width: 500px;height: 550px">
				<div class="mws-panel-header">
					<span class="mws-i-24 i-graph">历史曲线图</span>
				</div>
				
		
				<div class="mws-panel-body">
					<div class="mws-panel-content">
					
				<span>开始时间：
						<input type="date" id="startTime"  style="width:120px" value="" />
					</span>
					<span>结束时间
						<input type="date" id="endTime" style="width:120px" value="" />
					</span>
					<input type="button" id="jk_search_btn" onclick="lsqxSelS()" value="搜索">	
				
					<!-- <div id="ssqx" ></div> -->
				
				  <div style="height:510px;min-height:100px;margin:0 auto;" id="main"></div>  
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- <div id="Tqcontainer" ></div> -->

	<!-- <div id="" class="clearfix" style="overflow-x: hidden;">
		<div>

		<div class="mws-panel grid_8"
				style="width:95%;min-width: 500px;height: 500px">
				<div class="mws-panel-header">
					<span class="mws-i-24 i-graph">历史曲线图</span>
				</div>
				
		
				<div class="mws-panel-body">
					<div class="mws-panel-content">
					
				<span>开始时间：
						<input type="date" id="startTime"  style="width:120px" value="" />
					</span>
					<span>结束时间
						<input type="date" id="endTime" style="width:120px" value="" />
					</span>
					<input type="button" id="jk_search_btn" onclick="lsqxSel()" value="搜索">	
				
					<div id="Ncontainer" ></div>
				
				
					</div>
				</div>
			</div>
		</div>
	</div> -->
 <script type="text/javascript">
            
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据
        var option = {
            title: {    //图表标题
                text: ''
            },
            tooltip: {
                trigger: 'axis', //坐标轴触发提示框，多用于柱状、折线图中
            },
            dataZoom: [
                 {
                     type: 'slider',    //支持鼠标滚轮缩放
                     start: 0,            //默认数据初始缩放范围为10%到90%
                     end: 100
                 },
                 {
                     type: 'inside',    //支持单独的滑动条缩放
                     start: 0,            //默认数据初始缩放范围为10%到90%
                     end: 100
                 }
            ],
            legend: {    //图表上方的类别显示               
                show:true,
                data:['供水温度（℃）','回水湿度（℃）','供水压力（bar）','回水压力（bar）','瞬时流量（m3/h）','瞬时热量（GJ/h）' /* ,'A项电压（V）','B项电压（V）','C项电压（V）' */,'A项电流（A）','B项电流（A）','C项电流（A）'/*,'供回水压差（bar）' */]
           /*  '供水温度（℃）','回水湿度（%）','供水压力（bar）','回水压力（bar）','瞬时流量','瞬时热量','A项电压' */
            },
            color:[
                   '#FF3333',    //温度曲线颜色
                   '#53FF53',    //湿度曲线颜色
                   '#B15BFF',    //压强图颜色
                   '#68CFE8',    //雨量图颜色
                   '#FFDC35'    //风速曲线颜色
                   ],
          /*   toolbox: {    //工具栏显示             
                show: true,
                feature: {                
                    saveAsImage: {}        //显示“另存为图片”工具
                }
            }, */
            toolbox: {
                show : true,
                feature : {
                    mark : {show: true},
                    dataView : {readOnly:false},
                    magicType : {show: true, type: ['line', 'bar', 'stack']},
                    restore : {show: true},
                    saveAsImage : {show: true}
                }
            },
            xAxis:  {    //X轴           
                type : 'category',
                data : []    //先设置数据值为空，后面用Ajax获取动态数据填入
            },
            yAxis : [    //Y轴（这里我设置了两个Y轴，左右各一个）
                        {
                            //第一个（左边）Y轴，yAxisIndex为0
                             type : 'value',
                             name : '',
                             axisLabel : {
                                 formatter: '{value}'    //控制输出格式
                             }
                         },
                         {
                            //第二个（右边）Y轴，yAxisIndex为1
                             type : 'value',
                             name : '',
                             scale: true,
                             axisLabel : {
                                 formatter: '{value}'
                             }
                         }
                     
            ],
            series : [    //系列（内容）列表                      
                        {
                            name:'供水温度（℃）',
                            type:'line',    //折线图表示（生成温度曲线）
                            symbol:'emptycircle',    //设置折线图中表示每个坐标点的符号；emptycircle：空心圆；emptyrect：空心矩形；circle：实心圆；emptydiamond：菱形                        
                            data:[]        //数据值通过Ajax动态获取
                        },
                        
                        {
                            name:'回水湿度（℃）',
                            type:'line',
                            symbol:'emptyrect',
                            data:[]
                        },
                        
                        {
                            name:'供水压力（bar）',
                            type:'line',
                            symbol:'circle',    //标识符号为实心圆
                            yAxisIndex: 1,        //与第二y轴有关
                            data:[]
                        },
                        
                        {
                            name:'回水压力（bar）',
                            type:'line',        //柱状图表示
                          
                            data:[]
                        },{
                            name:'瞬时流量（m3/h）',
                            type:'line',
                            symbol:'emptydiamond',
                            data:[]
                        } , 
                        
                        {
                            name:'瞬时热量（GJ/h）',
                            type:'line',
                            symbol:'emptydiamond',
                            data:[]
                        }/*  ,  {
                            name:'A项电压（V）',
                            type:'line',
                            data:[]
                        } ,  {
                            name:'B项电压（V）',
                            type:'line',
                            data:[]
                        }  ,  {
                            name:'C项电压（V）',
                            type:'line',
                            data:[]
                        }*/    , {
                            name:'A项电流（A）',
                            type:'line',
                            data:[]
                        }, {
                            name:'B项电流（A）',
                            type:'line',
                            data:[]
                        } , {
                            name:'C项电流（A）',
                            type:'line',
                            data:[]
                        }  /* , {
                            name:'供回水压差（bar）',
                            type:'line',
                            data:[]
                        }    */       
            ]
        };
         
        myChart.showLoading();    //数据加载完之前先显示一段简单的loading动画
         
         var gswd=[];        //温度数组（存放服务器返回的所有温度值）
         var hswd=[];        //湿度数组
         var gsyl=[];        //压强数组
         var hsyl=[];        //压强数组
         var ssll=[];        //雨量数组
         var ssrl=[];    //风速数组
         var axdy=[];    //风速数组
         var bxdy=[];    //风速数组
         var cxdy=[];    //风速数组
         var axdl=[];    //风速数组
         var bxdl=[];    //风速数组
         var cxdl=[];    //风速数组
         var gsyc=[];    //风速数组
         var dates=[];        //时间数组
         
         $.ajax({    //使用JQuery内置的Ajax方法
        	 url : "sellssjS.action", 
     		async : false,
     		dataType : "json",
     		data : {
     			
     		},     //请求内包含一个key为name，value为A0001的参数；服务器接收到客户端请求时通过request.getParameter方法获取该参数值
         dataType : "json",        //返回数据形式为json
         success : function(data) {
             //请求成功时执行该函数内容，result即为服务器返回的json对象
            	var list=data.selHis;
            
    			if (data) {
                   
            	 for(var i=0;i<list.length;i++){
            		
            		 dates.push(list[i].time); 
            		 gswd.push(list[i].gswd);
            		 hswd.push(list[i].hswd);
            		 gsyl.push(list[i].gsyl);
            		 hsyl.push(list[i].hsyl);
            		 ssll.push(list[i].ssll);
            		 ssrl.push(list[i].ssrl);
            		/* axdy.push(list[i].axdy);
            		 bxdy.push(list[i].bxdy);
            		 cxdy.push(list[i].cxdy); */
            		 axdl.push(list[i].axdl);
            		 bxdl.push(list[i].bxdl);
            		 cxdl.push(list[i].cxdl);
            		 /* gsyc.push(list[i].gsyc); */
                 }
                    myChart.hideLoading();    //隐藏加载动画
                    
                    myChart.setOption({        //载入数据
                        xAxis: {
                            data: dates    //填入X轴数据
                        },
                        series: [    //填入系列（内容）数据
                                      {
                                    // 根据名字对应到相应的系列
                                    name: '供水温度',
                                    data: gswd
                                },{
                                    name: '回水温度',
                                    data: hswd
                                },{
                                    name: '供水压力',
                                    data: gsyl
                                },{
                                    name: '回水压力',
                                    data: hsyl
                                },{
                                name: '瞬时流量',
                                data: ssll
                               },{
                                   name: '瞬时热量',
                                   data: ssrl
                                }/* ,{
                                      name: 'A项电压',
                                      data: axdy
                                },{
                                    name: 'B项电压',
                                    data: bxdy
                              },{
                                  name: 'C项电压',
                                  data: cxdy
                            }*/,{
                                name: 'A项电流',
                                data: axdl
                          },{
                              name: 'B项电流',
                              data: bxdl
                        },{
                            name: 'C项电流',
                            data: cxdl
                      }/*,{
                          name: '供回水压差',
                          data: gsyc
                    } */
                       ]
                    });
                    
             }
             else {
                 //返回的数据为空时显示提示信息
                 alert("图表请求数据为空，可能服务器暂未录入近五天的观测数据，您可以稍后再试！");
                   myChart.hideLoading();
             }
         
        },
         error : function(errorMsg) {
             //请求失败时执行该函数
             alert("图表请求数据失败，可能是服务器开小差了");
             myChart.hideLoading();        
         }
    })

    myChart.setOption(option);    //载入图表
         
    
    
    function lsqxSelS(){
    	  myChart.showLoading();    //数据加载完之前先显示一段简单的loading动画
    	 var gswd=[];        //温度数组（存放服务器返回的所有温度值）
         var hswd=[];        //湿度数组
         var gsyl=[];        //压强数组
         var hsyl=[];        //压强数组
         var ssll=[];        //雨量数组
         var ssrl=[];    //风速数组
         var axdy=[];    //风速数组
         var bxdy=[];    //风速数组
         var cxdy=[];    //风速数组
         var axdl=[];    //风速数组
         var bxdl=[];    //风速数组
         var cxdl=[];    //风速数组
         var gsyc=[];    //风速数组
         var dates=[];        //时间数组
     	var stateTime=$("#startTime").val();
    	var endTime=$("#endTime").val();
         $.ajax({    //使用JQuery内置的Ajax方法
        	 url : "lsqxSelS.action", 
     		async : false,
     		dataType : "json",
     		data : {
				"stateTime":stateTime,
				"endTime":endTime,
     		},     //请求内包含一个key为name，value为A0001的参数；服务器接收到客户端请求时通过request.getParameter方法获取该参数值
         dataType : "json",        //返回数据形式为json
         success : function(data) {
             //请求成功时执行该函数内容，result即为服务器返回的json对象
            	var list=data.selHis;
            
    			if (data) {
                   
            	 for(var i=0;i<list.length;i++){
            		
            		 dates.push(list[i].time); 
            		 gswd.push(list[i].gswd);
            		 hswd.push(list[i].hswd);
            		 gsyl.push(list[i].gsyl);
            		 hsyl.push(list[i].hsyl);
            		 ssll.push(list[i].ssll);
            		 ssrl.push(list[i].ssrl);
            		 axdy.push(list[i].axdy);
            		 bxdy.push(list[i].bxdy);
            		 cxdy.push(list[i].cxdy);
            		 axdl.push(list[i].axdl);
            		 bxdl.push(list[i].bxdl);
            		 cxdl.push(list[i].cxdl);
            		 gsyc.push(list[i].gsyc);
                 }
                    myChart.hideLoading();    //隐藏加载动画
                    myChart.clear();
                    myChart.setOption({        //载入数据
                        xAxis: {
                            data: dates    //填入X轴数据
                        },
                        series: [    //填入系列（内容）数据
                                      {
                                    // 根据名字对应到相应的系列
                                    name: '供水温度',
                                    data: gswd
                                },{
                                    name: '回水温度',
                                    data: hswd
                                },{
                                    name: '供水压力',
                                    data: gsyl
                                },{
                                    name: '回水压力',
                                    data: hsyl
                                },{
                                name: '瞬时流量',
                                data: ssll
                               },{
                                   name: '瞬时热量',
                                   data: ssrl
                                },{
                                      name: 'A项电压',
                                      data: axdy
                                },{
                                    name: 'B项电压',
                                    data: bxdy
                              },{
                                  name: 'C项电压',
                                  data: cxdy
                            },{
                                name: 'A项电流',
                                data: axdl
                          },{
                              name: 'B项电流',
                              data: bxdl
                        },{
                            name: 'C项电流',
                            data: cxdl
                      },{
                          name: '供回水压差',
                          data: gsyc
                    }
                       ]
                    });
                    
             }
             else {
                 //返回的数据为空时显示提示信息
                 alert("图表请求数据为空，可能服务器暂未录入近五天的观测数据，您可以稍后再试！");
                   myChart.hideLoading();
             }
         
        },
         error : function(errorMsg) {
             //请求失败时执行该函数
             alert("图表请求数据失败，可能是服务器开小差了");
             myChart.hideLoading();        
         }
    })

    myChart.setOption(option);    //载入图表	
    }
    </script>
	

</body>
</html>