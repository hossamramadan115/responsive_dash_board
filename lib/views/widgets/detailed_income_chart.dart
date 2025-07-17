import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ItemsDetailsModel {
  final Color color;
  final String title;
  final String value;

  ItemsDetailsModel({
    required this.color,
    required this.title,
    required this.value,
  });
}

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailedIncomeChart> {
  int? touchedIndex;

  final List<ItemsDetailsModel> chartItems = [
    ItemsDetailsModel(
        color: const Color(0xff208bc7), title: 'Design Service', value: '40'),
    ItemsDetailsModel(
        color: const Color(0xff4db7f2), title: 'Design Product', value: '25'),
    ItemsDetailsModel(
        color: const Color(0xff064060), title: 'Product royal', value: '20'),
    ItemsDetailsModel(
        color: const Color(0xffe2decd), title: 'Others', value: '22'),
  ];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
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
      ),
    );
  }

  List<PieChartSectionData> _buildSections() {
    return List.generate(chartItems.length, (index) {
      final item = chartItems[index];
      final isTouched = index == touchedIndex;
      final double radius = isTouched ? 50 : 40;

      return PieChartSectionData(
        showTitle: true,
        title: isTouched ? item.title : '${item.value}%',
        titleStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: isTouched ? Colors.black : Colors.white,
        ),
        titlePositionPercentageOffset: 0.6,
        value: double.parse(item.value),
        color: item.color,
        radius: radius,
      );
    });
  }
}
