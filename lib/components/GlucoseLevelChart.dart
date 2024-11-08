// GlucoseLevelChart.dart
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class GlucoseLevelChart extends StatelessWidget {
  final List<double> glucoseLevels; // List of glucose level data points
  final List<String> timeLabels;    // List of time labels for each point

  const GlucoseLevelChart({
    Key? key,
    required this.glucoseLevels,
    required this.timeLabels,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: LineChart(
        LineChartData(
          gridData: const FlGridData(show: false),
          titlesData: FlTitlesData(
            leftTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: true, reservedSize: 40),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 22,
                getTitlesWidget: (value, meta) {
                  return Text(
                    timeLabels[value.toInt()],
                    style: const TextStyle(fontSize: 10),
                  );
                },
              ),
            ),
          ),
          borderData: FlBorderData(
            border: const Border(
              top: BorderSide.none,
              right: BorderSide.none,
              left: BorderSide(color: Colors.grey),
              bottom: BorderSide(color: Colors.grey),
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: List.generate(
                glucoseLevels.length,
                    (index) => FlSpot(index.toDouble(), glucoseLevels[index]),
              ),
              isCurved: true,
              color: Colors.deepPurple,
              barWidth: 2,
              dotData: const FlDotData(show: false),
              belowBarData: BarAreaData(show: true, color:
                Colors.deepPurple.withOpacity(0.3),
              ),
            ),
          ],
          minY: 50,  // Set a reasonable minimum y-axis value for glucose
          maxY: 300, // Set a reasonable maximum y-axis value for glucose
        ),
      ),
    );
  }
}
