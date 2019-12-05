<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
 <meta name="viewport" content="initial-scale=1.0, user-scalable=no"/> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="../js/layer/2.4/skin/layer.css" media="screen" />
<script type="text/javascript" src="../js/layer/2.4/layer.js"></script>
<script type="text/javascript" src="../js/layui/layui.js"></script>
<script type="text/javascript" src="../js/layui/layui.all.js"></script>
<link rel="stylesheet" type="text/css" href="../css/reset.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../css/text.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../css/fonts/ptsans/stylesheet.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../css/fluid.css" media="screen" />

<link rel="stylesheet" type="text/css" href="../js/layer/2.4/skin/layer.css" media="screen" />
<script type="text/javascript" src="../js/layer/2.4/layer.js"></script>
<script type="text/javascript" src="../js/layui/layui.js"></script>
<script type="text/javascript" src="../js/layui/layui.all.js"></script>
<link rel="stylesheet" type="text/css" href="../js/layui/css/layui.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../css/mws.style.css" media="screen" />
<link rel="stylesheet" type="text/css" href="../css/icons/icons.css"  />
<link rel="stylesheet" type="text/css" href="../css/admin-all.css"media="screen" /> 

<link rel="stylesheet" type="text/css" href="../css/mws.theme.css" media="screen" />


<script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>

<script type="text/javascript" src="../plugins/jimgareaselect/jquery.imgareaselect.min.js"></script>
<script type="text/javascript" src="../plugins/jquery.dualListBox-1.3.min.js"></script>
<script type="text/javascript" src="../plugins/jgrowl/jquery.jgrowl.js"></script>
<script type="text/javascript" src="../plugins/jquery.filestyle.js"></script>
<script type="text/javascript" src="../plugins/fullcalendar/fullcalendar.min.js"></script>
<script type="text/javascript" src="../plugins/jquery.dataTables.js"></script>
<script type="text/javascript" src="../plugins/flot/jquery.flot.min.js"></script>
<script type="text/javascript" src="../plugins/flot/jquery.flot.pie.min.js"></script>
<script type="text/javascript" src="../plugins/flot/jquery.flot.stack.min.js"></script>
<script type="text/javascript" src="../plugins/flot/jquery.flot.resize.min.js"></script>
<script type="text/javascript" src="../plugins/colorpicker/colorpicker.js"></script>
<script type="text/javascript" src="../plugins/tipsy/jquery.tipsy.js"></script>
<script type="text/javascript" src="../plugins/sourcerer/Sourcerer-1.2.js"></script>
<script type="text/javascript" src="../plugins/jquery.placeholder.js"></script>
<script type="text/javascript" src="../plugins/jquery.validate.js"></script>
<script type="text/javascript" src="../plugins/jquery.mousewheel.js"></script>
<script type="text/javascript" src="../plugins/spinner/ui.spinner.js"></script>
<script type="text/javascript" src="../js/jquery-ui.js"></script>

<script type="text/javascript" src="../js/mws.js"></script>
<script type="text/javascript" src="../js/demo.js"></script>
<script type="text/javascript" src="../js/themer.js"></script>
<style type="text/css">

html{height:98%}
body{height:98%;margin:0px;padding:0px}
#container{height:100%}
#message{width:20%}
#message{height:100%}


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
	
.table-th-css {
		position: relative !important;
		top: 0;
	}	
#increase_word
	{
		display:none; 
		position: fixed; 
		left: 0;
	    top:0;
	    right:0;
	    bottom:0;
	    z-index: 100;
		background-color:rgba(0,0,0,0.6);
	}
	
	  .alert-skin .layui-layer-title  {
  background-color: #333;
  color: #C5D52B;
}
</style>
  <!--引入地图包，地图包网址的ak属性是你在百度地图开放平台上申请的秘钥-->
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=LVGx0VQjWbumYXVBlLFXQiG90Ak2s94q"></script>
  <!--引入jquery-->
  <script src="http://lib.sinaapp.com/js/jquery/1.9.1/jquery-1.9.1.min.js"></script>
<title>地址解析</title>

</head>
<body>
<div id="container"></div>
<div>
    <input id="setFitView" type="button" class="btn" value="地图自适应显示" />
