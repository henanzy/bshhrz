$(document).ready(function() {
	//表头固定
	var xincreatetableCont = $('#xincreate_table_body table tr th'); //获取th
	var xincreatetableScroll = $('#xincreate_table_body'); //获取滚动条同级
	xincreatetableScroll.on('scroll', scrollHandlexincreate);

	function scrollHandlexincreate() {
		var scrollTop = xincreatetableScroll.scrollTop();
		// 当滚动距离大于0时设置top及相应的样式
		if (scrollTop > 0) {
			xincreatetableCont.css({
				"top" : scrollTop + 'px',
				"marginTop" : "-1px",
				"backgroundColor" : "#EBEBEB"
			})
		} else { // 当滚动距离小于0时设置top及相应的样式 
			xincreatetableCont.css({
				"top" : scrollTop + 'px',
				"marginTop" : "0",
				"backgroundColor" : "#EBEBEB"
			})
		}
	}
	
	
	
	
	
	 function tableToExcel(){
	        //要导出的json数据
		   //列标题
	    	let str = '<tr><th>换热站</th><th>瞬时流量</th><th>瞬时热量</th><th>累计流量</th><th>累计热量</th>'+
	    	'<th>供水温度</th><th>回水温度</th><th>采集时间</th>';
	    	
	    	
	        str+='</tr>'
	        //循环遍历，每行加入tr标签，每个单元格加td标签
	        for(let i = 0 ; i < xinwordList.length ; i++ ){	        	
	          str+='<tr>';	         
	          for(let item in xinwordList[i]){
	              //增加\t为了不让表格显示科学计数法或者其他格式	        	  
	        		  str+=`<td>${ xinwordList[i][item] + '\t'}</td>`;   
	          }
	          str+='</tr>';	        	
	        }
	        //Worksheet名
	        let worksheet = 'Sheet1'
	        let uri = 'data:application/vnd.ms-excel;base64,';
	   
	        //下载的表格模板数据
	        let template = `<html xmlns:o="urn:schemas-microsoft-com:office:office" 
	        xmlns:x="urn:schemas-microsoft-com:office:excel" 
	        xmlns="http://www.w3.org/TR/REC-html40">
	        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
	        <head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet>
	          <x:Name>${worksheet}</x:Name>
	          <x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet>
	          </x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]-->
	          </head><body><table>${str}</table></body></html>`;
	        //下载模板
	        window.location.href = uri + base64(template)
	      }
	 
	 
		function base64 (s) { return window.btoa(unescape(encodeURIComponent(s))) }
		var wordExport = document.getElementById("dayin");
		wordExport.onclick = function(){
			var aID =  this.parentNode.getAttribute("id");
			tableToExcel();
		}
	
	
	
	
	var xinwordList = [];
	function jsArrChange(json){
		for (var i = 0 ; i < json.length ; i ++) {
			var arr1 = [];
			arr1[0] = json[i].hrz;
			arr1[1] = json[i].ssll;		
			arr1[2] = json[i].ssrl;
			arr1[3] = json[i].ljll;
			arr1[4] = json[i].ljrl;
			arr1[5] = json[i].gswd;
			arr1[6] = json[i].hswd;
			arr1[7] = json[i].time;
			xinwordList.push(arr1);
		};
	}
	jsArrChange(list);
	var current = 1;

	function pageInit(currentPage, pagesize) {
		current = currentPage; //将当前页存储全局变量
		pageCount = Math.ceil(xinwordList.length / pagesize); //一共分多少页
		currentNum.innerHTML = currentPage;
		num.innerHTML = xinwordList.length + "条";
		pages.innerHTML = pageCount;
		var startRow = (currentPage - 1) * pagesize; //开始显示的行
		var endRow = currentPage * pagesize - 1; //结束显示的行
		var endRow = (endRow > xinwordList.length) ? xinwordList.length : endRow; //如果结束行数大于总数目，显示总数目，否则结束行
		
		var html = "";
		for(var i = 0; i < xinwordList.length; i++) {
			if(i >= startRow && i <= endRow) { //通过间隔分隔数组
				if(i%2 == 1){
					html += "<tr class='gradeX odd'>";
				}else if(i%2 == 0){
					html += "<tr class='gradeX even'>";
				}
				
				for (var j = 0 ; j <xinwordList[i].length ; j ++) {
					
                    

                            html += "<td>" + xinwordList[i][j] + "</td>"
				}
				html += "</tr>";
			}
		}

		xinword_body.innerHTML = html;
	}

	select.onchange = function(ev) {
		pageInit(1, this.value)
	}
	first.onclick = function() {
		pageInit(1, select.value)
	}
	end.onclick = function() {
		pageInit(pageCount, select.value)
	}

	next.onclick = function() {
		var curr = current + 1;
		if(curr > pageCount) {
			return
		}
		pageInit(curr, select.value)
	}

	last.onclick = function() {
		var curr = current - 1;
		if(curr < 1) {
			return
		}
		pageInit(curr, select.value)
	}
	pageInit(1, 15);
	
	//分页样式
	$("nav li").click(function(){
		$("nav li").css("color","");
		$(this).css("color","#C5D52B");
		
	});
	
	//用户搜索
	$("#jk_search_btn").click(function(){
		
		$("#xinword_body").empty();
		$.ajax({
            type: "post",
            url: "selsbjk.action",
            dataType:'json',
         	data:{	
					"hrzname":$('#hrzname').val(),
				},
            dataType: "json",
             success: function (data) {
            	
            	var list=data.list;
            	 xinwordList.length=0;
            	 jsArrChange(list);
            	 pageInit(1, 15);
            },

        })
		
	    //修改按钮	
	});

	
	//新增按钮
	$("#increase_btn").click(function(){

		$("#increase_word").show();
	});
	
	//关闭新增
	$(".close").click(function(){
		$("#increase_word").hide();
		$("#change_word").hide();
	});
	//确定新增
	$("#word_increase_btn").click(function(){
		//获取到新增表单的信息
		var increainp = $("#increase_word .increase_word_input");
		var increaseValue = [];
		for(var i = 0 ; i < increainp.length ; i ++){
			increaseValue.push(increainp[i].value);
		}
		
		/*alert(increaseValue);*/
		$("#increase_word").hide();
	});
	
	
	
	
	
	//排序
	var tableObject = $('#xincreate_table_body table'); //获取id为xincreate_table_body的table对象
	var tbHead = tableObject.children('thead'); //获取table对象下的thead
	var tbHeadTh = tbHead.find('tr th'); //获取thead下的tr下的th
	var tbBody = tableObject.children('tbody'); //获取table对象下的tbody
	var tbBodyTr = tbBody.find('tr'); //获取tbody下的tr
	
	var sortIndex = 1;
	
	tbHeadTh.each(function() { //遍历thead的tr下的th
		var thisIndex = tbHeadTh.index($(this)); //获取th所在的列号

		var type ="";
		$(this).click(function() { //给当前表头th增加点击事件
			tbHeadTh.find("span").show();
			if(sortIndex%2 == 1){//奇数偶数显示
				$(this).find(".span-up").show();
				$(this).find(".span-down").hide();
			}else{
				$(this).find(".span-up").hide();
				$(this).find(".span-down").show();
			}
			var table = $('#xincreate_table_body table'); 
			var body = table.children('tbody'); 
			var bodytr = body.find('tr');
			checkColumnValue(thisIndex,table,bodytr);
		});
		
	});

	//对表格排序
	function checkColumnValue(index,table,bodytr) {
		var trsValue = new Array();

		bodytr.each(function() {
			var tds = $(this).find('td');
			//获取行号为index列的某一行的单元格内容与该单元格所在行的行内容添加到数组trsValue中
			var data = $(tds[index]).html();//parseFloat($(tds[index]).html()) || 
			if(isNaN(data)&&!isNaN(Date.parse(data))){
			    type = "string";
			}else if (parseFloat(data)) {
				type = "number";
			}else{
				type = "string";
			}
			
			trsValue.push(type + ".separator" + $(tds[index]).html() + ".separator" + $(this).html());
			$(this).html("");
		});

		var len = trsValue.length;

		if(sortIndex%2 == 0) {
			//如果已经排序了则直接倒序
			trsValue.reverse();
		} else {
			for(var i = 0; i < len; i++) {
				//split() 方法用于把一个字符串分割成字符串数组
				//获取每行分割后数组的第一个值,即此列的数组类型,定义了字符串\数字\Ip
				type = trsValue[i].split(".separator")[0];
				for(var j = i + 1; j < len; j++) {
					//获取每行分割后数组的第二个值,即文本值
					value1 = trsValue[i].split(".separator")[1];
					//获取下一行分割后数组的第二个值,即文本值
					value2 = trsValue[j].split(".separator")[1];
					//接下来是数字\字符串等的比较
					if(type == "number") {
						value1 = value1 == "" ? 0 : value1;
						value2 = value2 == "" ? 0 : value2;
						if(parseFloat(value1) > parseFloat(value2)) {
							var temp = trsValue[j];
							trsValue[j] = trsValue[i];
							trsValue[i] = temp;
						}
					} else {
						if(value1.localeCompare(value2) > 0) { //该方法不兼容谷歌浏览器
							var temp = trsValue[j];
							trsValue[j] = trsValue[i];
							trsValue[i] = temp;
						}
					}
				}
			}
		}

		for(var i = 0; i < len; i++) {
			table.find("tbody tr:eq(" + i + ")").html(trsValue[i].split(".separator")[2]);
		}

		sortIndex += 1;
		
		//修改按钮
		$(".xinjgd_change").click(function(){
			xin_change(this);
		});
		
		$("#word_change_btn").click(function(){
			change_btn();
		});
		$(".xinjgd_del").click(function(){
			xin_del(this);
		});
	}
	
	
	
	
	//修改按钮
	$(".xinjgd_change").click(function(){
		xin_change(this);
	});
	
	$("#word_change_btn").click(function(){
		change_btn();
	});
	
	
	//删除按钮
	$(".xinjgd_del").click(function(){
		xin_del(this);
	});
	
	
	
});

