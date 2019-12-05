<!-- highChart插件的使用 ，这个是可以实现动态数据的更新-->


<script type="text/javascript">

//请求后获取数据,以便后面使用
var mydata = null;

var mychart = null;

Highcharts.setOptions({
    global: {//横轴为时间轴，下面的语句是设置时区
        useUTC: false
    }
});

function activeLastPointToolip(chart) {
    var points = chart.series[0].points;
    chart.tooltip.refresh(points[points.length -1]);
}

var options = {
    chart: {
        type: 'spline',
        renderTo: 'main',
        animation: Highcharts.svg, 
        marginRight: 10,
        events: {
            load: function () {//load表示的是在图表加载完时触发
                var series = this.series[0],
                    chart = this;

                    /* 
                    setInterval(function () {//setInterval是设置定时、延时,会不停的调用函数或者表达式
                    var x = (new Date()).getTime(); // current time

                    //alert("数据库时间：" + mydata.categories[index] + "-----系统时间：" + x)

                    if(x==mydata.categories[index]) {
                        y = mydata.data[index];//如果时间刚好对上，那么就画点
                    } else {
                        if(index==0) {
                            y = 0;
                        }else {
                            y = mydata.data[index-1];//否则就将上一个点的值再画一遍
                        }
                    }
                    index = index + 1;//进行遍历
                    series.addPoint([x, y], true, true);
                    activeLastPointToolip(chart)
                }, 3000);//设置每3秒调用一次前面的函数或者表达式function(){...}
                */

                setInterval(function () {//setInterval是设置定时、延时,会不停的调用函数或者表达式

                    $.ajax({
                       url : '${path}/getHisDates',
                       type : 'GET',
                       dataType : 'text',
                       async : false, //同步处理后面才能处理新添加的series
                       //contentType: "application/x-www-form-urlencoded; charset=utf-8", 
                       success : function(rntData){

                         console.info("调用成功：" + rntData);
                         mydata = rntData;
                         var x = (new Date()).getTime(); // current time

                        /*这里需要说明的y轴的数据是后台传过来是字符串，而这里的传过的需要的数字，
                         *所以这里必须对他进行转换，则将无法进行绘图
                         */
                         var y = parseFloat(rntData);

                         series.addPoint([x,y], true, true);
                         activeLastPointToolip(chart)
                       }
                    });


                }, 3000000);//每过3s调用一次接口


            }
        }
    },

    lang: {//汉化菜单栏
        printChart:"打印图表",
        downloadJPEG:"下载JPEG图片",
        downloadPDF:"下载PDF文档",
        downloadPNG:"下载PNG图片",
        downloadSVG:"下载SVG矢量图",
        contextButtonTitle:"导出菜单"
    },

    title: {
        text: '动态模拟实时数据'
    },

    xAxis: {
        type: 'datetime',
        tickPixelInterval: 150//设置刻度间隔 。该参数对分类坐标轴无效。对于 Y 轴，其默认值是72，X 轴则是 100
    },

    yAxis: {
        title: {
            text: '值'
        },
        plotLines: [{
            value: 0,
            width: 1,
            color: '#808080'
        }]
    },

    tooltip: {
        formatter: function () {
            return '<b>' + this.series.name + '</b><br/>' +
                Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) + '<br/>' +
                Highcharts.numberFormat(this.y, 4);//保留4位小数
        }
    },

    legend: {//图列配置,每张表只能存在一个图例
        // enabled: false 
        layout: 'horizontal', //图例的排列方式(多个图例才能看到效果)，垂直：vertical，水平：horizontal
         align: 'center',
         verticalAlign: 'bottom',  
         borderWidth: 0  
     },

    exporting: {//是否提供导出功能，相关菜单栏的汉化在最上面的全局配置中
        enabled: true
    },

    credits: {//配置右下角的版权信息
        enabled:true,//是否显示版权信息，默认：true。若想去除图表右下角highcharts官网链接则设置为false。
        text:"www.hhu.edu.cn",//版权信息显示内容，默认：Highcharts.com。
        href:"http://www.hhu.edu.cn/"//版权信息链接地址，默认：http://www.highcharts.com。
    },

    series: [{
        name: '随机数据',
        data: (function () {
            console.info("mydata=" + mydata);
            // generate an array of random data
            var data = [],
                time = (new Date()).getTime(),
                i;
            for (i = -19; i <= 0; i += 1) {//这里是限制图表中最多显示20个点
                data.push({
                    x: time + i * 1000,
                    y: mydata
                });
            }
            return data;
        }())
    }]
}

mychart = new Highcharts.chart(options,function(c) {
    activeLastPointToolip(c)
});

