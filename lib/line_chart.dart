import 'package:flutter/material.dart';
import 'package:unihack/mood_settings.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class LineData {
  final int days;
  final int positive;
  final charts.Color colour;

  LineData({
    required this.days,
    required this.positive,
    required this.colour,
  });
}

class LineChart extends StatelessWidget {
  final List<LineData> data;

  LineChart({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<LineData, int>> moods = [
      charts.Series(
        id: "Moods",
        data: data,
        domainFn: (LineData moods, _) => moods.days,
        measureFn: (LineData moods, _) => moods.positive,
        colorFn: (LineData moods, _) => moods.colour,
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
              Text("Days of Positive Moods Over Time"),
              Expanded(
                child: charts.LineChart(moods, animate: false),
              )
            ],
          ),
        ),
      ),
    );
  }
}
