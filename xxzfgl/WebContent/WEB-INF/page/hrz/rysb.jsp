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


background:url('../images/background/rysb.png') no-repeat ;
background-size:99% 75%;


}
</style>
<script type="text/javascript">

function showQsb(flag,xhbyx,xhbgz,xhbms,yxjd){
	var xhbgz;
	var xhbyx;
	var xhbms;
	var yxjds;
	var xhbycsd;
	layui.form.render();
	  layer.open({
		  skin:"alert-skin",
	        type: 1,
	        title: "1#潜水泵",
	        area: '450px',
	        offset: '120px',
	        content: $("#qsb").html()
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
			
				  $("#xhbbh").html(flag)
			}
	  });
	/*   },1000); */ 
	  layui.form.render();
	
	
}

</script>
<script type="text/html" id="qsb">
    <form id="xhb" class="layui-form model-form" action="" method="PUT">

       <div class="layui-form-item" style="width:450px">
<div class="layui-inline">
            <label   class="layui-form-label" style="width:150px">潜水泵编号</label>
</div>
           <div class="layui-inline">
           <span id="xhbbh"></span>
			<i class="layui-icon layui-icon-refresh" style="font-size: 15px; color: #1E9FFF;"><a style="font-size: 15px; color: #1E9FFF;" onclick="xhpsx()">刷新</a></i>                
		</div>
        </div>       
       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">控制方式：</label>
            <div class="layui-input-block">
            <button class="layui-btn" id="xhbyx" type="button"  onmousedown="msqd('0','手动')"  id="qingd">手动</button>
            <button class="layui-btn layui-btn-danger" id="xhbbyx" type="button"  onmousedown="msqd('1','自动')"  id="tingz">自动</button>
            </div>
        </div>
     	<div class="layui-form-item" style="width:450px">
		<div class="layui-inline">
            <label   class="layui-form-label" style="width:150px">1#泵运行状态</label>
		</div>
           <div class="layui-inline">
           
           <span id="xhbyxjd" style="background-color:#CCFFCC;text-align:center;font-size:18px;width:100px;hight:100px;display:block;" >恒温</span>
            </div>
        </div>
		<div class="layui-form-item" style="width:450px">
		<div class="layui-inline">
            <label   class="layui-form-label" style="width:150px">2#泵运行状态</label>
		</div>
           <div class="layui-inline">
           
           <span id="xhbyxjd" style="background-color:#CCFFCC;text-align:center;font-size:18px;width:100px;hight:100px;display:block;" >恒温</span>
            </div>
        </div>
      
       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">潜水泵频率设定</label>
            <div class="layui-input-block">
                <input style="width:50px;display:inline" autocomplete="off" id="xhbycsd"  name="xhbycsd"  class="layui-input" maxlength="12"/>HZ&nbsp;&nbsp;
				<button class="layui-btn layui-btn-normal" type="button" onclick="xhbylsd()"   id="tingz">设定</button>
            </div>
        </div>
     <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">潜水泵频率反馈</label>
            <div class="layui-input-block">
                <input style="width:50px;display:inline" autocomplete="off" id="xhbycsd"  name="xhbycsd"  class="layui-input" maxlength="12"/>HZ&nbsp;&nbsp;
				<button class="layui-btn layui-btn-normal" type="button" onclick="xhbylsd()"   id="tingz">设定</button>
            </div>
        </div>
<div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">瞬时总流量设定</label>
            <div class="layui-input-block">
                <input style="width:50px;display:inline" autocomplete="off" id="xhbycsd"  name="xhbycsd"  class="layui-input" maxlength="12"/>m³/h
				<button class="layui-btn layui-btn-normal" type="button" onclick="xhbylsd()"   id="tingz">设定</button>
            </div>
        </div>
   <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">瞬时总流量反馈</label>
            <div class="layui-input-block">
                <input style="width:50px;display:inline" autocomplete="off" id="xhbycsd"  name="xhbycsd"  class="layui-input" maxlength="12"/>m³/h
				<button class="layui-btn layui-btn-normal" type="button" onclick="xhbylsd()"   id="tingz">设定</button>
            </div>
        </div>
    </form>