</div>
<!-- <div class="info">
    <div id="centerCoord"></div>
    <div id="tips"></div>
</div> -->
<div id="increase_word">
			<div class="mws-panel grid_4"
				style="width: 300px; min-width: 300px; ">
				
				<div class="mws-panel-body" style="height: 170px;">
					<form class="mws-form" action="" method="post">
						<table class="mws-table">
					<tr style="height:30px;text-align:right;">
					<th >投运面积（万m）</th> <th>10.40</th>
					</tr>
					<tr style="height:30px">
					<th>昨日应供热量（GJ）</th> <th>19.64</th>
					</tr>
					<tr style="height:30px">
					<th>昨日实供热量（GJ）</th> <th>19.40</th>
					</tr>
					<tr style="height:30px">
					<th>今日应供热量（GJ）</th> <th>19.64</th>
					</tr>
					<tr style="height:30px">
					<th>今日累计热量（GJ）</th> <th>12.40</th>
					</tr>
					<tr style="height:30px">
					<th>指标剩余热量（GJ）</th> <th>7.24</th>
					</tr>
						</table>
					</form>
				</div>
			</div>
			
		</div>
        
 <script src="https://cache.amap.com/lbs/static/es5.min.js"></script>
  <script src="https://webapi.amap.com/maps?v=1.4.15&key=ef9a51f031e725d524e057c1e62b103f"></script>
<script type="text/javascript">
  $(function(){
	    //初始化地图
	    var map = new AMap.Map('container', {
	    	center: [113.883991,35.302616],
	        /* resizeEnable: true, //是否监控地图容器尺寸变化 */
	        mapStyle: "amap://styles/darkblue",
	        zoom: 3,
	        viewMode:'3D',
			size: new AMap.Size(24, 24),
	        resizeEnable: true, 
	        
	    });
	    map.setZoom(3);//最后再设置缩放级别
	   /*  map.moveCamera(CameraUpdateFactory.zoomTo(3)); */
	    /* aMap.moveCamera(CameraUpdateFactory.newCameraPosition(new CameraPosition(new LatLng(aMapLocation.getLatitude(), aMapLocation.getLongitude()), 16, 0, 0))) */

	    var markers = [{
	        icon: '../images/navimap/normal.png',
	        position: [113.9267500000,35.3032300000],
	        title:'新乡商务大厦'
	    },{
	        icon: '../images/navimap/normal.png',
	        position: [116.621476,39.904907],
	        title:'北京华誉总部'
	    }];
	    markers.forEach(function(marker) {
	        new AMap.Marker({
	            map: map,
	            icon: marker.icon,
	            position: [marker.position[0], marker.position[1]],
	            offset: new AMap.Pixel(-13, -30)
	        });
	    });

	    
	    
	    
	 
	    // 添加一些分布不均的点到地图上,地图上添加三个点标记，作为参照
	    markers.forEach(function(marker) {
	        new AMap.Marker({
	            map: map,
	            icon: marker.icon,
	            title:marker.title,
	            position: [marker.position[0], marker.position[1]],
	            offset: new AMap.Pixel(-13, -30)
	        });
	    });
	 
	//  自适应
	    map.setFitView();
	      map.on('complete', function() {
	        var amapicon = $(".amap-icon");
	        $(".amap-icon img").css("z-index","1");
		    	var html = "<div class='warnIcon'></div>"
		    	amapicon.append(html);
		    
	    });
	      
	      var onMarkerClick  =  function(e) {
	          infoWindow.open(map, e.target.getPosition());//打开信息窗体
	          //e.target就是被点击的Marker
	      } 
	      //为地图注册click事件获取鼠标点击出的经纬度坐标
	          var clickEventListener = map.on('click', function(e) {
	    	  
	    	  var lng=e.lnglat.lng+"";
	    	  var lat=e.lnglat.lat+"";
	    	  var ln=lng.split(".")[0];
	    	  var la=lat.split(".")[0];
	    	  if(ln=="113"&&la=="35"){

		    	  window.open("<%=basePath%>sbkzCon/xtkz.action", "Conframe");
	    	  }
	          });
	      
	      /* markers.on('click',onMarkerClick); */
	      
	    <%--   marker.on('click',function(n){
	    		var jdX=n.point.lng;
	    		var wdY=n.point.lat
	    		/* alert(jdX);
	    		alert(wdY); */
	    	    window.open("<%=basePath%>sbkzCon/xtkz.action", "Conframe");
	    		
	    	}); --%>
	    <%--   map.addEventListener("click", function(n){
	    		var jdX=n.point.lng;
	    		var wdY=n.point.lat
	    		/* alert(jdX);
	    		alert(wdY); */
	    	    window.open("<%=basePath%>sbkzCon/xtkz.action", "Conframe");
	    		
	    	}) --%>
	    	
 }); 

 
