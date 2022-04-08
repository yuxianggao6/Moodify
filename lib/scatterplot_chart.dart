import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class ScatterPlotData {
  final int sleep;
  final int happiness;
  final charts.Color colour;

  ScatterPlotData({
    required this.sleep,
    required this.happiness,
    required this.colour,
  });
}

class ScatterPlotChart extends StatelessWidget {
  final List<ScatterPlotData> data;

  ScatterPlotChart({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<ScatterPlotData, int>> moods = [
      charts.Series(
        id: "Moods",
        data: data,
        domainFn: (ScatterPlotData moods, _) => moods.sleep,
        measureFn: (ScatterPlotData moods, _) => moods.happiness,
        colorFn: (ScatterPlotData moods, _) => moods.colour,
      )
    ];

    return Container(
      height: 350,
      // width: 350,
      padding: EdgeInsets.all(18),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Text("Happiness Compared with Sleep"),
              Expanded(
                child: charts.ScatterPlotChart(moods, animate: false),
              )
            ],
          ),
        ),
      ),
    );
  }
}
