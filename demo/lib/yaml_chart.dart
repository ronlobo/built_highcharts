part of highcharts_options.samples;

loadChartFromYaml(String chartName) async {
  clearOutput();
  var content = await HttpRequest.getString('sample_data/$chartName.yaml');
  var model = loadYaml(content);
  var chartOptions = fromJson(ChartOptions, model);
  var jsOptions = toJsObject(chartOptions);
  print(new JsonEncoder.withIndent('  ').convert(model));
  new HighchartsChart(jsOptions);
}