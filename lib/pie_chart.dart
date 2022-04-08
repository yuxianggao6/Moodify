import 'package:flutter/material.dart';
import 'package:unihack/mood_settings.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class PieData {
  final String mood;
  final int days;
  final charts.Color colour;
  final String label;

  PieData({
    required this.mood,
    required this.days,
    required this.colour,
    required this.label,
  });
}

class PieChart extends StatelessWidget {
  final List<PieData> data;

  PieChart({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<PieData, String>> moods = [
      charts.Series(
        id: "Moods",
        data: data,
        domainFn: (PieData moods, _) => moods.mood,
        measureFn: (PieData moods, _) => moods.days,
        colorFn: (PieData moods, _) => moods.colour,
        labelAccessorFn: (PieData moods, _) => moods.label,
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
              Text("Moods from your local area"),
              Expanded(
                child: charts.PieChart(moods, animate: false),
              )
            ],
          ),
        ),
      ),
    );
  }
}
