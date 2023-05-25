<html>
<head>
    <meta charset="utf-8">
    <!--jquery-->
    <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>

    <!-- 引入 ECharts 文件 -->
    <script src="../../echarts.min.js"></script>
</head>

<style>

    .top {
        width: 700px;
        height: 50px;
        background-color: #C0C0C0;
        color: white;
        /* 设置字体大小 */
        font-size: 20px;
        /* 设置字间距 */
        letter-spacing: 3px;
        /* 设置行高与盒子高度一致，实现垂直居中 */
        line-height: 50px;
        /* 设置水平居中 */
        text-align: center;
    }

    /* 设置表格 */
    table {
        /* 表格的宽度与top一样 */
        width: 90%;
        align:center;
        cellpadding:0;
        cellspacing:0;
        /* 设置表格边框 */
        border: 1px solid white;

    }

    /* 设置表头 */
    th {

        width: 170px;
        height: 45px;

        background-color: #C0C0C0;

        border: 0px;

        /* 合并相邻的边框 */
        border-collapse: collapse;

        /* 字体居中对齐 */
        text-align: center;

    }

    /* 单独设置表头中的“影片名” */
    .ying-pian {

        width: 300px;

    }

    /* 设置表格中每一个单元格 */
    td {

        width: 170px;
        height: 45px;

        /* 设置无边框 */
        border: 0px;

        /* 字体水平居中 */
        text-align: center;

    }

    /* 设置排名为奇数的一行表格 */
    .odd {
        background-color: #F5F5F5;
    }

    /* 设置排名为偶数的一行表格 */
    .even {
        background-color:#C0C0C0;
    }

</style>
<body>
<!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
<div class="panel panel-default">
    <div class="panel-body">
        <div class="col-sm-4" id="main" style="height:400px;"></div>
        <div class="col-sm-4" id="main_list" style="height:400px;"></div>
    </div>
</div>


<script type="text/javascript">
    $.ajax({
        type: "GET",
        url: '/api/count',
        dataType: "json",
        data: {},
        success: function (res) {
            var date = [];
            var num = [];
            var sport = res.data.list[0].sport;
            var title = sport + "活动人数";
            for (var i = 0; i < res.data.list.length; i++) {
                date.push(res.data.list[i].activity_date);
                num.push(res.data.list[i].num);
            }

            // 基于准备好的dom，初始化echarts实例
            var myChart = echarts.init(document.getElementById('main'));

            // 指定图表的配置项和数据
            var option = {
                title: {
                    text: 'Sport Report'
                },
                tooltip: {},
                legend: {
                    data: [title]
                },
                xAxis: {
                    data: date
                },
                yAxis: {},
                series: [
                    {
                        name: title,
                        type: 'bar',
                        barWidth:50,
                        color: ['#0099FF'],
                        data: num
                    }
                ]
            };

            // 使用刚指定的配置项和数据显示图表。
            myChart.setOption(option);

            myChart.on('click', function (params) {
                // console.log(params.name);
                // console.log(sport);
                var date = params.name;

                $.ajax({
                    type: "GET",
                    url: '/api/list?date=' + date + '&sport=' + sport,
                    dataType: "json",
                    data: {},
                    success: function (result) {
                        // console.log(result)
                        $('#main_list').html()
                        var data = result.data;
                        var len = data.length;
                        var tableStr = "<table>";
                        tableStr = tableStr + "<tr>" +"<th >序号</th>"+ "<th>活动类型</th>" + "<th>人数</th>" + "<th>日期</th>" + "</tr>"
                        for (var i = 0; i < len; i++) {
                            var class_name = ((i + 1) % 2 == 0) ? 'even' : 'odd';

                            tableStr = tableStr + "<tr class="+class_name+">" +
                                "<td>" + (i + 1) + "</td>" +
                                "<td>" + data[i].activity_type_name + "</td>" +
                                "<td>" + data[i].headcount + "</td>" +
                                "<td>" + data[i].date + "</td>" +
                                "</tr>"
                        }
                        if(len==0){
                            tableStr=tableStr+"<tr style='text-align:center;'>"+
                                "<td colspan='15'><font color='#cd0a0a'>"+'暂无记录'+"</font></td>"+"</tr>"
                        }


                        tableStr = tableStr + "</table>";
                        $('#main_list').html(tableStr);
                    }
                });
            });

        }

    });

</script>

</body>
</html>