</script>
<script type="text/javascript">

//请求后获取数据,以便后面使用
var mydata = null;

var mychart = null;

Highcharts.setOptions({
    global: {//横轴为时间轴，下面的语句是设置时区
        useUTC: false
    }
});

function activeLastPointToolip(chart) {
    var points = chart.series[0].points;
    chart.tooltip.refresh(points[points.length -1]);
}

var options = {
    chart: {
        type: 'spline',
        renderTo: 'main',
        animation: Highcharts.svg, 
        marginRight: 10,
        events: {
            load: function () {//load表示的是在图表加载完时触发
                var series = this.series[0],
                    chart = this;

                    /* 
                    setInterval(function () {//setInterval是设置定时、延时,会不停的调用函数或者表达式
                    var x = (new Date()).getTime(); // current time

                    //alert("数据库时间：" + mydata.categories[index] + "-----系统时间：" + x)

                    if(x==mydata.categories[index]) {
                        y = mydata.data[index];//如果时间刚好对上，那么就画点
                    } else {
                        if(index==0) {
                            y = 0;
                        }else {
                            y = mydata.data[index-1];//否则就将上一个点的值再画一遍
                        }
                    }
                    index = index + 1;//进行遍历
                    series.addPoint([x, y], true, true);
                    activeLastPointToolip(chart)
                }, 3000);//设置每3秒调用一次前面的函数或者表达式function(){...}
                */

                setInterval(function () {//setInterval是设置定时、延时,会不停的调用函数或者表达式

                    $.ajax({
                       url : '${path}/getHisDates',
                       type : 'GET',
                       dataType : 'text',
                       async : false, //同步处理后面才能处理新添加的series
                       //contentType: "application/x-www-form-urlencoded; charset=utf-8", 
                       success : function(rntData){

                         console.info("调用成功：" + rntData);
                         mydata = rntData;
                         var x = (new Date()).getTime(); // current time

                        /*这里需要说明的y轴的数据是后台传过来是字符串，而这里的传过的需要的数字，
                         *所以这里必须对他进行转换，则将无法进行绘图
                         */
                         var y = parseFloat(rntData);

                         series.addPoint([x,y], true, true);
                         activeLastPointToolip(chart)
                       }
                    });


                }, 3000000);//每过3s调用一次接口


            }
        }
    },

    lang: {//汉化菜单栏
        printChart:"打印图表",
        downloadJPEG:"下载JPEG图片",
        downloadPDF:"下载PDF文档",
        downloadPNG:"下载PNG图片",
        downloadSVG:"下载SVG矢量图",
        contextButtonTitle:"导出菜单"
    },

    title: {
        text: '动态模拟实时数据'
    },

    xAxis: {
        type: 'datetime',
        tickPixelInterval: 150//设置刻度间隔 。该参数对分类坐标轴无效。对于 Y 轴，其默认值是72，X 轴则是 100
    },

    yAxis: {
        title: {
            text: '值'
        },
        plotLines: [{
            value: 0,
            width: 1,
            color: '#808080'
        }]
    },

    tooltip: {
        formatter: function () {
            return '<b>' + this.series.name + '</b><br/>' +
                Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) + '<br/>' +
                Highcharts.numberFormat(this.y, 4);//保留4位小数
        }
    },

    legend: {//图列配置,每张表只能存在一个图例
        // enabled: false 
        layout: 'horizontal', //图例的排列方式(多个图例才能看到效果)，垂直：vertical，水平：horizontal
         align: 'center',
         verticalAlign: 'bottom',  
         borderWidth: 0  
     },

    exporting: {//是否提供导出功能，相关菜单栏的汉化在最上面的全局配置中
        enabled: true
    },

    credits: {//配置右下角的版权信息
        enabled:true,//是否显示版权信息，默认：true。若想去除图表右下角highcharts官网链接则设置为false。
        text:"www.hhu.edu.cn",//版权信息显示内容，默认：Highcharts.com。
        href:"http://www.hhu.edu.cn/"//版权信息链接地址，默认：http://www.highcharts.com。
    },

    series: [{
        name: '随机数据',
        data: (function () {
            console.info("mydata=" + mydata);
            // generate an array of random data
            var data = [],
                time = (new Date()).getTime(),
                i;
            for (i = -19; i <= 0; i += 1) {//这里是限制图表中最多显示20个点
                data.push({
                    x: time + i * 1000,
                    y: mydata
                });
            }
            return data;
        }())
    }]
}

mychart = new Highcharts.chart(options,function(c) {
    activeLastPointToolip(c)
});

</script>
