import 'package:bar_chart/models/data_consumption.dart';
import 'package:bar_chart/widgets/data_cart.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class HomePage extends StatelessWidget {
  final List<DataConsumption> data = [
    DataConsumption(
      month: 'March',
      dataInGb: 540.45,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    DataConsumption(
      month: 'April',
      dataInGb: 188.31,
      barColor: charts.ColorUtil.fromDartColor(Colors.pink),
    ),
    DataConsumption(
      month: 'May',
      dataInGb: 159.39,
      barColor: charts.ColorUtil.fromDartColor(Colors.deepPurple),
    ),
    DataConsumption(
      month: 'June',
      dataInGb: 163.82,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    DataConsumption(
      month: 'July',
      dataInGb: 209.26,
      barColor: charts.ColorUtil.fromDartColor(Colors.red),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Data Consumption'),
      ),
      body: Center(
        child: DataChart(
          data: data,
        ),
      ),
    );
  }
}
