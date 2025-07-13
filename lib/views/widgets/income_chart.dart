import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int? touchedIndex;

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sectionsSpace: 0,
        pieTouchData: PieTouchData(
          touchCallback: (event, response) {
            setState(() {
              if (!event.isInterestedForInteractions ||
                  response == null ||
                  response.touchedSection == null) {
                touchedIndex = null;
              } else {
                touchedIndex = response.touchedSection!.touchedSectionIndex;
              }
            });
          },
        ),
        sections: _buildSections(),
      ),
    );
  }

  List<PieChartSectionData> _buildSections() {
    final data = [
      {'value': 40.0, 'color': const Color(0xff208bc7)},
      {'value': 25.0, 'color': const Color(0xff4db7f2)},
      {'value': 20.0, 'color': const Color(0xff064060)},
      {'value': 22.0, 'color': const Color(0xffe2decd)},
    ];

    return List.generate(data.length, (index) {
      final isTouched = index == touchedIndex;
      final double radius = isTouched ? 60 : 50;

      return PieChartSectionData(
        showTitle: false,
        value: data[index]['value'] as double,
        color: data[index]['color'] as Color,
        radius: radius,
      );
    });
  }
}