<%-- 
$(document).ready(function(){
	var local = layui.data('layui');
	  layer.open({
	    type: 1
	    ,title: '供热量信息',
	    skin:"alert-skin"
	    ,shade: false
	    ,offset: 'rt'
	    ,id: 'Notice'
	    ,area: ['320px', '250px']
	    ,moveType: 0
	    ,resize: false
	    ,content:$("#increase_word").html()
	  });
	
var map = new BMap.Map("container"); // 创建地图实例
// var point = new BMap.Point("义马市"); // 创建点坐标 郑州市坐标113.631349, 34.753488
map.centerAndZoom("郑州市高新区", 15); // 初始化地图，设置中心点坐标和地图级别
map.enableScrollWheelZoom();
map.addControl(new BMap.NavigationControl());
map.addControl(new BMap.ScaleControl());
map.addControl(new BMap.OverviewMapControl());
map.addControl(new BMap.MapTypeControl());
var dw=new BMap.GeolocationControl({enableAutoLocation:true});//自动定位控件
map.addControl(dw);
var dwxx=dw.GeolocationControl;
 dw.addEventListener("locationSuccess",function(){
alert(dwxx);
});
dw.addEventListener("locationError",function(){
alert("定位失败");
}); 



map.addEventListener("click", function(n){
	var jdX=n.point.lng;
	var wdY=n.point.lat
	/* alert(jdX);
	alert(wdY); */
    window.open("<%=basePath%>sbkzCon/xtkz.action", "Conframe");
	
})
/* setInterval(function() { */
	$.ajax({
		url :"findJW.action",
		async : false,
		dataType : "json",
		success : function(data) {
			/* var d = data.xqList; */
			/* 	var pointArray = new Array(); */
				/* ../images/map/MapTp.png */
			    var myIcon = new BMap.Icon("../images/map/MapTp.gif", new BMap.Size(300,157));
				var marker = new BMap.Marker(new BMap.Point("113.56457","34.80621"),{icon:myIcon}); // 创建点正弘高新数码港
				var marker1 = new BMap.Marker(new BMap.Point("113.55105","34.80390"),{icon:myIcon}); // 创建点郑州附中小学
				var marker2 = new BMap.Marker(new BMap.Point("113.56261","34.80115"),{icon:myIcon}); // 创建点汉庭酒店
				
				map.addOverlay(marker);
				map.addOverlay(marker1); 
				map.addOverlay(marker2); //增加点
				 var labe = new BMap.Label("一委站",{offset:new BMap.Size(20,-10)});
				 var labe1 = new BMap.Label("二委站",{offset:new BMap.Size(20,-10)});
				 var labe3 = new BMap.Label("教育局站",{offset:new BMap.Size(20,-10)});
				marker.setLabel(labe);
				marker1.setLabel(labe1);
				marker2.setLabel(labe3);
				/*pointArray[0] = new BMap.Point("113.6016041324","34.7463192904");
				pointArray[1] = new BMap.Point("113.6056837213","34.7453524891");
				pointArray[2] = new BMap.Point("113.6061142748","34.7436963998"); */
		/* 	for(var i=0;i<d.length;i++){
				var marker = new BMap.Marker(new BMap.Point(d[i].jd, d[i].wd)); // 创建点
				map.addOverlay(marker);    //增加点
				var labe = new BMap.Label(d[i].xqName+d[i].avgWd+"℃",{offset:new BMap.Size(20,-10)});
				marker.setLabel(labe);
				pointArray[i] = new BMap.Point(d[i].jd, d[i].wd);
				
			} */
		}
		});
/* 	},1000); */
}) 
 --%>


</script>
</body>

</html>
