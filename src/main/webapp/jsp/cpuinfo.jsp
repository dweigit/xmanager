<%--
  Created by IntelliJ IDEA.
  User: dwei
  Date: 2015/12/21
  Time: 0:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Highcharts Example</title>

    <script type="text/javascript" src="http://cdn.hcharts.cn/jquery/jquery-1.8.3.min.js"></script>
    <style type="text/css">
        ${demo.css}
    </style>
    <script type="text/javascript">
        $(function () {

            var gaugeOptions = {

                chart: {
                    type: 'solidgauge'
                },

                title: null,

                pane: {
                    center: ['50%', '85%'],
                    size: '140%',
                    startAngle: -90,
                    endAngle: 90,
                    background: {
                        backgroundColor: (Highcharts.theme && Highcharts.theme.background2) || '#EEE',
                        innerRadius: '60%',
                        outerRadius: '100%',
                        shape: 'arc'
                    }
                },

                tooltip: {
                    enabled: false
                },

                // the value axis
                yAxis: {
                    stops: [
                        [0.1, '#55BF3B'], // green
                        [0.5, '#DDDF0D'], // yellow
                        [0.9, '#DF5353'] // red
                    ],
                    lineWidth: 0,
                    minorTickInterval: null,
                    tickPixelInterval: 400,
                    tickWidth: 0,
                    title: {
                        y: -70
                    },
                    labels: {
                        y: 16
                    }
                },

                plotOptions: {
                    solidgauge: {
                        dataLabels: {
                            y: 5,
                            borderWidth: 0,
                            useHTML: true
                        }
                    }
                }
            };

            // The speed gauge
            $('#container-speed').highcharts(Highcharts.merge(gaugeOptions, {
                yAxis: {
                    min: 0,
                    max: 100,
                    title: {
                        text: '用户使用率'
                    }
                },

                credits: {
                    enabled: false
                },

                series: [{
                    name: 'user',
                    data: [80],
                    dataLabels: {
                        format: '<div style="text-align:center"><span style="font-size:25px;color:' +
                        ((Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black') + '">{y}</span><br/>' +
                        '<span style="font-size:12px;color:silver">%</span></div>'
                    },
                    tooltip: {
                        valueSuffix: ' %'
                    }
                }]

            }));

            // The RPM gauge
            $('#container-rpm').highcharts(Highcharts.merge(gaugeOptions, {
                yAxis: {
                    min: 0,
                    max: 5,
                    title: {
                        text: 'RPM'
                    }
                },
                credits: {
                    enabled: false
                },
                series: [{
                    name: 'RPM',
                    data: [1],
                    dataLabels: {
                        format: '<div style="text-align:center"><span style="font-size:25px;color:' +
                        ((Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black') + '">{y:.1f}</span><br/>' +
                        '<span style="font-size:12px;color:silver">* 1000 / min</span></div>'
                    },
                    tooltip: {
                        valueSuffix: ' revolutions/min'
                    }
                }]

            }));

            // Bring life to the dials
            setInterval(function () {
                var point, newVal, inc;
                var n1,n2;
                $.ajaxSettings.async = false;
                $.getJSON("/xmanager/getInfo", function(data){
                    $.each(data.cpuperc, function (i, n) {
                        n1 = n.user;
                        n2 = n.combined;
                    });
                });
                // Speed
                var chart = $('#container-speed').highcharts();
                if (chart) {
                    point = chart.series[0].points[0];
                    inc = Math.round((n1 - 0.5) * 100);
                    newVal = point.y + inc;
                    if (newVal < 0 || newVal > 200) {
                        newVal = point.y - inc;
                    }
                    point.update(newVal);
                }

                // RPM
                chart = $('#container-rpm').highcharts();
                if (chart) {
                    point = chart.series[0].points[0];
                    inc = n2 - 0.5;
                    newVal = point.y + inc;
                    if (newVal < 0 || newVal > 5) {
                        newVal = point.y - inc;
                    }
                    point.update(newVal);
                }
            }, 2000);

        });
    </script>
</head>
<body>
<script src="http://cdn.hcharts.cn/highcharts/highcharts.js"></script>
<script src="http://cdn.hcharts.cn/highcharts/highcharts-more.js"></script>
<script src="http://cdn.hcharts.cn/highcharts/modules/solid-gauge.js"></script>

<div style="width: 600px; height: 400px; margin: 0 auto">
    <div id="container-speed" style="width: 300px; height: 200px; float: left"></div>
    <div id="container-rpm" style="width: 300px; height: 200px; float: left"></div>
</div>


</body>
</html>
