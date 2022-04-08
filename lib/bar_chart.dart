import 'package:flutter/material.dart';
import 'package:unihack/mood_settings.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class BarData {
  final String mood;
  final int days;
  final charts.Color colour;

  BarData({
    required this.mood,
    required this.days,
    required this.colour,
  });
}

class BarChart extends StatelessWidget {
  final List<BarData> data;

  BarChart({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarData, String>> moods = [
      charts.Series(
        id: "Moods",
        data: data,
        domainFn: (BarData moods, _) => moods.mood,
        measureFn: (BarData moods, _) => moods.days,
        colorFn: (BarData moods, _) => moods.colour,
      )
    ];

    return Container(
      height: 350,
      padding: EdgeInsets.all(18),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Text("Days You Felt These Moods"),
              Expanded(
                child: charts.BarChart(moods, animate: false),
              )
            ],
          ),
        ),
      ),
    );
  }
}