function xin_change(p){
$("#change_word").show();
var xintr = $(p).parent().parent().children();
//修改数据  
var changewordList = [];
/*	for(var x = 0 ; x < 21 ; x ++){*/
	
	changewordList.push(xintr[0].innerHTML);
	changewordList.push(xintr[1].innerHTML);
	changewordList.push(xintr[2].innerHTML);
	changewordList.push(xintr[12].innerHTML);
	changewordList.push(xintr[21].innerHTML);
/*	}*/

var changeInput = $("#change_word .change_word_input");
for(var i = 0;i < changeInput.length;i ++){
	if(i>0){
		$("#change_word .change_word_input")[i].value = changewordList[i+1];
	}else{
		$("#change_word .change_word_input")[i].value = changewordList[i];
	}
	
}
}





function getTime(lxdh) {  
var nS = new Date(lxdh);
var year=nS.getFullYear(); 
var mon = nS.getMonth()+1; 
if(mon < 10){
	mon = "0"+mon;
}
var day = nS.getDate(); 
if(day < 10){
	day = "0"+day;
}
var hours = nS.getHours(); 
if(hours < 10){
	hours = "0"+hours;
}
var minu = nS.getMinutes(); 
if(minu < 10){
	minu = "0"+minu;
}
var sec = nS.getSeconds(); 
if(sec < 10){
	sec = "0"+sec;
}
 
return year+'-'+mon+'-'+day+' '+hours+':'+minu+':'+sec; 
}	