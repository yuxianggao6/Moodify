import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import './bar_chart.dart';
import './pie_chart.dart';
import './scatterplot_chart.dart';
import './line_chart.dart';

class Analytics extends StatefulWidget {
  @override
  _AnalyticsState createState() => _AnalyticsState();
}

Color chartsColour = Color(0xffcd7eae);

class _AnalyticsState extends State<Analytics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Analytics"),
        elevation: 0,
        backgroundColor: const Color(0xff3e7c9e),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          BarChart(data: data),
          ScatterPlotChart(data: scatterdata),
          PieChart(data: pidata),
          LineChart(data: linedata),
        ]),
      ),
    );
  }

  // Data

  final List<BarData> data = [
    BarData(
      mood: "Happy",
      days: 20,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    BarData(
      mood: "Sad",
      days: 10,
      colour: charts.ColorUtil.fromDartColor(Color(0xff2B606F)),
    ),
    BarData(
      mood: "Angry",
      days: 25,
      colour: charts.ColorUtil.fromDartColor(Color(0xff9E3E77)),
    ),
    BarData(
      mood: "Tired",
      days: 43,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    BarData(
      mood: "Cool",
      days: 13,
      colour: charts.ColorUtil.fromDartColor(Color(0xff2B606F)),
    ),
    BarData(
      mood: "Stressed",
      days: 50,
      colour: charts.ColorUtil.fromDartColor(Color(0xff9E3E77)),
    ),
    BarData(
      mood: "Bored",
      days: 30,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
  ];

  final List<PieData> pidata = [
    PieData(
      mood: "Happy",
      days: 20,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
      label: "Happy",
    ),
    PieData(
      mood: "Sad",
      days: 10,
      colour: charts.ColorUtil.fromDartColor(Color(0xff2B606F)),
      label: "Sad",
    ),
    PieData(
      mood: "Angry",
      days: 50,
      colour: charts.ColorUtil.fromDartColor(Color(0xff9E3E77)),
      label: "Angry",
    ),
  ];

  final List<ScatterPlotData> scatterdata = [
    ScatterPlotData(
      sleep: 10,
      happiness: 10,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    ScatterPlotData(
      sleep: 2,
      happiness: 1,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    ScatterPlotData(
      sleep: 3,
      happiness: 6,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    ScatterPlotData(
      sleep: 10,
      happiness: 4,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    ScatterPlotData(
      sleep: 8,
      happiness: 8,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    ScatterPlotData(
      sleep: 9,
      happiness: 10,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    ScatterPlotData(
      sleep: 4,
      happiness: 5,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    ScatterPlotData(
      sleep: 7,
      happiness: 9,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    ScatterPlotData(
      sleep: 10,
      happiness: 7,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    ScatterPlotData(
      sleep: 5,
      happiness: 4,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    ScatterPlotData(
      sleep: 4,
      happiness: 7,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    ScatterPlotData(
      sleep: 6,
      happiness: 10,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    ScatterPlotData(
      sleep: 10,
      happiness: 9,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    ScatterPlotData(
      sleep: 9,
      happiness: 7,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    ScatterPlotData(
      sleep: 6,
      happiness: 9,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
  ];

  final List<LineData> linedata = [
    LineData(
      days: 0,
      positive: 0,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    LineData(
      days: 1,
      positive: 1,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    LineData(
      days: 2,
      positive: 3,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    LineData(
      days: 3,
      positive: 3,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    LineData(
      days: 4,
      positive: 5,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    LineData(
      days: 5,
      positive: 6,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    LineData(
      days: 6,
      positive: 7,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    LineData(
      days: 7,
      positive: 7,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    LineData(
      days: 8,
      positive: 9,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    LineData(
      days: 9,
      positive: 10,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    LineData(
      days: 10,
      positive: 10,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    LineData(
      days: 11,
      positive: 10,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    LineData(
      days: 12,
      positive: 12,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    LineData(
      days: 13,
      positive: 15,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
    LineData(
      days: 14,
      positive: 16,
      colour: charts.ColorUtil.fromDartColor(Color(0xff3E7C9E)),
    ),
  ];
}
