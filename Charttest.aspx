<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Charttest.aspx.cs" Inherits="SmartSystems_NS.Charttest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link href="Content/bootstrap.cosmo.min.css" rel="stylesheet" />
    <link href="Content/StyleSheet.css" rel="stylesheet" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
                            <script src="//cdnjs.cloudflare.com/ajax/libs/flot/0.8.3/excanvas.js" type="text/javascript"></script>
                            <script src="//cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.2/Chart.js" type="text/javascript"></script>

                            <script type="text/javascript">
                                $(function () {
                                    LoadChart();
                                    $("[id*=ddlCountries1], [id*=ddlCountries2]").bind("change", function () {
                                        LoadChart();
                                    });
                                });
                                function LoadChart() {
                                    var country1 = $("[id*=ddlCountries1]").val();
                                    var country2 = $("[id*=ddlCountries2]").val();
                                    var country3;
                                    $.ajax({
                                        type: "POST",
                                        url: "Dashboard.aspx/GetChart",
                                        data: "{country1: '" + country1 + "', country2: '" + country2 + "', country3: '" + country3 + "'}",
                                        contentType: "application/json; charset=utf-8",
                                        dataType: "json",
                                        success: function (r) {
                                            var labels = r.d[0];
                                            var series1 = r.d[1];
                                            var series2 = r.d[2];
                                            var series3 = r.d[3];
                                            var data = {
                                                labels: r.d[0],
                                                datasets: [
                                                    {
                                                        label: country1,
                                                        fillColor: "rgba(255, 255, 193, 0.2)",
                                                        strokeColor: "#FCD209",
                                                        pointColor: "#FF8C00",
                                                        data: series1
                                                    },
                                                    {
                                                        label: country2,
                                                        fillColor: "rgba(217, 237, 247, 0.2)",
                                                        strokeColor: "#BCE8F1",
                                                        pointColor: "#0090CB",
                                                        data: series2
                                                    },
                                                    {
                                                        label: country3,
                                                        fillColor: "rgba(217, 237, 247, 0.2)",
                                                        strokeColor: "#BCE8F2",
                                                        pointColor: "#0090CC",
                                                        data: series3
                                                    }
                                                ]
                                            };
                                            $("#dvChart").html("");
                                            var canvas = document.createElement('canvas');
                                            $("#dvChart")[0].appendChild(canvas);

                                            //Fix for IE 8
                                            if ($.browser.msie && $.browser.version == "8.0") {
                                                G_vmlCanvasManager.initElement(canvas);
                                            }
                                            var ctx = canvas.getContext('2d');
                                            ctx.canvas.height = 300;
                                            ctx.canvas.width = 500;
                                            var lineChart = new Chart(ctx).Line(data, {
                                                bezierCurve: true
                                            });
                                        },
                                        failure: function (response) {
                                            alert('There was an error.');
                                        }
                                    });
                                }
                            </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