</script>
<body  style=" ">
 &nbsp;   &nbsp;   &nbsp;   <select id="hrzname" class="csinput" >
	    <option value="北京华誉.新乡商务大厦">新乡商务大厦</option>
	   </select> <input id="jk_search_btn" value="选择" type="button"> 
 <div class="bg">
   <div style="width:8%;height:3%;  position: absolute;left: 1%;top: 15%;">
   <span>热源回水管道</span>
	</div> 
	 <div style="width:8%;height:3%;  position: absolute;left: 58%;top: 15%;">
   <span>热源出水管道</span>
	</div> 
	<div style="width:15%;height:3%; font-size:5px; position: absolute;left: 13%;top: 19%;">
	集中器温度: <span id="jzqwd">011℃</span><br/>
	集中器压力: <span id="jzqyl">012 bar</span><br/>
	</div>	
	<div style="width:15%;height:3%; font-size:5px; position: absolute;left: 45%;top: 19%;">
	分水器温度: <span id="fsqwd">011℃</span><br/>
	分水器压力: <span id="fsqyl">012 bar</span><br/>
	</div>
	
	<div style="width:15%;height:3%; font-size:5px; position: absolute;left: 32%;top: 25%;">
	分集水器压差: <span id="fjsqyc">011 bar</span><br/>
	</div>
	
	<div style="width:10%;height:3%;  position: absolute;left: 21%;top: 28%;">
     <span style="color:#FFF">集水器</span>
	</div> 
	<div style="width:10%;height:3%;  position: absolute;left: 53%;top: 28%;">
     <span style="color:#FFF">分水器</span>
	</div> 		
	 <div style="width:8%;height:3%;  position: absolute;left: 19%;top: 50%;">
     <span>回灌井</span>
	</div> 
	<div style="width:10%;height:3%;text-align: center; position: absolute;left: 17%;top: 58%;">
	  <span id="hgj">012 m</span><br/>
	  <span>瞬时/累计流量</span><br/>
	  <span id="ssll">012 m³/h</span><br/>
	  <span id="ljll">012 m³</span><br/>
	</div>
		<div style="width:5%;height:3%;  position: absolute;left: 11.5%;top: 73%;">
	 <span id="">1#热源井</span><br/>
	</div>	
	<div style="width:5%;height:3%;  position: absolute;left: 28%;top: 73%;">
	 <span id="">2#热源井</span><br/>
	</div>	
	
		<div style="width:10%;height:3%;text-align: center; position: absolute;left: 34%;top: 58%;">
	  <span id="hgj">012 m</span><br/>
	  <span>瞬时/累计流量</span><br/>
	  <span id="ssll">012 m³/h</span><br/>
	  <span id="ljll">012 m³</span><br/>
	</div>
	<div style="width:5%;height:3%;  position: absolute;left: 28%;top: 73%;">
	 <span id="">2#热源井</span><br/>
	</div>
	
	
	
	
	<div style="width:5%;height:3%;  position: absolute;left: 46%;top: 63%;">
	 <span id="">1#潜水泵</span><br/>
	</div>	
	
		<div style="width:5%;height:3%;  position: absolute;left: 63%;top: 63%;">
	 <span id="">2#潜水泵</span><br/>
	</div>	
	
	<div id="qsb1"  onmouseover = "over('qsb1')" onmouseout="out('qsb1')" style="width:3%;height:3%; background-color:blue;   position: absolute;left: 46%;top: 60%;" onclick="showQsb(1,'主机1总运行指示','1#主机远程就地反馈','1#主机制冷制热反馈','1号主机关机指示')">
	</div>
	
	
	<div id="qsb2"  onmouseover = "over('qsb2')" onmouseout="out('qsb2')" style="width:3%;height:3%; background-color:blue;   position: absolute;left: 64%;top: 60%;" onclick="showQsb(2,'主机1总运行指示','1#主机远程就地反馈','1#主机制冷制热反馈','1号主机关机指示')">
	</div>
	
	
	
	<div style="width:8%;height:3%;  position: absolute;left: 53%;top: 50%;">
     <span>出水井</span>
	</div> 
		<div style="width:10%;height:3%;text-align: center; position: absolute;left: 52%;top: 56.8%;">
	 <span id="hgj">012 Hz</span><br/>
	  <span id="hgj">012 m</span><br/>
	  <span>瞬时/累计流量</span><br/>
	  <span id="ssll">012 m³/h</span><br/>
	  <span id="ljll">012 m³</span><br/>
	</div>
	<div style="width:5%;height:3%;  position: absolute;left: 46%;top: 73%;">
	 <span id="">3#热源井</span><br/>
	</div>	
	<div style="width:5%;height:3%;  position: absolute;left: 63%;top: 73%;">
	 <span id="">4#热源井</span><br/>
	</div>	
		<div style="width:10%;height:3%;text-align: center; position: absolute;left: 67%;top: 56.8%;">
	 <span id="hgj">012 Hz</span><br/>
	  <span id="hgj">012 m</span><br/>
	  <span>瞬时/累计流量</span><br/>
	  <span id="ssll">012 m³/h</span><br/>
	  <span id="ljll">012 m³</span><br/>
	</div>
	
	<div style="width:18%;height:3%; font-size:5px; position: absolute;left: 72%;top: 15%;">
	热源井总瞬时流量: <span id="ryjzssll">011 m³/h</span><br/>
	热源井总累计流量: <span id="ryjzljll">012 m³</span><br/>
	</div>
	<div style="width:18%;height:3%; font-size:5px; position: absolute;left: 76%;top: 31%;">
	  <span id="">1#除污器流量计</span><br/>
	</div>
		<div style="width:18%;height:3%; font-size:5px; position: absolute;left: 88%;top: 28%;">
	  <span id="">1#除沙器</span><br/>
	</div>
	<div style="width:18%;height:3%; font-size:5px; position: absolute;left: 76%;top: 50%;">
	  <span id="">1#除污器流量计</span><br/>
	</div>
	<div style="width:18%;height:3%; font-size:5px; position: absolute;left: 88%;top: 45%;">
	  <span id="">2#除沙器</span><br/>
	</div>
		<div style="width:18%;height:3%; font-size:5px; position: absolute;left: 78%;top: 55%;">
	   1#除污器瞬时流量 <span id="1cwqrrll">012 m³/h</span><br/>
	   1#除污器累计流量<span id="1cwqljll">012 m³</span><br/>
	   2#除污器瞬时流量 <span id="2cwqssll">012 m³/h</span><br/>
	   2#除污器累计流量<span id="2cwqljll">012 m³</span><br/>
	</div>
</div>
<script type="text/javascript">
function over(x){
	 /* border: 1px; border-color:#F00; border-style:solid; */
	 document.getElementById(x).style.border="1px solid red";

}
function out(x){
	 document.getElementById(x).style.border="0px solid red";
}
</script>
</body>
</html>