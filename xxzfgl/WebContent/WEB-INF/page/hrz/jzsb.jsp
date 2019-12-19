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


background:url('../images/background/jzsb.png') no-repeat ;
background-size:95% 78%;


}
</style>
<script>

//循环泵
function showXhb(flag,xhbyx,xhbgz,xhbms,yxjd){
	var xhbgz;
	var xhbyx;
	var xhbms;
	var yxjds;
	var xhbycsd;
	layui.form.render();
	  layer.open({
		  skin:"alert-skin",
	        type: 1,
	        title: "1#循环泵",
	        area: '450px',
	        offset: '120px',
	        content: $("#xhb").html()
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


//补水泵
function showbsb(flag,xhbyx,xhbgz,xhbms,yxjd){
	var xhbgz;
	var xhbyx;
	var xhbms;
	var yxjds;
	var xhbycsd;
	layui.form.render();
	  layer.open({
		  skin:"alert-skin",
	        type: 1,
	        title: "1#补水泵",
	        area: '450px',
	        offset: '120px',
	        content: $("#bsb").html()
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

function showtjf(flag,xhbyx,xhbgz,xhbms,yxjd){
	var xhbgz;
	var xhbyx;
	var xhbms;
	var yxjds;
	var xhbycsd;
	layui.form.render();
	  layer.open({
		  skin:"alert-skin",
	        type: 1,
	        title: "1#补水泵",
	        area: '450px',
	        offset: '120px',
	        content: $("#tjf").html()
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


<script type="text/html" id="tjf">
    <form id="xhb" class="layui-form model-form" action="" method="PUT">

       <div class="layui-form-item" style="width:450px">
<div class="layui-inline">
            <label   class="layui-form-label" style="width:150px">调节阀编号</label>
</div>
           <div class="layui-inline">
           <span id="xhbbh"></span>
			<i class="layui-icon layui-icon-refresh" style="font-size: 15px; color: #1E9FFF;"><a style="font-size: 15px; color: #1E9FFF;" onclick="xhpsx()">刷新</a></i>                
		</div>
        </div>       
       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">控制方式：</label>
            <div class="layui-input-block">
            <button class="layui-btn" id="xhbyx" type="button"  onmousedown="msqd('0','循环泵')"  id="qingd">开度控制</button>
            <button class="layui-btn layui-btn-danger" id="xhbbyx" type="button"  onmousedown="msqd('1','循环泵')"  id="tingz">温度控制</button>
            </div>
        </div>
     	<div class="layui-form-item" style="width:450px">
		<div class="layui-inline">
            <label   class="layui-form-label" style="width:150px">温度控制</label>
		</div>
           <div class="layui-inline">
           
           <span id="xhbyxjd" style="background-color:#CCFFCC;text-align:center;font-size:18px;width:100px;hight:100px;display:block;" >恒温</span>
            </div>
        </div>

       
      <div class="layui-form-item" style="width:200px;  padding-left: 38%;">
        
            <div class="layui-inline">
         <button class="layui-btn" type="button" onclick="xhbylsd()"   id="tingz">恒温</button>
  			</div>
			<div class="layui-inline">            
			<button class="layui-btn layui-btn-danger" type="button" onclick="xhbylsd()"   id="tingz">时段</button>
  			</div>
        </div>
       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">自动温度设定</label>
            <div class="layui-input-block">
                <input style="width:50px;display:inline" autocomplete="off" id="xhbycsd"  name="xhbycsd"  class="layui-input" maxlength="12"/>bar
				<button class="layui-btn layui-btn-normal" type="button" onclick="xhbylsd()"   id="tingz">设定</button>
            </div>
        </div>
     <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">手动开度设定</label>
            <div class="layui-input-block">
                <input style="width:50px;display:inline" autocomplete="off" id="xhbycsd"  name="xhbycsd"  class="layui-input" maxlength="12"/>℃ &nbsp;
				<button class="layui-btn layui-btn-normal" type="button" onclick="xhbylsd()"   id="tingz">设定</button>
            </div>
        </div>
<div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">手动开度设定</label>
            <div class="layui-input-block">
                <input style="width:50px;display:inline" autocomplete="off" id="xhbycsd"  name="xhbycsd"  class="layui-input" maxlength="12"/>％ &nbsp;
				<button class="layui-btn layui-btn-normal" type="button" onclick="xhbylsd()"   id="tingz">设定</button>
            </div>
        </div>
   <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">舒适温度设定</label>
            <div class="layui-input-block">
                <input style="width:50px;display:inline" autocomplete="off" id="xhbycsd"  name="xhbycsd"  class="layui-input" maxlength="12"/>℃ &nbsp;
				<button class="layui-btn layui-btn-normal" type="button" onclick="xhbylsd()"   id="tingz">设定</button>
            </div>
        </div>
 <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">调阀开度反馈</label>
            <div class="layui-input-block">
                <input style="width:50px;display:inline" autocomplete="off" id="xhbycsd"  name="xhbycsd"  class="layui-input" maxlength="12"/>％ &nbsp;
				<button class="layui-btn layui-btn-normal" type="button" onclick="xhbylsd()"   id="tingz">设定</button>
            </div>
        </div>
    </form>

</script>

<script type="text/html" id="xhb">
    <form id="xhb" class="layui-form model-form" action="" method="PUT">

       <div class="layui-form-item" style="width:450px">
<div class="layui-inline">
            <label   class="layui-form-label" style="width:150px">循环泵编号</label>
</div>
           <div class="layui-inline">
           <span id="xhbbh"></span>
			<i class="layui-icon layui-icon-refresh" style="font-size: 15px; color: #1E9FFF;"><a style="font-size: 15px; color: #1E9FFF;" onclick="xhpsx()">刷新</a></i>                
		</div>
        </div>       
       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">自动许可：</label>
            <div class="layui-input-block">
            <button class="layui-btn" id="xhbyx" type="button"  onmousedown="msqd('0','循环泵')"  id="qingd">允许</button>
            <button class="layui-btn layui-btn-danger" id="xhbbyx" type="button"  onmousedown="msqd('1','循环泵')"  id="tingz">不允许</button>
            </div>
        </div>


        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">倒泵许可：</label>
            <div class="layui-input-block">
               <button class="layui-btn" type="button" onclick="xhbylsd()"   id="tingz">允许</button>
				<button class="layui-btn layui-btn-danger" type="button" onclick="xhbylsd()"   id="tingz">不允许</button>
            </div>
        </div>
 
       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">控制方式：</label>
            <div class="layui-input-block">
             <button class="layui-btn" type="button" id="plkz"  onmousedown="kgdfqd('1','启动','循环泵')" onmouseup="kgdfqd('0','启动','循环泵')"  id="qingd">频率控制</button>
             <button class="layui-btn layui-btn-danger" id="yckz" type="button" onmousedown="kgdfqd('1','停止','循环泵')" onmouseup="kgdfqd('0','停止','循环泵')" id="tingz">压差控制</button>

            </div>
        </div>
                      
       <div class="layui-form-item" style="width:200px;  padding-left: 38%;">
        
            <div class="layui-inline">
            <input class='layui-input' style="width:80px;" autocomplete="off" id="zlzrfk" value="运行状态"  name=""  class="layui-input" maxlength="12" />
  			</div>
			<div class="layui-inline">  
             <label   class="layui-form-label" style="width:35px">停止</label>          
			
  			</div>
        </div>
        <div class="layui-form-item" style="width:200px;  padding-left: 38%;">
        
            <div class="layui-inline">
          <input class='layui-input' type="float:left" style="width:80px;" autocomplete="off" value="故障状态" id="ycjdfk"  name=""  class="layui-input" maxlength="12" />
  			</div>
			<div class="layui-inline">            
			<label   class="layui-form-label" style="width:45px">无故障</label>
  			</div>
        </div>
         <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">使用循泵许可：</label>
            <div class="layui-input-block">
               <button class="layui-btn" type="button" onclick="xhbylsd()"   id="tingz">二用</button>
				<button class="layui-btn layui-btn-danger" type="button" onclick="xhbylsd()"   id="tingz">一用一备</button>
            </div>
        </div>
       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">运行时间清零：</label>
            <div class="layui-input-block">
               <button class="layui-btn" type="button" onclick="xhbylsd()"   id="tingz">清零</button>
				<button class="layui-btn layui-btn-danger" type="button" onclick="xhbylsd()"   id="tingz">不清零</button>
            </div>
        </div>
       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">补水泵压差设定</label>
            <div class="layui-input-block">
                <input style="width:50px;display:inline" autocomplete="off" id="xhbycsd"  name="xhbycsd"  class="layui-input" maxlength="12"/>bar
				<button class="layui-btn layui-btn-normal" type="button" onclick="xhbylsd()"   id="tingz">压差设定</button>
            </div>
        </div>
     <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">补水泵频率设定</label>
            <div class="layui-input-block">
                <input style="width:50px;display:inline" autocomplete="off" id="xhbycsd"  name="xhbycsd"  class="layui-input" maxlength="12"/>Hz
				<button class="layui-btn layui-btn-normal" type="button" onclick="xhbylsd()"   id="tingz">频率设定</button>
            </div>
        </div>
    </form>

</script>
<script type="text/html" id="bsb">
    <form id="xhb" class="layui-form model-form" action="" method="PUT">

       <div class="layui-form-item" style="width:450px">
<div class="layui-inline">
            <label   class="layui-form-label" style="width:150px">循环泵编号</label>
</div>
           <div class="layui-inline">
           <span id="xhbbh"></span>
			<i class="layui-icon layui-icon-refresh" style="font-size: 15px; color: #1E9FFF;"><a style="font-size: 15px; color: #1E9FFF;" onclick="xhpsx()">刷新</a></i>                
		</div>
        </div>       
       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">自动许可：</label>
            <div class="layui-input-block">
            <button class="layui-btn" id="xhbyx" type="button"  onmousedown="msqd('0','循环泵')"  id="qingd">允许</button>
            <button class="layui-btn layui-btn-danger" id="xhbbyx" type="button"  onmousedown="msqd('1','循环泵')"  id="tingz">不允许</button>
            </div>
        </div>


        <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">倒泵许可：</label>
            <div class="layui-input-block">
               <button class="layui-btn" type="button" onclick="xhbylsd()"   id="tingz">允许</button>
				<button class="layui-btn layui-btn-danger" type="button" onclick="xhbylsd()"   id="tingz">不允许</button>
            </div>
        </div>
 
       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">控制方式：</label>
            <div class="layui-input-block">
             <button class="layui-btn" type="button" id="plkz"  onmousedown="kgdfqd('1','启动','循环泵')" onmouseup="kgdfqd('0','启动','循环泵')"  id="qingd">频率控制</button>
             <button class="layui-btn layui-btn-danger" id="yckz" type="button" onmousedown="kgdfqd('1','停止','循环泵')" onmouseup="kgdfqd('0','停止','循环泵')" id="tingz">压差控制</button>

            </div>
        </div>
                      
       <div class="layui-form-item" style="width:200px;  padding-left: 38%;">
        
            <div class="layui-inline">
            <input class='layui-input' style="width:80px;" autocomplete="off" id="zlzrfk" value="运行状态"  name=""  class="layui-input" maxlength="12" />
  			</div>
			<div class="layui-inline">  
             <label   class="layui-form-label" style="width:35px">停止</label>          
			
  			</div>
        </div>
        <div class="layui-form-item" style="width:200px;  padding-left: 38%;">
        
            <div class="layui-inline">
          <input class='layui-input' type="float:left" style="width:80px;" autocomplete="off" value="故障状态" id="ycjdfk"  name=""  class="layui-input" maxlength="12" />
  			</div>
			<div class="layui-inline">            
			<label   class="layui-form-label" style="width:45px">无故障</label>
  			</div>
        </div>
         <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">使用循泵许可：</label>
            <div class="layui-input-block">
               <button class="layui-btn" type="button" onclick="xhbylsd()"   id="tingz">二用</button>
				<button class="layui-btn layui-btn-danger" type="button" onclick="xhbylsd()"   id="tingz">一用一备</button>
            </div>
        </div>
       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">运行时间清零：</label>
            <div class="layui-input-block">
               <button class="layui-btn" type="button" onclick="xhbylsd()"   id="tingz">清零</button>
				<button class="layui-btn layui-btn-danger" type="button" onclick="xhbylsd()"   id="tingz">不清零</button>
            </div>
        </div>
       <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">补水泵压差设定</label>
            <div class="layui-input-block">
                <input style="width:50px;display:inline" autocomplete="off" id="xhbycsd"  name="xhbycsd"  class="layui-input" maxlength="12"/>bar
				<button class="layui-btn layui-btn-normal" type="button" onclick="xhbylsd()"   id="tingz">压差设定</button>
            </div>
        </div>
     <div class="layui-form-item" style="width:450px">
            <label   class="layui-form-label" style="width:150px">补水泵频率设定</label>
            <div class="layui-input-block">
                <input style="width:50px;display:inline" autocomplete="off" id="xhbycsd"  name="xhbycsd"  class="layui-input" maxlength="12"/>Hz
				<button class="layui-btn layui-btn-normal" type="button" onclick="xhbylsd()"   id="tingz">频率设定</button>
            </div>
        </div>
    </form>

</script>
<body  style=" ">
 &nbsp;   &nbsp;   &nbsp;   <select id="hrzname" class="csinput" >
	    <option value="北京华誉.新乡商务大厦">新乡商务大厦</option>
	   </select> <input id="jk_search_btn" value="选择" type="button"> 
 <div class="bg">
   <div style="width:5%;height:3%;  position: absolute;left: 5%;top: 6%;">
	</div> 
	
	
	 
	<!-- 红色 -->
	<div style="width:5%;height:3%;  position: absolute;left: 2%;top: 22%;">
	 <span id="jssj1">h0 ℃</span><br/>
	 <span id="jssj2">h2 bar</span><br/>
	</div>	
		<!-- 蓝色 -->
	<div style="width:5%;height:3%;  position: absolute;left: 2%;top: 36%;">
	 <span id="jssj3">L1 ℃</span><br/>
	 <span id="jssj4">L2 bar</span><br/>
	</div>	
	
	
     <!-- 流量计 -->
     <div style="width:5%;height:3%;  position: absolute;left: 10%;top: 22%;">
	 <span>流量计</span><br/>
	 <span id="llj1">h1m³/h</span><br/>
	 <span id="llj2">h2 m³</span><br/>
	</div>	
	 <!-- 调节阀-->
     <div style="width:5%;height:3%;  position: absolute;left: 21%;top: 22%;">
	 <span>调节阀</span><br/>
	</div>
	
	
	<div id="tjf"  onmouseover = "over('tjf')" onmouseout="out('tjf')" style="width:3%;height:3%; background-color:blue;   position: absolute;left: 21%;top: 17%;" onclick="showtjf(1,'主机1总运行指示','1#主机远程就地反馈','1#主机制冷制热反馈','1号主机关机指示')">
	</div>
	
	
	<div style="width:5%;height:3%;  position: absolute;left: 21%;top: 24%;">
	 <span id="tjf1">h011</span><br/>
	</div>	
     <div style="width:5%;height:3%;  position: absolute;left: 35%;top: 40%;">
	 <span >板面</span><br/>
	</div>
	 
	 <!-- 循环泵---------------------- -->
	 
	<div style="width:5%;height:3%;  position: absolute;left: 55%;top: 25%;">
	 <span >1#循环泵</span><br/>
	</div>
	<div id="xhb1"  onmouseover = "over('xhb1')" onmouseout="out('xhb1')" style="width:3%;height:3%; background-color:blue;   position: absolute;left: 50%;top: 25%;" onclick="showXhb(1,'主机1总运行指示','1#主机远程就地反馈','1#主机制冷制热反馈','1号主机关机指示')">
	</div>
	<div style="width:5%;height:3%;  position: absolute;left: 55%;top: 40%;">
	 <span >2#循环泵</span><br/>
	</div>
	<div id="xhb2"  onmouseover = "over('xhb2')" onmouseout="out('xhb2')" style="width:3%;height:3%; background-color:blue;   position: absolute;left: 50%;top: 40%;" onclick="showXhb(2,'主机1总运行指示','1#主机远程就地反馈','1#主机制冷制热反馈','1号主机关机指示')">
	</div>
	
	
	
	<!-- 流量计2 -->
     <div style="width:5%;height:3%;  position: absolute;left: 65%;top: 20%;">
	 <span>流量计</span><br/>
	 <span id="llj3">Ll1 m³/h</span><br/>
	 <span id="llj4">Ll2 m³</span><br/>
	</div>
	<!-- 流量计右 -->
     <div style="width:5%;height:3%;  position: absolute;left: 85%;top: 20%;">
	 <span id="llj3">L温度 ℃</span><br/>
	 <span id="llj4">L压力 bar</span><br/>
	</div>
	   <div style="width:8%;height:3%;  position: absolute;left: 2%;top: 60%;">
	 <span>自来水流量计</span><br/>
	</div>
	   <div style="width:8%;height:3%;  position: absolute;left: 2%;top: 75%;">
	 <span>软化水流量计</span><br/>
	</div>  
			<!-- 自来水流量计 -->
	<div style="width:5%;height:3%;  position: absolute;left: 10%;top: 45%;">
	 <span id="zlsllj1">自V1 m³/h</span><br/>
	 <span id="zlsllj2">自V2 m³</span><br/>
	</div>	
			<!-- 软化水流量计 -->
	<div style="width:5%;height:3%;  position: absolute;left: 10%;top: 74%;">
	 <span id="zlsllj1">软V1 m³/h</span><br/>
	 <span id="zlsllj2">软V2 m³</span><br/>
	</div>	
		<div style="width:5%;height:3%;  position: absolute;left: 23%;top: 74%;">
	 <span id="">水箱</span><br/>
	</div>
	<div style="width:5%;height:3%;  position: absolute;left: 42%;top: 74%;">
	 <span id="zlsllj1">L补1 m³</span><br/>
	 <span id="zlsllj2">L补2 m³/h</span><br/>
	</div>	
		<div style="width:5%;height:3%;  position: absolute;left: 53%;top: 54%;">
	 <span id="">1#补水泵</span><br/>
	</div>
		<div style="width:5%;height:3%;  position: absolute;left: 53%;top: 73%;">
	 <span id="">2#补水泵</span><br/>
	</div>



	<div id="bsf1"  onmouseover = "over('bsf1')" onmouseout="out('bsf1')" 
	style="width:4%;height:5%; background-color:blue;   position: absolute;left: 58%;top: 56%;" onclick="showbsb(1,'主机1总运行指示','1#主机远程就地反馈','1#主机制冷制热反馈','1号主机关机指示')">
	</div>
	<div id="bsf2"  onmouseover = "over('bsf2')" onmouseout="out('bsf2')" 
	style="width:4%;height:5%; background-color:blue;   position: absolute;left: 58%;top: 68%;" onclick="showbsb(1,'主机1总运行指示','1#主机远程就地反馈','1#主机制冷制热反馈','1号主机关机指示')">
	</div>
	
	
	
	
	<div style="width:5%;height:3%;  position: absolute;left: 68%;top:64%;">
	 <span id="zlsllj1">管道 Hz</span><br/>
	</div>
	
	
	<div style="width:3%;height:3%;  position: absolute;left: 75%;top:46%;">
	 <span id="zlsllj1">除污器左 bar</span><br/>
	</div>
		<div style="width:3%;height:3%;  position: absolute;left: 85%;top:50%;">
	 <span >除污器</span><br/>
	</div>
	<div style="width:10%;height:3%;  position: absolute;left: 90%;top:45%;">
	 <span id="zlsllj1">除污器右 ℃</span><br/>
	  <span id="zlsllj1">除污器右 bar</span><br/>
	</div>
	<div style="width:20%;height:3%;  position: absolute;left: 75%;top:75%;">
	 除污器前后压差<span id="zlsllj1">011 bar</span><br/>
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